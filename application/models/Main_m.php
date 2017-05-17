<?PHP

class Main_m extends CI_Model
{

    function __construct()
    {
        parent::__construct();
        $this->load->helper(array('common', 'url', 'alert'));

    }

    // get 테이블 데이터 공통
    public function get_table($data)
    {
        $this->db->where($data['where']);
        if ($data['orderby'][0] !== null) {
            $this->db->order_by($data['orderby'][0], $data['orderby'][1]);
        }
        $return = $this->db->get($data['table_nm'])->result();

        return $return;
    }

    public function get_NEWS()
    {
        $query = "
            SELECT * FROM job016_copy
            WHERE SEND = 1
            ORDER BY INSERT_DATE, NEWS_KEY DESC
            LIMIT 4
        ";
        $return = $this->db->query($query)->result();
        return $return;
    }

    public function get_NEWS2()
    {
        $query = "
            SELECT * FROM job016_copy
            ORDER BY NEWS_KEY ASC
        ";
        $return = $this->db->query($query)->result();
        return $return;
    }

    public function get_ANAL()
    {
        $query = "
            SELECT * FROM job017_copy
            WHERE SEND = 1
            ORDER BY INSERT_DATE, ANAL_KEY DESC
            LIMIT 4
        ";
        $return = $this->db->query($query)->result();
        return $return;
    }

    public function get_ANAL2()
    {
        $query = "
            SELECT * FROM job017_copy
            ORDER BY ANAL_KEY ASC
        ";
        $return = $this->db->query($query)->result();
        return $return;
    }

    public function get_KOS($rownum = 1)
    {
        $this->db->query('SET @num = ?;', $rownum);
        $this->db->query('SET @PREV_NUM = IF(@num = 1, 50, @num - 1);');
        $query = "
            SELECT
              KOS_CODE, KOS_NAME, NOW_RATE, PREV_RATE,
              NOW_RATE - PREV_RATE AS MEASURE,
              ROUND((NOW_RATE - PREV_RATE) / PREV_RATE * 100, 2) AS PER_MEASURE
            FROM
              (SELECT
                 KOS_CODE, KOS_NAME,
                 ROUND(SUM(IF(KOS_DATE=@num, KOS_RATE, 0)), 2) AS NOW_RATE,
                 ROUND(SUM(IF(KOS_DATE=@PREV_NUM, KOS_RATE, 0)), 2) AS PREV_RATE
               FROM
                 job013
               WHERE
                 KOS_DATE IN (@num, @PREV_NUM)
               GROUP BY
                 KOS_CODE) aa;
        ";
        $result = $this->db->query($query)->result();

        return (object)$result;
    }

    public function get_COMP()
    {
        $query = "
            SELECT
              COMP_KEY, SECT_KEY, COMP_CODE, COMP_NAME, COMP_PRICE, COMP_DATE
            FROM
              job015_copy
            WHERE
              COMP_DATE = 10
            GROUP BY SECT_KEY
            LIMIT 9
        ";
        $result = $this->db->query($query)->result();

        return (object)$result;
    }

    public function get_survey()
    {
        $query = "
            SELECT
              QUES_KEY, QUES_NO, QUES_NAME
            FROM
              job030; 
        ";
        $result1 = $this->db->query($query)->result();

        $query = "
            SELECT
              QUES_KEY, ANSW_KEY, ANSW_NO, ANSW_NAME, ANSW_POINT
            FROM
              job031;
        ";
        $result2 = $this->db->query($query)->result();
        foreach ($result2 as $item) {
            $ANSW[$item->QUES_KEY][] = $item;
        }

        foreach ($result1 as $item) {
            $return[] = array(
                'QUES_KEY' => $item->QUES_KEY,
                'QUES_NO' => $item->QUES_NO,
                'QUES_NAME' => $item->QUES_NAME,
                'QUES_ANSW' => $ANSW[$item->QUES_KEY],
            );
        }

        return $return;
    }

