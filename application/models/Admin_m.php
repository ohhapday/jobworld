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

    public function put_admin_status($data)
    {
        $this->db->trans_start();

        $update_data = array(
            'PG_LOCK' => $data['usabled'],
            'survey_STATUS' => $data['STATUS']['survey_STATUS'],
            'fund_STATUS' => $data['STATUS']['fund_STATUS'],
            'bond_STATUS' => $data['STATUS']['bond_STATUS'],
            'stock_STATUS' => $data['STATUS']['stock_STATUS'],
            'DATA_TYPE' => $data['DATA_TYPE'],
        );
        $this->db->update('tb_admin', $update_data);

        $this->db->trans_complete();
        return true;
    }

    public function put_init()
    {
        $this->db->trans_start();

        $update_data = array(
            'PG_LOCK' => 0,
            'survey_STATUS' => 0,
            'fund_STATUS' => 0,
            'bond_STATUS' => 0,
            'stock_STATUS' => 0,
            'DATA_TYPE' => '30',
            'bond_rownum' => 10,
            'stock_rownum' => 10,
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

        $this->db->query("DELETE FROM job017_copy");
        $query = "
            INSERT INTO job017_copy SELECT * FROM job017
        ";
        $this->db->query($query);

        $this->db->trans_complete();

        return $this->db->trans_status();
    }

    public function get_system()
    {
        $query = "
            SELECT * FROM tb_admin
        ";
        $return = $this->db->query($query)->row();

        return $return;
    }

    public function put_stock_rownum()
    {
        $query = "
            UPDATE tb_admin SET stock_rownum = IF(stock_rownum = 50, 11, stock_rownum + 1)
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

        $this->db->query('UPDATE job016_copy SET SEND = 1 WHERE NEWS_KEY = ?', $key);

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

        $this->db->query('UPDATE job017_copy SET SEND = 1 WHERE ANAL_KEY = ?', $key);

        $this->db->trans_complete();

        return $this->db->trans_status();
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

}
