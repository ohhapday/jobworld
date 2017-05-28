<?PHP

class Admin_m extends CI_Model
{

    function __construct()
    {
        parent::__construct();
        $this->load->helper(array('common', 'url', 'alert'));

    }

    public function get_user()
    {
        $query = "
            SELECT EMPL_NAME, MF_FG, EMPL_CASH FROM job050
        ";
        $result = $this->db->query($query)->result();
        return (object)$result;
    }

    public function get_COMP_DATA()
    {
        $query = "
            SELECT SECT_KEY, COMP_CODE, COMP_NAME FROM job015
            GROUP BY SECT_KEY

        ";
        $result = $this->db->query($query)->result();
        return $result;
    }

    public function get_speed()
    {
        $query = "
            SELECT MD_NAME FROM job024
            WHERE
              MKEY = 4
            ORDER BY `KEY` DESC
        ";
        $result = $this->db->query($query)->result();
        return $result;
    }

    public function put_admin_status($data)
    {
        $this->db->trans_start();

        $update_data = array(
            'PG_LOCK' => $data['usabled'],
            'survey_STATUS' => $data['STATUS']['survey_STATUS'],
            'fund_STATUS' => $data['STATUS']['fund_STATUS'],
            'bond_STATUS' => $data['STATUS']['bond_STATUS'],
            'stock_STATUS' => $data['STATUS']['stock_STATUS'],
            'result_STATUS' => $data['STATUS']['result_STATUS'],
            'DATA_TYPE' => $data['DATA_TYPE'],
        );

        if ($data['usabled'] == '3') {
            $update_data['bond_rownum'] = 10;
            $update_data['stock_rownum'] = 13;
        }
        $this->db->update('tb_admin', $update_data);

        if ($data['STATUS']['stock_STATUS'] == 1 && $data['usabled'] == 2) {
            $this->stock_result();
        }

        $this->db->trans_complete();
        return true;
    }

    public function put_init()
    {
        $this->db->trans_start();

        // 난이도 조절
        $query = "
            SELECT MD_NAME FROM job023 a, job024 b
            WHERE
              a.MKEY = b.MKEY AND a.MKEY = 4
            GROUP BY a.MKEY
            ORDER BY b.KEY ASC
        ";
        $MD_NAME = $this->db->query($query)->row()->MD_NAME;

        $update_data = array(
            'PG_LOCK' => 0,
            'survey_STATUS' => 0,
            'fund_STATUS' => 0,
            'bond_STATUS' => 0,
            'stock_STATUS' => 0,
            'result_STATUS' => 0,
            'DATA_TYPE' => $MD_NAME,
            'bond_rownum' => 10,
            'stock_rownum' => 13,
            'news_que' => 1,
            'anal_que' => 1,
        );
        $this->db->update('tb_admin', $update_data);

        $this->db->query('truncate job050');
        $this->db->query('truncate job060');
        $this->db->query('truncate job061');
        $this->db->query('truncate job062');
        $this->db->query('truncate job070');
        $this->db->query('truncate job080');
        $this->db->query('truncate job081');
        $this->db->query('truncate job082');
        $this->db->query('truncate job083');

        $this->db->query("DELETE FROM job015_copy");
        $query = "
            INSERT INTO job015_copy SELECT * FROM job015
        ";
        $this->db->query($query);

        $this->db->query("DELETE FROM job016_copy");
        $query = "
            INSERT INTO job016_copy SELECT * FROM job016
        ";
        $this->db->query($query);
        $this->db->query("UPDATE job016_copy SET INSERT_DATE = NOW()");

        $this->db->query("DELETE FROM job017_copy");
        $query = "
            INSERT INTO job017_copy SELECT * FROM job017
        ";
        $this->db->query($query);
        $this->db->query("UPDATE job017_copy SET INSERT_DATE = NOW()");

        $this->db->trans_complete();
        return $this->db->trans_status();
    }

