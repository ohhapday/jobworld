/**
 * Created by 서정석 on 2017/04/16.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
], function ($, bootstrap, moment, a, session) {
    "use strict";

    let user = {                            // 사용자 정보
        key: session.EMPL_KEY,              // 기본키
        name: session.EMPL_NAME,            // 사용자 이름
        mf: session.MF_FG,                  // 성별
    };

    let eData = {                           // 실시간 데이터
        usabled: '1',
    };

    // eventSource
    (function () {
        // 시스템 데이터 바인드
        let eventSource = new EventSource('/login/sse_get_system');
        eventSource.onmessage = function (e) {
            if (e.data !== JSON.stringify(eData)) {
                eData = JSON.parse(e.data);
                handle_ui();
            }
        }
    })();

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
    let handle_event = function () {
        // 프로그램 사용 중지
        if (eData.usabled === '0') {
            $('.clfix li a').css('cursor', 'not-allowed');
            $('.clfix li a').attr('href', '#');
        } else {
            $('.clfix li a').css('cursor', 'pointer');
            $('.clfix li a').attr('href', '#');
        }

        // 메뉴 버튼
        (function () {
            // 투자성향
            $('#gnb li').eq(0).on('click', function () {
                $('.wrap_layerpop:eq(1) .layerpop:eq(0)').show();
                $('.wrap_layerpop:eq(1) .layerpop:eq(1)').hide();
                $('.wrap_layerpop:eq(1)').fadeIn(500);
            });

            // 펀드
            $('#gnb li').eq(1).on('click', function () {
                $(location).attr('href', '/main/fund');
            });

            // 채권
            $('#gnb li').eq(2).on('click', function () {
                alert('채권');
            });

            // 주식
            $('#gnb li').eq(3).on('click', function () {
                alert('주식');
            });
        })();
    };

    handle_event();
});

