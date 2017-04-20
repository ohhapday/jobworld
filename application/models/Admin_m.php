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

    public function get_usable()
    {
        $query = "
            SELECT PG_LOCK FROM job011
        ";
        $result = $this->db->query($query)->row()->PG_LOCK;
        return (string)$result;
    }

    public function get_STATUS()
    {
        $query = "
            SELECT STATUS FROM job010
        ";
        $result = $this->db->query($query)->row()->STATUS;
        return json_decode($result);
    }

    public function get_DATA_TYPE()
    {
        $query = "
            SELECT DATA_TYPE FROM job012
        ";
        $result = $this->db->query($query)->row()->DATA_TYPE;
        return (int)$result;
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

        $this->db->update('job011', array('PG_LOCK' => $data['usabled']));
        $this->db->update('job010', array('STATUS' => json_encode($data['STATUS'])));
        $this->db->update('job012', array('DATA_TYPE' => $data['DATA_TYPE']));

        $this->db->trans_complete();
        return true;
    }

    public function get_table($data)
    {
        $this->db->where($data['where']);
        if ($data['orderby'][0] !== null) {
            $this->db->order_by($data['orderby'][0], $data['orderby'][1]);
        }
        $return = $this->db->get($data['table_nm'])->result();

        return $return;
    }


}
