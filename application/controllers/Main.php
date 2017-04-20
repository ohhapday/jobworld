<?php

/**
 * Created by PhpStorm.
 * User: 서정석
 * Date: 2017/04/16
 * Time: 오후 1:06
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller
{

    function __construct()
    {
        parent::__construct();

        $this->load->helper(array('common', 'url', 'alert'));
        /*if (!$this->session->EMPL_NAME) {
            alert('로그아웃 되었습니다.', '/login/main');
        }*/

        $this->load->model('admin_m');
        $this->load->model('main_m');

    }

    public function index()
    {
        $this->load->view('main_v');
    }

    public function get_udata()
    {
        $data = array(
            'table_nm' => 'job016',
            'where' => array('1' => '1'),
        );
        $return->news = $this->main_m->get_table($data);

        echo json_encode($return);
    }



}