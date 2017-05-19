/**
 * Created by 서정석 on 2017/04/16.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui',

], function ($, bootstrap, moment) {
    "use strict";

    let sdata = {
        PG_LOCK: null,
    };

    let nf = new Intl.NumberFormat(["en-US"]);

    sessionStorage.removeItem('session_data');

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

    // UI 처리 함수
    let handle_ui = function () {
        if (sdata.PG_LOCK === '1') {
            $('input').attr('disabled', false);
            $('.btn_loglist').removeClass('hidden');
        } else {
            $('input').attr('disabled', true);
            $('.btn_loglist').addClass('hidden');
        }
    };

    // 좌측 화면 생성
    (function () {
        let myWindow = window.open("/main/left_main", "MsgWindo w", "");
    })();

    handle_ui();
});

