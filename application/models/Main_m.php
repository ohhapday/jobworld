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
            ORDER BY NEWS_KEY ASC
            LIMIT 3
        ";
        $return = $this->db->query($query)->result();
        return $return;
    }

    public function get_ANAL()
    {
        $query = "
            SELECT * FROM job017
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
              COMP_DATE = 1
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


}
