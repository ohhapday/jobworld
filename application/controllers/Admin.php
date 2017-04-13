<?php
/**
 * Created by PhpStorm.
 * User: SJS
 * Date: 2017-04-09
 * Time: 오후 3:31
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

    function __construct()
    {
        parent::__construct();
    }

    public function main()
    {
        $this->load->view('admin/main_v');
    }

    /**
     * get 운영자용 페이지 데이터
     */
    public function get_admin_main()
    {
        $return = new stdClass();
        $return->user;

        json_encode($return);
    }
}
