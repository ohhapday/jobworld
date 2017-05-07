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

    public function put_NEWS($news_key)
    {
        $query = "
            SELECT * FROM job016_copy
            WHERE NEWS_KEY = ?
        ";
        $result = $this->db->query($query, $news_key)->row();

        $query = "
            UPDATE job015_copy SET COMP_PRICE = (COMP_PRICE + (COMP_PRICE * ?))
            WHERE
              SECT_KEY = ? AND COMP_DATE = ?
        ";
    }

}
