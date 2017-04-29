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
            SELECT * FROM job016
            WHERE SEND = 1
            ORDER BY NEWS_KEY ASC
            LIMIT 4
        ";
        $return = $this->db->query($query)->result();
        return $return;
    }

    public function get_ANAL()
    {
        $query = "
            SELECT * FROM job017
            WHERE SEND = 1
            GROUP BY ANAL_TYPE
            ORDER BY ANAL_KEY ASC
            LIMIT 6
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
              job015
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

        $insert_data = array(
            'BUY_KEY' => $data['BUY_KEY'],
            'EMPL_KEY' => $_SESSION['EMPL_KEY'],
            'COMP_CODE' => $data['COMP_CODE'],
            'EMPL_SELQTY' => $data['EMPL_SELQTY'],
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

    /**
     * end 주식 투자 체험
     */
}
