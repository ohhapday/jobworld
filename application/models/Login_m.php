<?PHP

class Login_m extends CI_Model
{

    function __construct()
    {
        parent::__construct();
        $this->load->helper(array('common', 'url', 'alert'));

    }

    function post_user($data)
    {
        $user_name = $this->input->post('EMPL_NAME', true);

        $query = "
            SELECT count(*) AS cnt FROM job050
            WHERE EMPL_NAME = ?
        ";
        $cnt = $this->db->query($query, array($user_name))->row()->cnt;

        if($cnt > 0) {
            return false;
        } else {
            // 초기투자금
            $query = "
                SELECT MD_NAME FROM job024
                WHERE
                    MKEY = 3
            ";
            $EMPL_CASH = $this->db->query($query)->row()->MD_NAME;

            $insert_data = array(
                'EMPL_NAME' => $user_name,
                'MF_FG' => $_POST['sx'],
                'EMPL_CASH' => (int)$EMPL_CASH,
                'fund_CASH' => (int)$EMPL_CASH,
                'bond_CASH' => (int)$EMPL_CASH,
                'stock_CASH' => (int)$EMPL_CASH,
            );
            $this->db->insert('job050', $insert_data);

            return $this->db->insert_id();
        }
    }

}
