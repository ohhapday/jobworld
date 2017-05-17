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
            this.news();
            this.anal();
        },
        news: function () {
            let ul = $('.wrap_layerpop:eq(0) .layerpop:eq(0) .dtlist');
            let li = $('.wrap_layerpop:eq(0) .layerpop:eq(0) .dtlist li:eq(0)');

            $('.wrap_layerpop:eq(0) .layerpop:eq(0) .dtlist li:not(:eq(0))').remove();

            $.each(mData.NEWS, function () {
                let $clone = li.clone(true).css('display', '');

                $clone.find('a').text(this.NEWS_HEAD);
                $clone.find('span').text(moment(this.INSERT_DATE).format('YYYY.MM.DD'));

                ul.append($clone.clone(true));
            });
        },
        anal: function () {
            let ul = $('.wrap_layerpop:eq(0) .layerpop:eq(1) .dtlist');
            let li = $('.wrap_layerpop:eq(0) .layerpop:eq(1) .dtlist li:eq(0)');

            $('.wrap_layerpop:eq(0) .layerpop:eq(1) .dtlist li:not(:eq(0))').remove();

            $.each(mData.ANAL, function () {
                let $clone = li.clone(true).css('display', '');

                $clone.find('a').text(this.ANAL_HEAD);
                $clone.find('span').text(moment(this.INSERT_DATE).format('YYYY.MM.DD'));

                ul.append($clone);
            });
        },
    };

    let ajax = {
        init: function () {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_mData',
                success: function (data, status, xhr) {
                    mData = data;
                }
            });
            ui.init();
        },
    };

    // 기본 Event
    (function () {
        // 뉴스 처리
        (function () {
            let li = $('.wrap_layerpop:eq(0) .layerpop:eq(0) .dtlist li');
            li.on('click', function () {
                let index = $('.wrap_layerpop:eq(0) .layerpop:eq(0) .dtlist li:not(:eq(0))').index($(this));
                let news = mData.NEWS[index];
                let pop = $('.wrap_layerpop:eq(1)');

                pop.find('.box_titpop h2').text(news.NEWS_HEAD);
                pop.find('.box_contpop p').html(news.NEWS_FILE.replace(/\n/gi, '<br>'));
                pop.find('.date em').text('잡월드 뉴스');
                pop.find('.date span:eq(1)').text(moment(news.INSERT_DATE).format('YYYY.MM.DD'));

                pop.fadeIn(500);
            });
        })();

        // 애널리스트 처리
        (function () {
            let li = $('.wrap_layerpop:eq(0) .layerpop:eq(1) .dtlist li');
            li.on('click', function () {
                let index = $('.wrap_layerpop:eq(0) .layerpop:eq(1) .dtlist li:not(:eq(0))').index($(this));
                let news = mData.ANAL[index];
                let pop = $('.wrap_layerpop:eq(1)');

                pop.find('.box_titpop h2').text(news.ANAL_HEAD);
                pop.find('.box_contpop p').html(news.ANAL_FILE.replace(/\n/gi, '<br>'));
                pop.find('.date em').text('잡월드 뉴스');
                pop.find('.date span:eq(1)').text(moment(news.INSERT_DATE).format('YYYY.MM.DD'));

                pop.fadeIn(500);
            });
        })();
    })();

    // 시스템 데이터와 비교하여 변경된 항목만 업데이트 처리
    let get_ajax = function (tmp) {
        // 뉴스 데이터 변경
        if (tmp.news_que !== eData.news_que || tmp.anal_que !== eData.anal_que) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_stockData',
                success: function (data, status, xhr) {
                    mData = $.extend(true, mData, data);
                    ui.init();
                }
            });
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

    ajax.init();
});