    public function get_system()
    {
        $query = "
            SELECT * FROM tb_admin
        ";
        $return = $this->db->query($query)->row();

        $query = "
            SELECT COUNT(*) AS CNT FROM job050
        ";
        $cnt = $this->db->query($query)->row()->CNT;

        $return->login_status = 1;
        if($cnt === '0') {
            $return->login_status = null;
        }

        return $return;
    }

    public function put_stock_rownum()
    {
        $query = "
            UPDATE tb_admin SET stock_rownum = IF(stock_rownum = 49, 13, stock_rownum + 1)
        ";
        $this->db->query($query);
    }

    public function put_bond_rownum()
    {
        $query = "
            UPDATE tb_admin SET bond_rownum = IF(bond_rownum = 50, 11, bond_rownum + 1)
        ";
        $this->db->query($query);
    }

    public function put_NEWS($key)
    {
        $this->db->trans_start();

        $query = "SELECT stock_rownum FROM tb_admin";
        $rownum = $this->db->query($query)->row()->stock_rownum;

        $query = "
            SELECT * FROM job016_copy
            WHERE NEWS_KEY = ?
        ";
        $result = $this->db->query($query, $key)->row();

        if ($result->UPDOWN === "1") {
            $plus = (int)$result->PERCENT / 100;
        } else {
            $plus = (int)('-' . $result->PERCENT) / 100;
        }

        $query = "
            UPDATE job015_copy SET COMP_PRICE = (COMP_PRICE + (COMP_PRICE * ?))
            WHERE
              SECT_KEY = ? AND COMP_DATE > ?
        ";
        $this->db->query($query, array($plus, $result->NEWS_CODE, $rownum));

        $query = 'UPDATE job016_copy SET SEND = 1, INSERT_DATE = NOW() WHERE NEWS_KEY = ?';
        $this->db->query($query, array($key));
        $this->db->query('UPDATE tb_admin SET news_que = news_que + 1');

        $this->db->trans_complete();

        return $this->db->trans_status();
    }

    public function put_ANAL($key)
    {
        $this->db->trans_start();

        $query = "SELECT stock_rownum FROM tb_admin";
        $rownum = $this->db->query($query)->row()->stock_rownum;

        $query = "
            SELECT * FROM job017_copy
            WHERE ANAL_KEY = ?
        ";
        $result = $this->db->query($query, $key)->row();

        if ($result->UPDOWN === "1") {
            $plus = (int)$result->PERCENT / 100;
        } else {
            $plus = (int)('-' . $result->PERCENT) / 100;
        }

        $query = "
            SELECT
              b.COMP_CODE
            FROM job017_copy a, job014 b
            WHERE
              a.ANAL_TYPE = b.SECT_CODE AND
              a.ANAL_KEY = ?
        ";
        $result2 = $this->db->query($query, $key)->result();

        foreach ($result2 as $item) {
            $query = "
                UPDATE job015_copy SET COMP_PRICE = (COMP_PRICE + (COMP_PRICE * ?))
                WHERE
                  COMP_CODE = ? AND COMP_DATE > ?
            ";

            $this->db->query($query, array($plus, $item->COMP_CODE, $rownum));
        }
        $query = 'UPDATE job017_copy SET SEND = 1, INSERT_DATE = NOW() WHERE ANAL_KEY = ?';
        $this->db->query($query, array($key));

        $this->db->query('UPDATE tb_admin SET anal_que = anal_que + 1');

        $this->db->trans_complete();

        return $this->db->trans_status();
    }

    // 뉴스 컨텐츠 변경
    public function put_NEWS_CONTENTS($data)
    {
        $update_data = array(
            'NEWS_HEAD' => $data['NEWS_HEAD'],
            'NEWS_FILE' => $data['NEWS_FILE'],
            'UPDOWN' => $data['UPDOWN'],
            'PERCENT' => $data['PERCENT'],
        );
        $this->db->where('NEWS_KEY', $data['KEY']);

        return $this->db->update('job016_copy', $update_data);
    }

    // 애널 컨텐츠 변경
    public function put_ANAL_CONTENTS($data)
    {
        $update_data = array(
            'ANAL_HEAD' => $data['ANAL_HEAD'],
            'ANAL_FILE' => $data['ANAL_FILE'],
            'UPDOWN' => $data['UPDOWN'],
            'PERCENT' => $data['PERCENT'],
        );
        $this->db->where('ANAL_KEY', $data['KEY']);

        return $this->db->update('job017_copy', $update_data);
    }

