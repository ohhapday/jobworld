<?php

/**
 * Created by PhpStorm.
 * User: 서정석
 * Date: 2017/04/16
 * Time: 오후 1:06
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller
{

    function __construct()
    {
        parent::__construct();

        $this->load->helper(array('common', 'url', 'alert'));

        $this->load->model('admin/main_m');
        $this->load->model('login/login_m');
    }

    public function main()
    {
        if ($_POST) {
            $return = $this->login_m->post_user($_POST);
            if (!$return) {
                alert('동일한 직원이 존재합니다.');
                exit;
            }
            // 세션 할당
            $user_data = array(
                'EMPL_KEY' => $return,
                'EMPL_NAME' => $_POST['EMPL_NAME'],
                'MF_FG' => $_POST['sx'],
            );

            $this->session->set_userdata($user_data);

            redirect('/main');
        } else {
            $this->load->view('login/main_v');
        }
    }

    public function sse_get_system()
    {
        $return->usabled = $this->main_m->get_usable();

        if ($return->usabled === '1') {
            $retry = 5000;
        } else {
            $retry = 1000;
        }

        header('Content-Type: text/event-stream');
        header('Cache-Control: no-cache');

        echo "data: " . json_encode($return) . "\n\n";
        echo "retry: " . $retry . "\n";

        flush();
    }


}