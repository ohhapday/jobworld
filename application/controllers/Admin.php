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

        $this->load->model('admin/main_m');
    }

    public function main()
    {
        $this->load->view('admin/main_v');
    }

    /**
     * get 운영자용 페이지 데이터
     */
    public function get_admin()
    {
        $return->usabled = (int)$this->main_m->get_usable();

        echo json_encode($return);
    }

    public function put_admin()
    {
        $aaa = $this->input->input_stream('test', true);
        var_dump($aaa);
        exit;
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


}