    // 종합환경설정 업데이트
    public function put_job024($data)
    {
        $this->db->trans_start();

        foreach ($data['item'] as $item) {
            $query = "
                UPDATE job024 SET MD_NAME = ?
                WHERE 
                `KEY` = ?
            ";
            $this->db->query($query, array($item['value'], $item['key']));
        }

        $this->db->trans_complete();

        return $this->db->trans_status();
    }

    // 채권정보 업데이트
    public function put_job020($data)
    {
        $this->db->trans_start();

        $update_data = array(
            'BOND_NAME' => $data['item'][0]['value'],
            'BOND_TOT' => $data['item'][1]['value'],
            'BOND_CLDATE' => $data['item'][2]['value'],
            'BOND_PRICE' => $data['item'][3]['value'],
            'BOND_PER' => $data['item'][4]['value'],
            'BOND_BOTIME' => $data['item'][5]['value'],
            'BOND_BANK' => $data['item'][6]['value'],
        );

        $this->db->where(array('BOND_KEY' => $data['key']));
        $this->db->update('job020', $update_data);

        $this->db->trans_complete();

        return $this->db->trans_status();
    }

    public function put_adjust($data)
    {
        $query = "
            UPDATE job015_copy SET COMP_PRICE = (COMP_PRICE + (COMP_PRICE * ?))
            WHERE
              COMP_CODE = ?
        ";
        $this->db->query($query, array($data['adjust'] / 100, $data['COMP_CODE']));
    }

    // 주식 가격 개별 조정
    public function put_COMP_PRICE($data)
    {
        $update_data = array(
            'COMP_PRICE' => $data['COMP_PRICE']
        );
        $this->db->where(array('COMP_CODE' => $data['COMP_CODE'], 'COMP_DATE' => $data['COMP_DATE']));
        return $this->db->update('job015_copy', $update_data);
    }

    // 주식 데이터 처리
    public function stock_result()
    {
        $query = "
            SELECT
              (a.EMPL_BUYPRICE - b.COMP_PRICE) AS benifit,
              (a.EMPL_BUYPRICE - b.COMP_PRICE) * a.EMPL_BALQTY AS tot_benifit,
              a.*, b.COMP_PRICE
            FROM
              job083 a, job015_copy b, tb_admin c
            WHERE
              b.COMP_DATE = c.stock_rownum AND a.COMP_CODE = b.COMP_CODE AND a.EMPL_BALQTY <> 0
        ";
        $result = $this->db->query($query)->result_array();

        foreach ($result as $item) {
            $insert_data[] = array(
                'BUY_KEY' => $item['BUY_KEY'],
                'EMPL_KEY' => $item['EMPL_KEY'],
                'COMP_CODE' => $item['COMP_CODE'],
                'EMPL_SELQTY' => $item['EMPL_BALQTY'],
                'EMPL_PRICE' => $item['EMPL_BUYPRICE'],
                'EMPL_SELPRICE' => $item['COMP_PRICE'],
                'EMPL_SELTOT' => $item['COMP_PRICE'] * $item['EMPL_BALQTY'],
            );

            $query = "
                UPDATE job083 SET EMPL_BALQTY = EMPL_BALQTY - ?, EMPL_BUYTOT = EMPL_BUYTOT - (EMPL_BUYPRICE * ?)
                WHERE BUY_KEY = ?
            ";
            $this->db->query($query, array($item['EMPL_BALQTY'], $item['EMPL_BALQTY'], $item['BUY_KEY']));

            $query = "
                UPDATE job050 SET stock_CASH = stock_CASH + ?
                WHERE
                  EMPL_KEY = ?
            ";
            $this->db->query($query, array($item['COMP_PRICE'] * $item['EMPL_BALQTY'], $item['EMPL_KEY']));
        }
        $this->db->insert_batch('job082', $insert_data);
    }
}
