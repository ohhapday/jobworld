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

    public function get_bulletinData()
    {
        $return->stock = $this->main_m->get_stock();
        $return->STOCK_POP = $return->stock;
        $return->KOS = $this->main_m->get_KOS();

        echo json_encode($return);
    }

    /**
     * begin 메인 페이지
     */

    public function index()
    {
        $this->load->view('main_v');
    }

    public function left_main()
    {
        $this->load->view('left_main_v');
    }

    public function bulletin()
    {
        $this->load->view('bulletin_v');
    }

    public function get_mData()
    {
        $return->NEWS = $this->main_m->get_NEWS();
        $return->ANAL = $this->main_m->get_ANAL();
        $return->KOS = $this->main_m->get_KOS();
        $return->COMP = $this->main_m->get_COMP();
        $return->STOCK_POP = $this->main_m->get_stock();

        echo json_encode($return);
    }

    public function get_survey()
    {
        $return->SURVEY = $this->main_m->get_survey();

        echo json_encode($return);
    }

    public function get_user_info()
    {
        $return = $this->main_m->get_user_info();

        echo json_encode($return);
    }

    /**
     * end 메인 페이지
     */

    /**
     * begin 펀드 투자 체험
     */

    public function fund()
    {
        $this->load->view('fund_v');
    }

    public function get_fundData()
    {
        $return->FUND = $this->main_m->get_fund();
        $return->NEWS = $this->main_m->get_NEWS();
        $return->KOS = $this->main_m->get_KOS();
        $return->fund_stock = $this->main_m->get_stock();
        $return->benifit = $this->main_m->get_benifit();
        $return->fund_own_month = $this->main_m->fund_own_month();
        $return->STOCK_POP = $return->fund_stock;

        echo json_encode($return);
    }

    public function get_investor()
    {
        $return->investor = $this->main_m->get_investor();

        echo json_encode($return);
    }

    public function post_myFund()
    {
        $data = $this->input->post('fund', true);
        $this->main_m->post_myFund($data);
        $return->FUND = $this->main_m->get_fund();

        echo json_encode($return);
    }

    public function get_fund_stock()
    {
        $return->stock = $this->main_m->get_stock();

        echo json_encode($return);
    }

    public function post_myFundStock()
    {
        $data = array(
            'stock' => $this->input->post('stock', true),
            'FUND_KEY' => $this->input->post('FUND_KEY', true),
        );

        $this->main_m->post_myFundStock($data);
        $return->FUND = $this->main_m->get_fund();

        echo json_encode($return);
    }

    public function put_myFundStock()
    {
        $data = array(
            'MM' => $this->input->post('MM', true),
            'fund' => $this->input->post('fund', true),
        );

        $this->main_m->put_myFundStock($data);
        $return->FUND = $this->main_m->get_fund();

        echo json_encode($return);
    }

    public function get_custom()
    {
        $key = $this->input->get('FUND_KEY', true);
        $return->custom = $this->main_m->get_custom($key);

        echo json_encode($return);
    }

    /**
     * end 펀드 투자 체험
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
        $return->BOND = $this->main_m->get_bond2();
        $return->cashFlow = $this->main_m->get_bond_cash();
        $return->buyBond = $this->main_m->get_buyBond();
        $return->gold = $this->main_m->get_gold();
        $return->credit = $this->main_m->get_credit();
        $return->gold_chart = $this->get_gold_chart();

        echo json_encode($return);
    }

    public function get_gold_chart()
    {
        $data = $this->main_m->get_gold_chart();

        $txt_data = array();
        $sales = array();
        $datetime = new DateTime();
        $datetime->sub(new DateInterval('P3M'));

        $i = 0;
        foreach ($data as $item) {
            $term = new DateInterval('P3M');
            $label = $datetime->add($term)->format('y/m');

            if ($i % 4 === 0) {
                $label = $label;
            } else {
                $label = '';
            }

            array_push($txt_data,
                $label
            );
            array_push($sales,
                (float)$item->GOLD_RATE
            );
            $i++;
        }

        $return->labels = $txt_data;
        $return->sales = $sales;

        return $return;
    }

    public function post_buyBond()
    {
        $data['bond'] = $this->input->post('bond', true);
        $data['BOND_BUYQTY'] = $this->input->post('BOND_BUYQTY', true);
        $this->main_m->post_buyBond($data);

        $this->get_bondData();
    }

    public function put_bond_rownum()
    {
        $this->main_m->put_bond_rownum();

        $this->get_bondData();
    }

    public function get_bond_chart()
    {
        $data = $this->main_m->get_bond_chart();

        $i = 10;
        $txt_data = array();
        $sales = array();
        foreach ($data as $item) {
            $datetime = new DateTime();
            $term = new DateInterval('P' . $i . 'M');

            array_push($txt_data,
                $datetime->sub($term)->format('y/m')
            );
            array_push($sales,
                (int)$item->GOLD_RATE
            );
            $i--;
        }

        $return->labels = $txt_data;
        $return->sales = $sales;

        echo json_encode($return);
    }

    public function get_bond_chart2()
    {
        $data = $this->main_m->get_bond_chart2($_GET['BOND_KEY']);

        $i = 10;
        $txt_data = array();
        $sales = array();
        foreach ($data as $item) {
            $datetime = new DateTime();
            $term = new DateInterval('PT' . ($i * 30) . 'S');

            array_push($txt_data,
                $datetime->sub($term)->format('i:s')
            );
            array_push($sales,
                (int)$item->BOND_NOWPRICE
            );
            $i--;
        }

        $return->labels = $txt_data;
        $return->sales = $sales;

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
        $return->STOCK_POP = $return->stock;

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

    public function get_stock_chart()
    {
        $data = $this->main_m->get_stock_chart($_GET['COMP_CODE']);

        $txt_data = array();
        $sales = array();
        $datetime = new DateTime(date('Y-m-d') . '10:50');

        foreach ($data as $item) {
            $term = new DateInterval('PT600S');     // 10분단위

            array_push($txt_data,
                $datetime->add($term)->format('H:i')
            );
            array_push($sales,
                (int)$item->COMP_PRICE
            );
        }

        $return->labels = $txt_data;
        $return->sales = $sales;

        echo json_encode($return);
    }

    public function get_stock_chart_mm()
    {
        $data = $this->main_m->get_stock_chart_mm($_GET['COMP_CODE']);

        $txt_data = array();
        $sales = array();

        $term = new DateInterval('P31D');     // 31일 전
        $datetime = new DateTime(date('Y-m-d') . '10:50');
        $datetime->sub($term);

        foreach ($data as $item) {
            $term = new DateInterval('P01D');     // 10분단위

            array_push($txt_data,
                $datetime->add($term)->format('m/d')
            );
            array_push($sales,
                (int)$item->COMP_PRICE
            );
        }

        $return->labels = $txt_data;
        $return->sales = $sales;

        echo json_encode($return);
    }

    public function get_company_info()
    {
        $return = $this->main_m->get_company_info($_GET['COMP_CODE']);

        echo json_encode($return);
    }

    public function get_stock_result()
    {
        $return = $this->main_m->get_stock_result($_GET['EMPL_KEY']);

        echo json_encode($return);
    }

    /**
     * end 주식 투자 체험
     */

}