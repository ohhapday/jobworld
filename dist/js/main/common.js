/**
 * Created by 서정석 on 2017/04/16.
 *
 */

define([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
], function ($, bootstrap, moment, a, session) {
    "use strict";

    let user = {                            // 사용자 정보
        key: session.EMPL_KEY,              // 기본키
        name: session.EMPL_NAME,            // 사용자 이름
        mf: session.MF_FG,                  // 성별
    };

    // 카운터 시계
    (function () {
        window.setInterval(function () {
            let now_time = moment().format('HH:mm:ss');
            $('.time').text(now_time);
        }, 1000);
    })();

    // 공통 UI 처리
    (function () {
        // 팝업 숨기기
        $('.wrap_layerpop .btn_close').click(function () {
            $(this).closest('.wrap_layerpop').fadeOut(500);
        });
        $('.member strong').text(user.name);
    })();

    // event 처리 함수
    let handle_event = function (eData) {
        // 프로그램 사용 중지
        if (eData.usabled === '0') {
            $('.clfix li a').css('cursor', 'not-allowed');
            $('.clfix li a').attr('href', '#');
        } else {
            $('.clfix li a').css('cursor', 'pointer');
            $('.clfix li a').attr('href', '#');
        }
    };

    return {
        handle_event: handle_event,
        user: user,
    }
});

