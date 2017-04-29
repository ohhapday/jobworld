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

    /**
     * begin 메인 페이지
     */

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

    /**
     * end 메인 페이지
     */

    /**
     * begin 채권 투자 체험
     */

    public function bond()
    {
        $this->load->view('bond_v');
    }

    public function get_bondData()
    {
        $return->BOND = $this->main_m->get_bond();

        echo json_encode($return);
    }

    /**
     * end 채권 투자 체험
     */

    /**
     * begin 주식 투자 체험
     */

    public function stock()
    {
        $this->load->view('stock_v');
    }

    public function get_stockData()
    {
        $return->NEWS = $this->main_m->get_NEWS();
        $return->ANAL = $this->main_m->get_ANAL();
        $return->stock = $this->main_m->get_stock();
        $return->favor = $this->main_m->get_favor();
        $return->cashFlow = $this->main_m->get_cash();
        $return->buyStock = $this->main_m->get_buyStock();

        echo json_encode($return);
    }

    public function post_favor()
    {
        $data = $this->input->post('favor', true);
        $return = $this->main_m->post_favor($data);

        echo json_encode($return);
    }

    public function post_buyStock()
    {
        $data = $this->input->post('buyStock', true);
        $return->buyStock = $this->main_m->post_buyStock($data);
        $return->cashFlow = $this->main_m->get_cash();

        echo json_encode($return);
    }

    public function post_sellStock()
    {
        $data = $this->input->post('sellStock', true);
        $return->buyStock = $this->main_m->post_sellStock($data);
        $return->cashFlow = $this->main_m->get_cash();

        echo json_encode($return);
    }

    /**
     * end 주식 투자 체험
     */

}