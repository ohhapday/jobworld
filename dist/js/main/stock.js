/**
 * Created by 서정석 on 2017/04/24.
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
    '/dist/js/main/common.js',         // 공통 처리 js
], function ($, bootstrap, moment, a, session, common) {
    "use strict";

    let nf = new Intl.NumberFormat(["en-US"]);

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

    let mData = {};

    let ui = {
        init: function () {
            this.news();
            this.anal();
        },
        news: function () {
            $.each(mData.NEWS, function (i) {
                let $li = $('.dtlist:eq(0) li').eq(i);
                $li.find('strong').text(this.NEWS_HEAD);
                $li.find('span').text(moment().format('YYYY-MM-DD'));
            });
        },
        anal: function () {
            $.each(mData.ANAL, function (i) {
                let $li = $('.dtlist:eq(1) li').eq(i);
                $li.find('strong').text(this.ANAL_HEAD);
                $li.find('span').text(moment().format('YYYY-MM-DD'));
            });
        },
    };

    // 기본 event (1회만 처리)
    (function () {
        // 실시간 뉴스 탭 클릭 처리
        $('.bx_tablist:eq(0) .tabmenu').on('click', function () {
            $('.bx_tablist:eq(0) .tabmenu').toggleClass('on');
            $('.bx_tablist:eq(0) .btmtbl').toggle();
        });

        // 매수/매도 탭 클릭 처리
        $('.bx_tablist:eq(1) .tabmenu').on('click', function () {
            $('.bx_tablist:eq(1) .tabmenu').toggleClass('on');
            $('.bx_tablist:eq(1) .btmtbl').toggle();
        });

        // 관심종목 클릭 처리 (매수)
        $('.box_tbllist:eq(0) tbody tr').on('click', function () {
            $('.bx_tablist:eq(1) .tabmenu:eq(0)').addClass('on');
            $('.bx_tablist:eq(1) .tabmenu:eq(1)').removeClass('on');
            $('.bx_tablist:eq(1) .btmtbl:eq(0)').show();
            $('.bx_tablist:eq(1) .btmtbl:eq(1)').hide();

            $('.box_tbllist:eq(0) tbody tr').css('background-color', '');
            $('.box_tbllist:eq(1) tbody tr').css('background-color', '');
            $(this).css('background-color', '#CAE1F7');

            $('.bx_tablist:eq(1) .btmtbl:eq(0) span').text($(this).find('.align-l').text());
            $('.bx_tablist:eq(1) .btmtbl:eq(0) input[name="cost"]')
                .val($(this).find('td:eq(1)').text().replace(/,/g, ''));
        });

        // 보유현황 종목 클릭 처리 (매도)
        $('.box_tbllist:eq(1) tbody tr').on('click', function () {
            $('.bx_tablist:eq(1) .tabmenu:eq(1)').addClass('on');
            $('.bx_tablist:eq(1) .tabmenu:eq(0)').removeClass('on');
            $('.bx_tablist:eq(1) .btmtbl:eq(1)').show();
            $('.bx_tablist:eq(1) .btmtbl:eq(0)').hide();

            $('.box_tbllist:eq(0) tbody tr').css('background-color', '');
            $('.box_tbllist:eq(1) tbody tr').css('background-color', '');
            $(this).css('background-color', '#CAE1F7');

            $('.bx_tablist:eq(1) .btmtbl:eq(1) span').text($(this).find('.align-l').text());
            $('.bx_tablist:eq(1) .btmtbl:eq(1) input[name="cost"]')
                .val($(this).find('td:eq(2)').text().replace(/,/g, ''));
        });
    })();

    // 관심종목 처리
    (function () {
        let pop = $('.wrap_layerpop:eq(0)');
        let $table = pop.find('.ovtbl table tbody');
        let $clone = pop.find('.ovtbl tbody tr:eq(0)')
            .clone(true).css('display', '');

        // 관심종목 팝업 생성
        var pop_show = function () {
            $.each(mData.stock, function (i) {
                $clone.find('td:eq(0) input').val(this.COMP_CODE);
                $clone.find('td:eq(0) input').attr('id', 'id' + this.COMP_CODE);
                $clone.find('td:eq(1) label').attr('for', 'id' + this.COMP_CODE);
                $clone.find('td:eq(1) label').text(this.COMP_NAME);
                $clone.find('td:eq(2)').text(nf.format(this.COMP_PRICE));

                $table.append($clone.clone(true));
            });
        };

        // 관심종목 추가 버튼
        $('.btn_plss').on('click', function () {
            pop.fadeIn(500);
            pop_show();
            // git 테스트
        });
    })();

    // 기본 UI (1회만 처리)
    (function () {
        $.ajax({
            async: false,
            dataType: 'json',
            type: 'get',
            url: '/main/get_stockData',
            success: function (data, status, xhr) {
                mData = data;
                ui.init();
                console.log(mData);
            }
        });
    })();

    // eventSource
    (function () {
        // 시스템 데이터 바인드
        let eventSource = new EventSource('/login/sse_get_system');
        eventSource.onmessage = function (e) {
            if (e.data !== JSON.stringify(eData)) {
                eData = $.extend(true, eData, JSON.parse(e.data));
            }
        }
    })();
});