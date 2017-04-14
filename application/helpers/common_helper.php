<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/*
 * user file upload 사원 폴더 밑에 board_name으로 폴더가 생성됨
 */
function user_upload($board_name= NULL)
{
	$CI =& get_instance();

	$config['upload_path'] = 			'./userfile/'.$CI->session->user_code.'/'.$board_name;
	$config['allowed_types'] = 			'doc|hwp|pdf|ppt|xls|pptx|docx|xlsx|zip|rar|jpg|png|bmp|gif|jpeg|psd';
	$config['max_size'] = 				'102400';		// 100M
	$config['encrypt_name'] = 		TRUE;
	$config['file_ext_tolower'] = 	TRUE;

	$CI->load->library('upload');
	$CI->upload->initialize($config);		// 사용자 라이브러리의 경우 config를 새로 로딩해줘야함

	$data = $CI->upload->do_multi_upload();
	return $data;
}

/**
 * 회장님이 들어있을 경우 비서 추가
 */
function secretary_insert($data)
{
	if (strpos($data['user_code'], '831001') !== false or strpos($data['user_code'], '131113') !== false) {
		$data['refer_user_code'] = $data['refer_user_code'] . ',142005';
	}
	if (strpos($data['from_user_code'], '831001') !== false or strpos($data['from_user_code'], '131113') !== false) {
		$data['refer_user_code'] = $data['refer_user_code'] . ',142005';
	}
	if (strpos($data['refer_user_code'], '831001') !== false or strpos($data['refer_user_code'], '131113') !== false) {
		$data['refer_user_code'] = $data['refer_user_code'] . ',142005';
	}

	return $data;
}

/**
 * 열람자/참조자를 삭제할 수 있는 span 태그 생성
 */
function span_auth_name($data, $auth_name, $auth_code)
{
	if ($auth_name) {
		$name = explode(',', $auth_name);
		$code = explode(',', $auth_code);
	}

	$return = ''; $i = 0;
	foreach ($name as $key => $value) {
		$i++;
		$return .= '<span>'.$value.'<i class="fa fa-fw fa-ellipsis-v text-warning" data-user-code="'.$code[$key].'"></i></span> ';
		if($i%7 == 0){
			$return .= '<br>';
		}
	}

	return $return;
}