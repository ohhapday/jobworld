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

    public function fund()
    {
        $this->load->view('fund_v');
    }

    public function bond()
    {
        $this->load->view('bond_v');
    }

    public function stock()
    {
        $this->load->view('stock_v');
    }

    public function get_mData()
    {
        $return->NEWS = $this->main_m->get_NEWS();
        $return->ANAL = $this->main_m->get_ANAL();
        $return->KOS = $this->main_m->get_KOS();
        $return->COMP = $this->main_m->get_COMP();

        echo json_encode($return);
    }

    public function get_survey()
    {
        $return->SURVEY = $this->main_m->get_survey();

        echo json_encode($return);
    }

}