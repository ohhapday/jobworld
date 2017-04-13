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
}
