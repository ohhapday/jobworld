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

    let eData = {                           // 실시간 데이터
        PG_LOCK: null,                      // 프로그램 중지유무
        fund_STATUS: null,                  // 펀드 체험
        bond_STATUS: null,                  // 채권 체험
        stock_STATUS: null,                 // 주식 체험
        DATA_TYPE: null,                    // 데이터 변경 속도
        stock_rownum: null,                 // 주식 데이터 시작 rownum
        news_que: null,                     // 뉴스 변경 유무
        anal_que: null,                     // 애널리스트 변경 유무
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

                eData = $.extend(true, eData, JSON.parse(e.data));
                if (eData.PG_LOCK == '0') {
                    $(location).attr('href', '/main');
                }
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
        let myWindow = window.open("/main/left_main", "MsgWindow", "");
    })();

    handle_ui();
});