    public function get_stock()
    {
        $query = "
            SELECT stock_rownum FROM tb_admin
        ";
        $rownum = $this->db->query($query)->row()->stock_rownum;

        $this->db->query('SET @COMP_DATE = ?;', $rownum);
        $query = "
            SELECT
              COMP_KEY, SECT_KEY, COMP_CODE, COMP_NAME, COMP_DATE, NOW_PRICE AS COMP_PRICE,
              NOW_PRICE - PREV_PRICE AS MEASURE,
              ROUND((NOW_PRICE - PREV_PRICE) / PREV_PRICE, 4) AS PER_MEASURE
            FROM
              (SELECT
              COMP_KEY, SECT_KEY, COMP_CODE, COMP_NAME, COMP_DATE,
              SUM(IF(COMP_DATE = @COMP_DATE, COMP_PRICE, 0)) AS NOW_PRICE,
              SUM(IF(COMP_DATE = @COMP_DATE - 1, COMP_PRICE, 0)) AS PREV_PRICE
               FROM job015_copy
               WHERE
                 COMP_DATE IN (@COMP_DATE - 1, @COMP_DATE)
               GROUP BY SECT_KEY
               ORDER BY SECT_KEY ASC) aa;
        ";
        $return = $this->db->query($query, $rownum)->result();

        return $return;
    }

    /**
     * begin 펀드 투자 체험
     */

    public function get_fund()
    {
        $query = "
            SELECT
              FUND_KEY, FUND_NAME, FUND_TOT, FUND_DAY, FUND_ADDPER, FUND_MM, FUND_MMPER
            FROM job060
            WHERE
              EMPL_KEY = ?
            ORDER BY FUND_KEY
        ";
        $return = $this->db->query($query, $_SESSION['EMPL_KEY'])->result();

        foreach ($return as $key => $item) {
            $query = "
                SELECT * FROM job061
                WHERE FUND_KEY = ?
            ";
            $return[$key]->stock = $this->db->query($query, $item->FUND_KEY)->result();

            $query = "
                SELECT * FROM job062
                WHERE FUND_KEY = ?
            ";
            $return[$key]->custom = $this->db->query($query, $item->FUND_KEY)->result();
        }

        return $return;
    }

    public function get_investor()
    {
        $query = "
            SELECT
              *,
              (c.MD_NAME - IF(d.SUM1 IS NULL, 0, d.SUM1)) AS balance
            FROM
              (SELECT
                 b.KEY, b.MD_CODE, CAST(b.MD_NAME AS UNSIGNED) AS MD_NAME
               FROM job023 a, job024 b
               WHERE
                 a.MKEY = b.MKEY AND a.MKEY = 1) c
              LEFT OUTER JOIN
              (SELECT
                 d.CUSTOM_KEY, SUM(d.CUSTOM_PAY) AS SUM1
               FROM job062 d
               WHERE d.EMPL_KEY = ?
               GROUP BY d.CUSTOM_KEY) d
                ON d.CUSTOM_KEY = c.KEY;
        ";
        $return = $this->db->query($query, $_SESSION['EMPL_KEY'])->result();

        return $return;
    }

    public function post_myFund($data)
    {
        $this->db->trans_start();

        $job060_data = array(
            'EMPL_KEY' => $_SESSION['EMPL_KEY'],
            'FUND_NAME' => $data['name'],
            'FUND_TOT' => $data['FUND_TOT'],
            'FUND_DAY' => $data['FUND_DAY'],
        );
        $this->db->insert('job060', $job060_data);
        $FUND_KEY = $this->db->insert_id();

        $CUSTOM = $this->get_investor();
        foreach ($CUSTOM as $item) {
            $job062_data[] = array(
                'FUND_KEY' => $FUND_KEY,
                'CUSTOM_KEY' => (int)$item->KEY,
                'CUSTOM_PAY' => $item->balance * $data['percent'] / 100,
                'EMPL_KEY' => $_SESSION['EMPL_KEY'],
            );
        }
        $this->db->insert_batch('job062', $job062_data);

        $this->db->trans_complete();
    }

