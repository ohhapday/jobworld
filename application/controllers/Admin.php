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
        // $this->load->view('admin/main_v');
        $this->load->view('admin/main_2_v');
    }

    public function main2()
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
        $system = $this->admin_m->get_system();

        $return->usabled = (int)$system->PG_LOCK;
        $return->STATUS->survey_STATUS = (int)$system->survey_STATUS;
        $return->STATUS->fund_STATUS = (int)$system->fund_STATUS;
        $return->STATUS->bond_STATUS = (int)$system->bond_STATUS;
        $return->STATUS->stock_STATUS = (int)$system->stock_STATUS;
        $return->STATUS->result_STATUS = (int)$system->result_STATUS;
        $return->DATA_TYPE = (int)$system->DATA_TYPE;


        $return->NEWS = $this->main_m->get_NEWS2();
        $return->ANAL = $this->main_m->get_ANAL2();

        $return->COMP_DATA = $this->admin_m->get_COMP_DATA();
        $return->speed = $this->admin_m->get_speed();           // 체험 속도

        echo json_encode($return);
    }

    public function put_admin()
    {
        $admin_status = $this->input->input_stream('mdata', true);
        echo $this->admin_m->put_admin_status($admin_status);
    }

    public function sse_get_user()
    {
        $return->user = $this->admin_m->get_user();

        $aa = 1;

        header('Content-Type: text/event-stream');
        header('Cache-Control: no-cache');

        if ($aa === 1) {
            $time = date('r');
            echo "data: " . json_encode($return) . "\n\n";
            echo "retry: 1000\n";
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

    public function put_init()
    {
        return $this->admin_m->put_init();
    }

    public function put_stock_rownum()
    {
        return $this->admin_m->put_stock_rownum();
    }

    public function put_bond_rownum()
    {
        return $this->admin_m->put_bond_rownum();
    }

    public function put_NEWS()
    {
        $key = $this->input->post('NEWS_KEY', true);

        return $this->admin_m->put_NEWS($key);
    }

    public function put_ANAL()
    {
        $key = $this->input->post('ANAL_KEY', true);

        return $this->admin_m->put_ANAL($key);
    }

    public function put_NEWS_CONTENTS()
    {
        echo json_encode($this->admin_m->put_NEWS_CONTENTS($_POST));
    }

    public function put_ANAL_CONTENTS()
    {
        echo json_encode($this->admin_m->put_ANAL_CONTENTS($_POST));
    }

    // 종합환경설정 업데이트
    public function put_job024()
    {
        $return = $this->admin_m->put_job024($_POST);

        echo json_encode($return);
    }

    // 채권정보 업데이트
    public function put_job020()
    {
        $return = $this->admin_m->put_job020($_POST);

        echo json_encode($return);
    }

    // 주식종목 가격 조정
    public function put_adjust()
    {
        $return = $this->admin_m->put_adjust($_POST);

        $data = array(
            'table_nm' => 'job015_copy',
            'where' => array('COMP_CODE' => $_POST['COMP_CODE']),
        );

        $return = $this->main_m->get_table($data);
        echo json_encode($return);
    }

    // 주식종목 개별 가격 조정
    public function put_COMP_PRICE()
    {
        $this->admin_m->put_COMP_PRICE($_POST);

        $data = array(
            'table_nm' => 'job015_copy',
            'where' => array('COMP_CODE' => $_POST['COMP_CODE']),
        );

        $return = $this->main_m->get_table($data);
        echo json_encode($return);
    }

}
