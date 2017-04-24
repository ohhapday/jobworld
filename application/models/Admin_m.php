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

    public function put_init()
    {
        $this->db->trans_start();

        $update_data = array(
            'PG_LOCK' => 0,
            'fund_STATUS' => 0,
            'bond_STATUS' => 0,
            'stock_STATUS' => 0,
            'DATA_TYPE' => '30',
            'stock_rownum' => 10
        );
        $this->db->update('tb_admin', $update_data);

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
            UPDATE tb_admin SET stock_rownum = stock_rownum + 1
        ";
        $this->db->query($query);
    }

}