    public function post_myFundStock($data)
    {
        $this->db->trans_start();

        $this->db->where(array('FUND_KEY' => $data['FUND_KEY']));
        $this->db->delete('job061');

        foreach ($data['stock'] as $item) {
            $job061_data[] = array(
                'FUND_KEY' => $data['FUND_KEY'],
                'COMP_CODE' => $item['COMP_CODE'],
                'FUND_PER' => 0,
                'FUND_PRICE' => $item['COMP_PRICE'],
                'EMPL_KEY' => $_SESSION['EMPL_KEY'],
            );
            $stock[] = array(
                'COMP_CODE' => $item['COMP_CODE'],
                'FUND_PRICE' => $item['COMP_PRICE'],
            );
            // $tot_price += $item['FUND_PRICE'];
        }
        $this->db->insert_batch('job061', $job061_data);

        $query = "
            SELECT * FROM job060
            WHERE FUND_KEY = ?
        ";
        $fund = $this->db->query($query, $data['FUND_KEY'])->row();

        // 수익률
        $benifit = $this->get_fund_benifit($stock, $fund->FUND_DAY);

        // todo 임시로 수익금의 10%만
        $my_benifit_price = ($fund->FUND_TOT * $benifit / 100) * 0.1;

        // 펀드 테이블 update
        $update_data = array(
            'FUND_ADDPER' => round($benifit, 2),
            'FUND_USERPAY' => ($benifit > 0) ? $my_benifit_price : 0,
        );
        $this->db->where(array('FUND_KEY' => $data['FUND_KEY']));
        $this->db->update('job060', $update_data);

        // 투자자 테이블 update
        $query = "
            UPDATE job062 SET CUSTOM_ADDPER = ?, CUSTOM_ADDPAY = CUSTOM_PAY + (CUSTOM_PAY * ? / 100)
            WHERE FUND_KEY = ?
        ";
        $this->db->query($query, array($benifit, $benifit, $data['FUND_KEY']));

        $this->db->trans_complete();
    }

    public function put_myFundStock($data)
    {
        $this->db->trans_start();

        foreach ($data['fund']['stock'] as $item) {
            $stock[] = array(
                'COMP_CODE' => $item['COMP_CODE'],
                'FUND_PRICE' => $item['FUND_PRICE'],
            );
        }

        // 수익률
        $benifit = $this->get_fund_benifit($stock, $data['MM']);

        $update_data = array(
            'FUND_MM' => $data['MM'],
            'FUND_MMPER' => $benifit,
        );

        $this->db->where('FUND_KEY', $data['fund']['FUND_KEY']);
        $this->db->update('job060', $update_data);

        $this->db->trans_complete();
    }

    public function get_fund_benifit($stock, $MM)
    {
        foreach ($stock as $item) {
            $in .= "'" . $item['COMP_CODE'] . "',";
            $tot_price += $item['FUND_PRICE'];
        }

        $in = substr($in, 0, -1);

        $query = "
            SELECT
              a.*, SUM(COMP_PRICE) AS expect_price
            FROM
              job015_copy a, tb_admin b
            WHERE
              COMP_CODE IN (" . $in . ") AND COMP_DATE = (b.stock_rownum + ?);
        ";
        $expect_price = $this->db->query($query, array($MM))->row()->expect_price;
        $benifit = round(($expect_price - $tot_price) / $tot_price * 100, 2);

        return $benifit;
    }

    public function get_fund_stock($key)
    {
        $query = "
            SELECT COMP_CODE FROM job061
            WHERE FUND_KEY = ?
        ";
        $return = $this->db->query($query, $key)->result();

        return $return;
    }

    public function get_custom($key)
    {
        $query = "
            SELECT CUSTOM_KEY, CUSTOM_PAY, CUSTOM_ADDPER, CUSTOM_ADDPAY FROM job062
            WHERE
              FUND_KEY = ?
              ORDER BY CUSTOM_KEY
        ";
        $return = $this->db->query($query, $key)->result();

        return $return;
    }

    /**
     * end 펀드 투자 체험
     */

    /**
     * begin 채권 투자 체험
     */

    public function get_bond()
    {
        $query = "
            SELECT *, IF(BOND_TYPE = '01', '국채', '회사채') AS BOND_TYPE FROM job020
            ORDER BY
              BOND_KEY
        ";
        $return = $this->db->query($query)->result();

        return $return;
    }

    public function get_bond2()
    {
        $query = "
            SELECT a.*,
              b.BOND_NOWPRICE,
              IF(BOND_TYPE = '01', '국채', '회사채') AS BOND_TYPE
            FROM job020 a, job022 b, tb_admin c
            WHERE
                a.BOND_KEY = b.BOND_KEY AND b.BOND_DATE = c.bond_rownum
            ORDER BY
              BOND_KEY
        ";
        $return = $this->db->query($query)->result();

        return $return;
    }

