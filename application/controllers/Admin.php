<?php
/**
 * Created by PhpStorm.
 * User: SJS
 * Date: 2017-04-09
 * Time: 오후 3:31
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller
{

    function __construct()
    {
        parent::__construct();

        $this->load->model('admin_m');
        $this->load->model('main_m');
    }

    public function main()
    {
        $this->session->sess_destroy();

        // 세션 할당
        $user_data = array(
            'EMPL_KEY' => '',
            'EMPL_NAME' => '운영자',
            'MF_FG' => 'M',
        );

        $this->session->set_userdata($user_data);
        $this->load->view('admin/main_v');
    }

    /**
     * get 운영자용 페이지 데이터
     */
    public function get_admin()
    {
        $return->usabled = (int)$this->main_m->get_usable();
        $return->STATUS = $this->main_m->get_STATUS();
        $return->DATA_TYPE = $this->main_m->get_DATA_TYPE();
        $return->COMP_DATA = $this->main_m->get_COMP_DATA();

        echo json_encode($return);
    }

    public function put_admin()
    {
        $admin_status = $this->input->input_stream('mdata', true);
        echo $this->main_m->put_admin_status($admin_status);
    }

    public function sse_get_user()
    {
        $return->user = $this->main_m->get_user();

        $aa = 1;

        header('Content-Type: text/event-stream');
        header('Cache-Control: no-cache');

        if ($aa === 1) {
            $time = date('r');
            echo "data: " . json_encode($return) . "\n\n";
            echo "retry: 10000\n";
        } else {

        }
        flush();
    }

    public function get_table()
    {
        $data = array(
            'table_nm' => $this->input->get('table_nm', true),
            'where' => array(
                $this->input->get('where', true)[0] =>
                $this->input->get('where', true)[1],
            ),
            'orderby' => array(
                $this->input->get('orderby', true)[0],
                $this->input->get('orderby', true)[1],
            ),
        );
        $return = $this->main_m->get_table($data);
        echo json_encode($return);
    }


}
