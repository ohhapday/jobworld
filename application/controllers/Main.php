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

        $this->load->model('admin/main_m');
        $this->load->model('login/login_m');
    }

    public function index()
    {
        $this->load->view('main_v');
    }


}