    public function get_bond_cash()
    {
        $query = "
            SELECT bond_CASH FROM job050
            WHERE
              EMPL_KEY = ?            
        ";
        $return1 = $this->db->query($query, $_SESSION['EMPL_KEY'])->row()->bond_CASH;

        $query = "
            SELECT SUM(BOND_BUYPAY) AS BUYTOT FROM job070
            WHERE
              EMPL_KEY = ?
            GROUP BY EMPL_KEY
        ";
        $return2 = $this->db->query($query, $_SESSION['EMPL_KEY'])->row()->BUYTOT;

        $return->cash1 = $return1 + $return2;               // 고객자산
        $return->cash2 = $return2;                          // 투자금액
        $return->cash3 = (int)$return1;   // 잔고

        return $return;
    }

    public function get_buyBond()
    {
        $query = "
            SELECT 
              *
            FROM
              job070
            WHERE 
              EMPL_KEY = ?
        ";
        $result = $this->db->query($query, $_SESSION['EMPL_KEY'])->result();
        return $result;
    }

    public function get_gold()
    {
        $query = "
            SELECT bond_rownum FROM tb_admin
        ";
        $rownum = $this->db->query($query)->row()->bond_rownum;

        $query = "
            SELECT
              GOLD_KEY, GOLD_CODE, GOLD_RATE, GOLD_DATE
            FROM
              job018
            WHERE
              GOLD_DATE = ?
        ";
        $return = $this->db->query($query, $rownum)->row();

        return $return;
    }

    public function get_credit()
    {
        $query = "
            SELECT bond_rownum FROM tb_admin
        ";
        $rownum = $this->db->query($query)->row()->bond_rownum;

        $query = "
            SELECT
              BOND_KEY, CREDIT_RANK, CREDIT_MEMO, CREDIT_SCORE, CREDIT_DATE
            FROM job021
            WHERE CREDIT_DATE = ?
            GROUP BY BOND_KEY
            ORDER BY BOND_KEY ASC
        ";
        $return = $this->db->query($query, $rownum)->result();

        return $return;
    }

    public function post_buyBond($data)
    {
        $this->db->trans_start();

        if ($data['bond']['BOND_TYPE'] === '국채') {
            $rate = $this->get_gold()->GOLD_RATE;
        } else {
            $aa = $this->get_credit();
            foreach ($aa as $item) {
                if ($item->BOND_KEY == $data['bond']['BOND_KEY']) {
                    $credit = $item;
                }
            }
            $rate = $credit->CREDIT_SCORE;
        }

        $insert_data = array(
            'EMPL_KEY' => $_SESSION['EMPL_KEY'],
            'BOND_KEY' => $data['bond']['BOND_KEY'],
            'BOND_BUYQTY' => $data['BOND_BUYQTY'],
            'BOND_BUYPAY' => $data['bond']['BOND_NOWPRICE'] * $data['BOND_BUYQTY'],
            'BOND_DANGA' => $data['bond']['BOND_NOWPRICE'],
            'BOND_RATE' => $rate,
            'BOND_BUYDATE' => $data['bond']['BOND_CLDATE'],
            'BOND_BUYPER' => $data['bond']['BOND_PER'],
            'BOND_BUYTOT' => $data['bond']['BOND_NOWPRICE'] * $data['BOND_BUYQTY'] * $data['bond']['BOND_PER'] / 100,
            'BOND_BUYBENIFIT' => $data['bond']['BOND_NOWPRICE'] * $data['BOND_BUYQTY'] * $data['bond']['BOND_PER'] / 100,
        );
        $this->db->insert('job070', $insert_data);

        $query = "
            UPDATE job050 SET bond_CASH = bond_CASH - ?
            WHERE
              EMPL_KEY = ?
        ";
        $this->db->query($query, array($data['bond']['BOND_NOWPRICE'] * $data['BOND_BUYQTY'], $_SESSION['EMPL_KEY']));

        $this->db->trans_complete();

        return $this->db->trans_status();
    }

