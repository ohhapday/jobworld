<?PHP

class Main_m extends CI_Model
{

    function __construct()
    {
        parent::__construct();
        $this->load->helper(array('common', 'url', 'alert'));

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
