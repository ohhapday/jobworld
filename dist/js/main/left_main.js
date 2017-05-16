/**
 * Created by 서정석 on 2017/04/16.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
    '/dist/js/main/common.js',         // 공통 처리 js
], function ($, bootstrap, moment, a, session) {
    "use strict";

    let nf = new Intl.NumberFormat(["en-US"]);
    let user = {                            // 사용자 정보
        key: session.EMPL_KEY,              // 기본키
        name: session.EMPL_NAME,            // 사용자 이름
        mf: session.MF_FG,                  // 성별
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

    let mData = {                           // 1회 로딩 데이터
        NEWS: null,
        ANAL: null,
    };

    let ui = {
        init: function () {
            console.log(eData);
        },
    }

    let ajax = {

    };

    // 기본 DATA (1회만 처리)
    let handle_ajax = (function () {
        (function () {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_mData',
                success: function (data, status, xhr) {
                    mData = data;
                    ui.init();
                }
            });
        })();
    })();

    // 기본 UI (1회만 처리)
    (function () {
        // 좌측 화면 생성
        (function () {
            // let myWindow = window.open("/main/left_main", "MsgWindow", "");
        })();

        // 뉴스 처리
        (function () {
            $.each(mData.NEWS, function (i) {
                let $li = $('.news').eq(i);
                $li.find('span').text(moment().format('YYYY.MM.DD'));
                $li.find('em').text(this.NEWS_HEAD);
            });

            $('.news').on('click', function () {
                let index = $('.news').index(this);
                let pop = $('.wrap_layerpop:eq(0)');

                pop.find('.box_titpop h2').text('이 시각 뉴스');
                pop.find('.news_tit').text(mData.NEWS[index].NEWS_HEAD);
                pop.find('.box_contpop p').html(mData.NEWS[index].NEWS_FILE);
                pop.find('.date em').text('잡월드 뉴스');
                pop.find('.date span:eq(1)').text(moment().format('YYYY.MM.DD'));

                pop.fadeIn(500);
            });
        })();

        // 애널리스트 처리
        (function () {
            $('.box_mnrtg2 li').on('click', function () {
                let index = $('.box_mnrtg2 li').index(this);
                let pop = $('.wrap_layerpop:eq(0)');

                pop.find('.box_titpop h2').text('애널리스트 보고서');
                pop.find('.news_tit').text(mData.ANAL[index].ANAL_HEAD);
                pop.find('.box_contpop p').html(mData.ANAL[index].ANAL_FILE);
                pop.find('.date em').text('잡월드 애널리스트');
                pop.find('.date span:eq(1)').text(moment().format('YYYY.MM.DD'));

                pop.fadeIn(500);
            });
        })();
    })();

    // 시스템 데이터와 비교하여 변경된 항목만 업데이트 처리
    let get_ajax = function (tmp) {
        if (eData.survey_STATUS == '1') {
            $('#gnb li:eq(0)').addClass('on');

            $('#gnb li:eq(0)').on('click', function () {
                $('.wrap_layerpop:eq(1) .layerpop').hide();
                $('.wrap_layerpop:eq(1) .layerpop:eq(0)').show();
                $('.wrap_layerpop:eq(1)').fadeIn(500);
            });
        } else {
            $('#gnb li:eq(0)').removeClass('on');
            $('#gnb li:eq(0)').off('click');
        }

        if (eData.fund_STATUS == '1') {
            $('#gnb li:eq(1)').addClass('on');
            $('#gnb li:eq(1) a').attr('href', '/main/fund');
        } else {
            $('#gnb li:eq(1)').removeClass('on');
            $('#gnb li:eq(1) a').attr('href', '#');
        }

        if (eData.bond_STATUS == '1') {
            $('#gnb li:eq(2)').addClass('on');
            $('#gnb li:eq(2) a').attr('href', '/main/bond');
        } else {
            $('#gnb li:eq(2)').removeClass('on');
            $('#gnb li:eq(2) a').attr('href', '#');
        }

        if (eData.stock_STATUS == '1') {
            $('#gnb li:eq(3)').addClass('on');
            $('#gnb li:eq(3) a').attr('href', '/main/stock');
        } else {
            $('#gnb li:eq(3)').removeClass('on');
            $('#gnb li:eq(3) a').attr('href', '#');
        }
    };

    // eventSource
    (function () {
        // 시스템 데이터 바인드
        let eventSource = new EventSource('/login/sse_get_system');
        eventSource.onmessage = function (e) {
            if (e.data !== JSON.stringify(eData)) {

                let tmp = $.extend({}, eData);
                eData = $.extend(true, eData, JSON.parse(e.data));

                if (tmp.PG_LOCK !== '0') {
                    get_ajax(tmp);
                }
            }
        }
    })();

});