    public function put_bond_rownum()
    {
        $this->db->trans_start();

        $query = "
            SELECT a.*, b.BOND_TYPE, c.BOND_NOWPRICE
            FROM job070 a, job020 b, job022 c, tb_admin d
            WHERE
              a.BOND_KEY = b.BOND_KEY AND a.EMPL_KEY = ? AND
              b.BOND_KEY = c.BOND_KEY AND c.BOND_DATE = d.bond_rownum
        ";
        $result = $this->db->query($query, $_SESSION['EMPL_KEY'])->result();

        foreach ($result as $value) {
            if ($value->BOND_TYPE === '01') {
                $rate = $this->get_gold()->GOLD_RATE;
            } else {
                $aa = $this->get_credit();
                foreach ($aa as $item) {
                    if ($item->BOND_KEY == $item->BOND_KEY) {
                        $credit = $item;
                    }
                }
                $rate = $credit->CREDIT_SCORE;
            }
            $plus = ($rate - $value->BOND_RATE) / 100;
            $charge = ($value->BOND_NOWPRICE - $value->BOND_DANGA) / $value->BOND_DANGA;

            $bb = $plus + $charge;

            $query = "
                UPDATE job070 SET 
                  BOND_BUYBENIFIT = BOND_DANGA *  ? * BOND_BUYQTY
                WHERE
                  EMPL_KEY = ? AND BOND_KEY = ?
            ";
            $this->db->query($query, array($bb, $_SESSION['EMPL_KEY'], $value->BOND_KEY));
        }

        $this->db->trans_complete();

        return $this->db->trans_status();
    }

    public function get_bond_chart()
    {
        $query = "
            SELECT a.* FROM
              job018 a, tb_admin b
            WHERE
              GOLD_DATE <= b.bond_rownum AND GOLD_DATE >= (b.bond_rownum - 10)
        ";
        $return = $this->db->query($query)->result();

        return $return;
    }

    public function get_bond_chart2($key)
    {
        $query = "
            SELECT a.* FROM
              job022 a, tb_admin b
            WHERE
              BOND_DATE <= b.bond_rownum AND BOND_DATE >= (b.bond_rownum - 10) AND BOND_KEY = ?
        ";
        $return = $this->db->query($query, $key)->result();

        return $return;
    }

    /**
     * end 채권 투자 체험
     */

    /**
     * begin 주식 투자 체험
     */

    public function post_favor($data)
    {
        $this->db->trans_start();

        $this->db->where('EMPL_KEY', $_SESSION['EMPL_KEY']);
        $this->db->delete('job080');

        if ($data !== null) {
            foreach ($data as $item) {
                $insert_data[] = array(
                    'EMPL_KEY' => $_SESSION['EMPL_KEY'],
                    'COMP_KEY' => $item
                );
            }
            $this->db->insert_batch('job080', $insert_data);
        }

        $this->db->trans_complete();

        return $this->db->trans_status();
    }

    public function get_favor()
    {
        $query = "
            SELECT COMP_KEY
            FROM job080
            WHERE
              EMPL_KEY = ?
        ";
        $result = $this->db->query($query, $_SESSION['EMPL_KEY'])->result();

        $return = array();
        foreach ($result as $item) {
            $return[] = $item->COMP_KEY;
        }

        return $return;
    }

    public function get_cash()
    {
        $query = "
            SELECT stock_CASH FROM job050
            WHERE
              EMPL_KEY = ?            
        ";
        $return1 = $this->db->query($query, $_SESSION['EMPL_KEY'])->row()->stock_CASH;

        $query = "
            SELECT SUM(EMPL_BUYTOT) AS BUYTOT FROM job083
            WHERE
              EMPL_KEY = ? AND EMPL_BALQTY != 0
            GROUP BY EMPL_KEY
        ";
        $return2 = $this->db->query($query, $_SESSION['EMPL_KEY'])->row()->BUYTOT;

        $return->cash1 = $return1 + $return2;               // 고객자산
        $return->cash2 = $return2;                          // 투자금액
        $return->cash3 = $return1;   // 잔고

        return $return;
    }

    public function get_buyStock()
    {
        $query = "
            SELECT 
              BUY_KEY, EMPL_KEY, COMP_CODE, EMPL_BALQTY, EMPL_BUYPRICE, EMPL_BUYTOT 
            FROM
              job083
            WHERE 
              EMPL_KEY = ? AND EMPL_BALQTY != 0
        ";
        $result = $this->db->query($query, $_SESSION['EMPL_KEY'])->result();
        return $result;
    }

