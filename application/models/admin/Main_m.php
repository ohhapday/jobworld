<?PHP

class Main_m extends CI_Model
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

    public function get_usable()
    {
        $query = "
            SELECT PG_LOCK FROM job011
        ";
        $result = $this->db->query($query)->row()->PG_LOCK;
        return (string)$result;
    }


}
