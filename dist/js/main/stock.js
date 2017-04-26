/**
 * Created by 서정석 on 2017/04/24.
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
    '/dist/js/main/common.js',         // 공통 처리 js
], function ($, bootstrap, moment, a, session, common) {
    "use strict";

    let nf = new Intl.NumberFormat(["en-US"]);
    let user = common.user;

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

    let mData = {
        ANAL: null,
        NEWS: null,
        stock: null,
        favor: null,
        cashFlow: null,
    };

    // ui 생성 함수 모음
    let ui = {
        init: function () {
            this.news();
            this.anal();
            this.favor();
            this.cashFlow();
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
        favor: function () {
            let $table = $('.box_sbbtm table:eq(0) tbody');

            $table.find('tr:not(:eq(0))').remove();

            $.each(mData.favor, function (i) {
                let $clone = $('.box_sbbtm tbody tr:eq(0)')
                    .clone(true).css('display', '');
                let self = this;

                let stock = mData.stock.find(function (item) {
                    return item.COMP_CODE == self;
                });

                $clone.find('td:eq(0)').text(stock.COMP_NAME);
                $clone.find('td:eq(1)').text(nf.format(stock.COMP_PRICE));

                if (parseInt(stock.MEASURE) >= 0) {
                    $clone.find('td:eq(2) img').attr('src', '/dist/images/ico_mnup.png');
                    $clone.find('td:eq(2) span').addClass('colred');
                    $clone.find('td:eq(3) em').addClass('colred');
                } else {
                    $clone.find('td:eq(2) img').attr('src', '/dist/images/ico_mndw.png');
                    $clone.find('td:eq(2) span').addClass('colblu');
                    $clone.find('td:eq(3) em').addClass('colblu');
                }
                $clone.find('td:eq(2) span').text(nf.format(stock.MEASURE));
                $clone.find('td:eq(3) em').text(parseFloat(stock.PER_MEASURE * 100).toFixed(2) + '%');

                $table.append($clone.clone(true));
            });
        },
        cashFlow: function () {
            let li = $('.ar_btm_sel li');
            li.eq(0).find('span').text(nf.format(mData.cashFlow.cash1));
            li.eq(1).find('span').text(nf.format(mData.cashFlow.cash2));
            li.eq(2).find('span').text(nf.format(mData.cashFlow.cash3));
        },
    };

    // 기본 event (1회만 처리)
    (function () {
        // 실시간 뉴스 탭 클릭 처리
        $('.bx_tablist:eq(0) .tabmenu').on('click', function () {
            $('.bx_tablist:eq(0) .tabmenu').toggleClass('on');
            $('.bx_tablist:eq(0) .btmtbl').toggle();
        });

        /*
        // 매수/매도 탭 클릭 처리
        $('.bx_tablist:eq(1) .tabmenu').on('click', function () {
            $('.bx_tablist:eq(1) .tabmenu').toggleClass('on');
            $('.bx_tablist:eq(1) .btmtbl').toggle();
        });
        */

        // 관심종목 클릭 처리 (매수)
        $('.box_tbllist:eq(0) tbody tr').on('click', function () {
            $('.bx_tablist:eq(1) .tabmenu:eq(0)').addClass('on');
            $('.bx_tablist:eq(1) .tabmenu:eq(1)').removeClass('on');
            $('.bx_tablist:eq(1) .btmtbl:eq(0)').removeClass('off').addClass('on');
            $('.bx_tablist:eq(1) .btmtbl:eq(1)').removeClass('on').addClass('off');

            $('.box_tbllist tbody tr').removeClass('on');
            $(this).addClass('on');

            $('.bx_tablist:eq(1) .btmtbl:eq(0) span').text($(this).find('.align-l').text());
            $('.bx_tablist:eq(1) .btmtbl:eq(0) .numchk:eq(1)')
                .text($(this).find('td:eq(1)').text());
            $('.bx_tablist:eq(1) .btmtbl:eq(0) input[name="ea"]').val(0);
            $('.bx_tablist:eq(1) .btmtbl:eq(0) input[name="ea"]').focus();
        });

        // 보유현황 종목 클릭 처리 (매도)
        $('.box_tbllist:eq(1) tbody tr').on('click', function () {
            $('.bx_tablist:eq(1) .tabmenu:eq(1)').addClass('on');
            $('.bx_tablist:eq(1) .tabmenu:eq(0)').removeClass('on');
            $('.bx_tablist:eq(1) .btmtbl:eq(1)').removeClass('off').addClass('on');
            $('.bx_tablist:eq(1) .btmtbl:eq(0)').removeClass('on').addClass('off');

            $('.box_tbllist tbody tr').removeClass('on');
            $(this).addClass('on');

            $('.bx_tablist:eq(1) .btmtbl:eq(1) span').text($(this).find('.align-l').text());
            $('.bx_tablist:eq(1) .btmtbl:eq(1) .numchk:eq(1)')
                .text($(this).find('td:eq(2)').text());
            $('.bx_tablist:eq(1) .btmtbl:eq(1) input[name="ea"]').val(0);
            $('.bx_tablist:eq(1) .btmtbl:eq(1) input[name="ea"]').focus();
        });

        // 뉴스 팝업 생성
        $('.ar_btm_news:eq(0) li').on('click', function () {
            let index = $('.ar_btm_news:eq(0) li').index(this);
            let pop = $('.wrap_layerpop:eq(1)');

            pop.find('.box_titpop h2').text('이 시각 뉴스');
            pop.find('.news_tit').text(mData.NEWS[index].NEWS_HEAD);
            pop.find('.box_contpop p').html(mData.NEWS[index].NEWS_FILE);
            pop.find('.date em').text('잡월드 뉴스');
            pop.find('.date span:eq(1)').text(moment().format('YYYY.MM.DD'));

            pop.fadeIn(500);
        });

        // 애널리스트 팝업 생성
        $('.ar_btm_news:eq(1) li').on('click', function () {
            let index = $('.ar_btm_news:eq(1) li').index(this);
            let pop = $('.wrap_layerpop:eq(1)');

            pop.find('.box_titpop h2').text('이 시각 뉴스');
            pop.find('.news_tit').text(mData.NEWS[index].NEWS_HEAD);
            pop.find('.box_contpop p').html(mData.NEWS[index].NEWS_FILE);
            pop.find('.date em').text('잡월드 애널리스트');
            pop.find('.date span:eq(1)').text(moment().format('YYYY.MM.DD'));

            pop.fadeIn(500);
        });

        // 매수 금액 변경
        $('.sbright2 input[name="ea"]:eq(0)').on('change', function () {
            let index, stock, total;
            let tr = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))');
            $.each(tr, function () {
                if ($(this).hasClass('on')) {
                    index = tr.index($(this));
                }
            });

            stock = mData.stock.find(function (item) {
                return item.COMP_CODE == mData.favor[index];;
            });

            total = stock.COMP_PRICE * $(this).val();
            $(this).closest('li').next().find('.numchk').text(nf.format(total));
        });

        // 결제 버튼
        $('.btn_bview').on('click', function() {
            let aa = ($('.sbright2 .btmtbl:eq(0)').hasClass('on')) ? 0 : 1;
            let box = $('.sbright2 .btmtbl:eq(' + aa + ')');
            let ea = $('.sbright2 .btmtbl:eq(0)').val();

            // todo 결재 처리 필요
        });
    })();

    // 관심종목 처리
    (function () {
        let pop = $('.wrap_layerpop:eq(0)');
        let $table = pop.find('.ovtbl table tbody');

        // 관심종목 팝업 생성
        var pop_show = function () {
            $.each(mData.stock, function (i) {
                let $clone = pop.find('.ovtbl tbody tr:eq(0)')
                    .clone(true).css('display', '');

                $clone.find('td:eq(0) input').val(this.COMP_CODE);
                $clone.find('td:eq(0) input').attr('id', 'id' + this.COMP_CODE);
                $clone.find('td:eq(1) label').attr('for', 'id' + this.COMP_CODE);
                $clone.find('td:eq(1) label').text(this.COMP_NAME);
                $clone.find('td:eq(2)').text(nf.format(this.COMP_PRICE));

                if (parseInt(this.MEASURE) >= 0) {
                    $clone.find('td:eq(3) img').attr('src', '/dist/images/ico_mnup.png');
                    $clone.find('td:eq(3) span').addClass('colred');
                    $clone.find('td:eq(4) em').addClass('colred');
                } else {
                    $clone.find('td:eq(3) img').attr('src', '/dist/images/ico_mndw.png');
                    $clone.find('td:eq(3) span').addClass('colblu');
                    $clone.find('td:eq(4) em').addClass('colblu');
                }
                $clone.find('td:eq(3) span').text(nf.format(this.MEASURE));
                $clone.find('td:eq(4) em').text(parseFloat(this.PER_MEASURE * 100).toFixed(2) + '%');

                $table.append($clone.clone(true));
            });
        };

        // 관심종목 팝업 버튼
        $('.btn_plss').on('click', function () {
            pop_show();
            pop.fadeIn(500);
        });

        // 관심종목 추가 버튼
        pop.find('.btn_blk').on('click', function () {
            let checked = $('input[name="favor"]:checked');
            mData.favor = [];       // 초기화(중요)
            $.each(checked, function (i) {
                mData.favor[i] = $(this).val();
            });

            $.ajax({
                async: false,
                dataType: 'json',
                type: 'post',
                url: '/main/post_favor',
                data: {
                    favor: mData.favor,
                },
                success: function (data, status, xhr) {
                    pop.fadeOut(500);
                }
            });

            ui.favor();
        });
    })();

    // 기본 DATA (1회만 처리)
    (function () {
        $.ajax({
            async: false,
            dataType: 'json',
            type: 'get',
            url: '/main/get_stockData',
            success: function (data, status, xhr) {
                mData = $.extend(true, mData, data);
                ui.init();
                console.log(mData);
            }
        });
    })();

    // 시스템 데이터와 비교하여 변경된 항목만 업데이트 처리
    let get_ajax = function (tmp) {
        // 뉴스 데이터 변경
        if (tmp.news_que !== eData.news_que) {
            console.log('뉴스 변경');
        }

        // 애널리스트 데이터 변경
        if (tmp.anal_que !== eData.anal_que) {
            console.log('애널 변경');
        }

        // 주식 데이터 변경
        if (tmp.stock_rownum !== eData.stock_rownum) {
            console.log('주식 변경');
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

                if (tmp.PG_LOCK !== null) {
                    get_ajax(tmp);
                }
            }
        }
    })();
});