    public function post_buyStock($data)
    {
        $this->db->trans_start();

        $query = "
            SELECT
              COMP_PRICE
            FROM
              job015_copy a, tb_admin b
            WHERE
              a.COMP_DATE = b.stock_rownum AND COMP_CODE = ?        
        ";
        $COMP_PRICE = $this->db->query($query, $data['COMP_CODE'])->row()->COMP_PRICE;

        $insert_data = array(
            'EMPL_KEY' => $_SESSION['EMPL_KEY'],
            'COMP_CODE' => $data['COMP_CODE'],
            'EMPL_BUYQTY' => $data['EMPL_BUYQTY'],
            'EMPL_BUYPRICE' => $COMP_PRICE,
            'EMPL_BUYTOT' => $COMP_PRICE * $data['EMPL_BUYQTY'],
        );
        $this->db->insert('job081', $insert_data);
        $BUY_KEY = $this->db->insert_id();

        $insert_data = array(
            'BUY_KEY' => $BUY_KEY,
            'EMPL_KEY' => $_SESSION['EMPL_KEY'],
            'COMP_CODE' => $data['COMP_CODE'],
            'EMPL_BALQTY' => $data['EMPL_BUYQTY'],
            'EMPL_BUYPRICE' => $COMP_PRICE,
            'EMPL_BUYTOT' => $COMP_PRICE * $data['EMPL_BUYQTY'],
        );
        $this->db->insert('job083', $insert_data);

        $query = "
            UPDATE job050 SET stock_CASH = stock_CASH - ?
            WHERE
              EMPL_KEY = ?
        ";
        $this->db->query($query, array($COMP_PRICE * $data['EMPL_BUYQTY'], $_SESSION['EMPL_KEY']));

        $this->db->trans_complete();

        return $this->get_buyStock();
    }

    public function post_sellStock($data)
    {
        $this->db->trans_start();

        $query = "
            SELECT
              COMP_PRICE
            FROM
              job015_copy a, tb_admin b
            WHERE
              a.COMP_DATE = b.stock_rownum AND COMP_CODE = ?        
        ";
        $COMP_PRICE = $this->db->query($query, $data['COMP_CODE'])->row()->COMP_PRICE;

        $query = "
            SELECT EMPL_BUYPRICE FROM job081
            WHERE
              BUY_KEY = ?
        ";
        $buy_price = $this->db->query($query, $data['BUY_KEY'])->row()->EMPL_BUYPRICE;

        $insert_data = array(
            'BUY_KEY' => $data['BUY_KEY'],
            'EMPL_KEY' => $_SESSION['EMPL_KEY'],
            'COMP_CODE' => $data['COMP_CODE'],
            'EMPL_SELQTY' => $data['EMPL_SELQTY'],
            'EMPL_PRICE' => $buy_price,
            'EMPL_SELPRICE' => $COMP_PRICE,
            'EMPL_SELTOT' => $COMP_PRICE * $data['EMPL_SELQTY'],
        );
        $this->db->insert('job082', $insert_data);

        $query = "
            UPDATE job083 SET EMPL_BALQTY = EMPL_BALQTY - ?, EMPL_BUYTOT = EMPL_BUYTOT - (EMPL_BUYPRICE * ?)
            WHERE BUY_KEY = ?
        ";
        $this->db->query($query, array($data['EMPL_SELQTY'], $data['EMPL_SELQTY'], $data['BUY_KEY']));

        $query = "
            UPDATE job050 SET stock_CASH = stock_CASH + ?
            WHERE
              EMPL_KEY = ?
        ";
        $this->db->query($query, array($COMP_PRICE * $data['EMPL_SELQTY'], $_SESSION['EMPL_KEY']));

        $this->db->trans_complete();

        return $this->get_buyStock();
    }

    public function get_stock_chart($code)
    {
        $query = "
            SELECT a.* FROM
              job015_copy a, tb_admin b
            WHERE
              COMP_DATE <= b.stock_rownum AND COMP_DATE >= (b.stock_rownum - 10) AND COMP_CODE = ?
        ";
        $return = $this->db->query($query, $code)->result();

        return $return;
    }

    public function get_company_info($code)
    {
        $query = "
            SELECT * FROM
              job014
            WHERE
              COMP_CODE = ?
        ";
        $return = $this->db->query($query, $code)->row();

        return $return;
    }

    public function get_stock_result($key)
    {
        $query = "
            SELECT EMPL_CASH, stock_CASH FROM job050
            WHERE
              EMPL_KEY = ?
        ";
        $result = $this->db->query($query, $key)->row();
        $return->EMPL_CASH = $result->EMPL_CASH;
        $return->stock_CASH = $result->stock_CASH;

        $query = "
            SELECT * FROM job082
            WHERE
              EMPL_KEY = ?
            LIMIT 7
        ";
        $return->history = $this->db->query($query, $key)->result();

        return $return;
    }

    /**
     * end 주식 투자 체험
     */
}
