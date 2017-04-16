/**
 * Created by 서정석 on 2017/04/16.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',

], function ($, bootstrap, moment, a, session) {
    "use strict";

    let approval_action = location.pathname.split('/')[3];
    let user = {
        key: session.EMPL_KEY,
        name: session.EMPL_NAME,
        mf: session.MF_FG,
    };                        // 사용자 정보
    let sdata = {
        'usabled': '1',
    };
    let udata = {
        news: null,

    };

    let nf = new Intl.NumberFormat(["en-US"]);

    // ajax 처리
    let handle_ajax = (function () {

    })();

    // eventSource
    (function () {
        let eventSource = new EventSource('/login/sse_get_system');
        eventSource.onmessage = function (e) {
            if (e.data !== JSON.stringify(sdata)) {
                sdata = JSON.parse(e.data);
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

    // 기본 UI (1회만 처리)
    (function () {
        $('.member strong').text(user.name);
    })();

    // UI 처리 함수
    let handle_ui = function () {
        // 프로그램 사용 중지
        if (sdata.usabled === '1') {
            $('.wrap_layerpop').hide();
        } else {
            $('.wrap_layerpop').show();
        }
    };

    handle_ui();
});

