/**
 * Created by 서정석 on 2017/04/24.
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
    '/dist/js/main/common.js',         // 공통 처리 js
    'chartjs',
], function ($, bootstrap, moment, a, session, common) {
    "use strict";

    let nf = new Intl.NumberFormat(["en-US"]);
    let user = common.user;
    let eventSource;

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
        buyStock: null,
    };

    // ui 생성 함수 모음
    let ui = {
        init: function () {
            // this.news();
            // this.anal();
            this.favor();
            this.cashFlow();
            this.buyStock();
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

            $table.find('tr:not(:eq(0))').hide(500);
            $table.find('tr:not(:eq(0))').remove();

            $.each(mData.favor, function (i) {
                let $clone = $table.find('tr:eq(0)').clone(true);
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
            $table.find('tr:not(:eq(0))').show(500);
        },
        cashFlow: function () {
            let li = $('.ar_btm_sel li');
            li.eq(0).find('span').text(nf.format(mData.cashFlow.cash1));
            li.eq(1).find('span').text(nf.format(mData.cashFlow.cash2));
            li.eq(2).find('span').text(nf.format(mData.cashFlow.cash3));
        },
        buyStock: function () {
            let tot_profit = 0;
            let $table = $('.box_sbbtm table:eq(1) tbody');

            $table.find('tr:not(:eq(0))').remove();

            $.each(mData.buyStock, function (i) {
                let $clone = $table.find('tr:eq(0)')
                    .clone(true).css('display', '');
                let self = this;

                let stock = mData.stock.find(function (item) {
                    return item.COMP_CODE == self.COMP_CODE;
                });
                let benifit = (stock.COMP_PRICE - this.EMPL_BUYPRICE) * this.EMPL_BALQTY;

                let profit = parseInt(benifit);
                tot_profit += profit;

                $clone.find('td:eq(0)').text(stock.COMP_NAME);
                $clone.find('td:eq(1)').text(nf.format(this.EMPL_BALQTY));
                $clone.find('td:eq(2)').text(nf.format(this.EMPL_BUYPRICE));
                $clone.find('td:eq(3)').text(nf.format(stock.COMP_PRICE));
                $clone.find('td:eq(4)').text(nf.format(profit));

                if (benifit > 0) {
                    $clone.find('td:eq(4)').addClass('colred');
                } else {
                    $clone.find('td:eq(4)').addClass('colblu');
                }

                $table.append($clone.clone(true));
            });

            $('.box_sbbtm table:eq(1) tfoot td').text(nf.format(tot_profit));
        },
        drawchart: function (data, object) {
            let config1 = {
                type: 'line',
                data: {
                    datasets: [{
                        borderWidth: 3,
                        borderColor: "#ba0808",
//                        backgroundColor: "rgba(248,241,255,1)",
                        pointBorderColor: "#ba0808",
                        pointBorderWidth: 1,
                        pointRadius: 4,
                        fill: false,
                        lineTension: 0.1
                    }]
                },
                options: {
                    legend: {
                        position: null,
                    },
                    title: {
                        display: false,
                        text: '금리변동률'
                    },
                    tooltips: {
                        mode: 'label',
                        callbacks: {
                            /*label: function(tooltipItem, data) {
                             return '' + tooltipItem.yLabel.toFixed(0).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                             }*/
                        }
                    },
                    scales: {
                        xAxes: [{
                            display: true,
                            scaleLabel: {
                                labelString: '일'
                            }
                        }],
                        yAxes: [{
                            display: true,
                            scaleLabel: {
                                display: false,
                                labelString: '금액',
                            },
                            ticks: {
                                /*userCallback: function(value, index, values) {
                                 return '' + value.toFixed(0).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                                 }*/
                            }
                        }]
                    }
                }
            };
            // 매출
            config1.data.labels = data.labels;
            config1.data.datasets[0].data = data.sales;

            var ctx1 = object.get(0).getContext("2d");
            let chart = new Chart(ctx1, config1);
        },
        company_info: function (data) {
            let table = $('.wrap_layerpop:eq(2) table');

            table.find('td:eq(0)').text(data.COMP_NAME);
            table.find('td:eq(1)').text(data.COM_01);
            table.find('td:eq(2)').text(data.COM_02);
            table.find('td:eq(3)').text(data.COMP_CODE);
            table.find('td:eq(4)').text(data.COM_03);
            table.find('td:eq(5)').text(data.COM_04);
            table.find('td:eq(6)').text(data.COM_05);
            table.find('td:eq(7)').text(data.COM_06);
            table.find('td:eq(8)').text(data.COM_07);
            table.find('td:eq(9)').text(data.COM_08);
            table.find('td:eq(10)').text(data.COM_09);
            table.find('td:eq(11)').text(data.COM_10);
            table.find('td:eq(12)').text(data.COM_11);
            table.find('td:eq(13)').text(data.COM_12);
            table.find('td:eq(14)').text(data.COM_13);
        },
        stock_result: function () {
            let pop = $('.wrap_layerpop:eq(3)');
            let data = ajax.stock_result();
            let $table = pop.find('.sizhg table');
            let tot_EMPL_SELPRICE = 0, tot_benifit = 0;

            if (pop.css('display') !== 'none') {
                return;
            }

            pop.find('.box_titpop2 span').text(user.name);
            pop.find('table:eq(0) td:eq(0)').text(nf.format(data.EMPL_CASH) + ' 원');
            pop.find('table:eq(0) td:eq(1)').text(nf.format(data.stock_CASH) + ' 원');

            $.each(data.history, function () {
                let $clone = $table.find('tbody tr:eq(0)')
                    .clone(true).css('display', '');
                let self = this;
                let aa;

                let stock = mData.stock.find(function (item) {
                    return item.COMP_CODE == self.COMP_CODE;
                });

                $clone.find('td:eq(0)').text(stock.COMP_NAME);
                $clone.find('td:eq(1)').text(nf.format(this.EMPL_SELQTY));
                $clone.find('td:eq(2)').text(nf.format(this.EMPL_SELPRICE));
                $clone.find('td:eq(3)').text(nf.format(this.EMPL_PRICE));
                aa = (this.EMPL_SELPRICE - this.EMPL_PRICE) * this.EMPL_SELQTY;
                $clone.find('td:eq(4)').text(nf.format(aa));

                tot_EMPL_SELPRICE += (this.EMPL_SELPRICE * this.EMPL_SELQTY);
                tot_benifit += aa;

                $table.append($clone.clone(true));
            });

            pop.find('table:eq(1) td:eq(0)').text(nf.format(tot_EMPL_SELPRICE) + ' 원');
            let per = ((data.stock_CASH - data.EMPL_CASH) / data.EMPL_CASH * 100).toFixed(2);
            pop.find('table:eq(1) td:eq(1)').text(nf.format(per) + ' %');

            $('.btn_close').remove();
            pop.fadeIn(500);
        },
    };

    let ajax = {
        draw_chart: function (COMP_CODE, object) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                data: {
                    COMP_CODE: COMP_CODE,
                },
                url: '/main/get_stock_chart',
                success: function (data, status, xhr) {
                    ui.drawchart(data, object);
                }
            });
        },
        company_info: function (COMP_CODE) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                data: {
                    COMP_CODE: COMP_CODE,
                },
                url: '/main/get_company_info',
                success: function (data, status, xhr) {
                    ui.company_info(data);
                }
            });
        },
        stock_result: function () {
            let returnData;
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                data: {
                    EMPL_KEY: user.key,
                },
                url: '/main/get_stock_result',
                success: function (data, status, xhr) {
                    returnData = data;
                }
            });
            return returnData;
        },
    };

    // 기본 event (1회만 처리)
    (function () {
        // 실시간 뉴스 탭 클릭 처리
        $('.bx_tablist:eq(0) .tabmenu').on('click', function () {
            $('.bx_tablist:eq(0) .tabmenu').toggleClass('on');
            $('.bx_tablist:eq(0) .btmtbl').toggle();
        });

        // 관심종목 클릭 처리 (매수)
        $('.box_tbllist:eq(0) tbody tr').on('click', function () {
            $('.bx_tablist:eq(0) .tabmenu:eq(0)').addClass('on');
            $('.bx_tablist:eq(0) .tabmenu:eq(1)').removeClass('on');
            $('.bx_tablist:eq(0) .btmtbl:eq(0)').removeClass('off').addClass('on');
            $('.bx_tablist:eq(0) .btmtbl:eq(1)').removeClass('on').addClass('off');

            $('.box_tbllist tbody tr').removeClass('on');
            $(this).addClass('on');

            $('.bx_tablist:eq(0) .btmtbl:eq(0) span').text($(this).find('.align-l').text());
            $('.bx_tablist:eq(0) .btmtbl:eq(0) input[name="ea"]').val(0);
            $('.bx_tablist:eq(0) .btmtbl:eq(0) .numchk:eq(1)')
                .text($(this).find('td:eq(1)').text());
            $('.bx_tablist:eq(0) .btmtbl:eq(0) input[name="ea"]').focus();
        });

        // 관심종목 기업정보 (매수)
        $('.box_tbllist:eq(0) tbody tr').on('dblclick', function () {
            let pop = $('.wrap_layerpop:eq(2)');
            let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($(this));
            let COMP_CODE = mData.favor[index];

            ajax.company_info(mData.favor[index]);
            ajax.draw_chart(COMP_CODE, $('#chart_10'));

            pop.fadeIn(500);
        });

        // 보유현황 종목 클릭 처리 (매도)
        $('.box_tbllist:eq(1) tbody tr').on('click', function () {
            let index = $('.box_tbllist:eq(1) tbody tr:not(:eq(0))').index($(this));

            let stock = mData.stock.find(function (item) {
                return item.COMP_CODE == mData.buyStock[index].COMP_CODE;
            });

            $('.bx_tablist:eq(0) .tabmenu:eq(1)').addClass('on');
            $('.bx_tablist:eq(0) .tabmenu:eq(0)').removeClass('on');
            $('.bx_tablist:eq(0) .btmtbl:eq(1)').removeClass('off').addClass('on');
            $('.bx_tablist:eq(0) .btmtbl:eq(0)').removeClass('on').addClass('off');

            $('.box_tbllist tbody tr').removeClass('on');
            $(this).addClass('on');

            $('.bx_tablist:eq(0) .btmtbl:eq(1) span').text($(this).find('.align-l').text());
            $('.bx_tablist:eq(0) .btmtbl:eq(1) input[name="ea"]').val(mData.buyStock[index].EMPL_BALQTY);
            $('.bx_tablist:eq(0) .btmtbl:eq(1) input[name="ea"]').attr('max', mData.buyStock[index].EMPL_BALQTY);
            $('.bx_tablist:eq(0) .btmtbl:eq(1) input[name="ea"]').data('BUY_KEY', mData.buyStock[index].BUY_KEY);
            $('.bx_tablist:eq(0) .btmtbl:eq(1) .numchk:eq(1)')
                .text(nf.format(mData.buyStock[index].EMPL_BALQTY * stock.COMP_PRICE));
            $('.bx_tablist:eq(0) .btmtbl:eq(1) input[name="ea"]').focus();
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
            let index = null, stock, total;
            let tr = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))');
            $.each(tr, function () {
                if ($(this).hasClass('on')) {
                    index = tr.index($(this));
                }
            });

            if (index !== null) {
                stock = mData.stock.find(function (item) {
                    return item.COMP_CODE == mData.favor[index];
                });

                total = stock.COMP_PRICE * $(this).val();
                $(this).closest('li').next().find('.numchk').text(nf.format(total));
            }
        });

        // 매도 금액 변경
        $('.sbright2 input[name="ea"]:eq(1)').on('change', function () {
            let index = null, stock, total;
            let tr = $('.box_tbllist:eq(1) tbody tr:not(:eq(0))');
            $.each(tr, function () {
                if ($(this).hasClass('on')) {
                    index = tr.index($(this));
                }
            });

            if (index !== null) {
                stock = mData.stock.find(function (item) {
                    return item.COMP_CODE == mData.buyStock[index].COMP_CODE;
                });

                total = stock.COMP_PRICE * $(this).val();
                $(this).closest('li').next().find('.numchk').text(nf.format(total));
            }
        });

        // 결제 버튼
        $('.btn_bview').on('click', function () {
            let index = null, stock, buyTotal;
            let aa = ($('.sbright2 .btmtbl:eq(0)').hasClass('on')) ? 0 : 1;
            let box = $('.sbright2 .btmtbl:eq(' + aa + ')');
            let ea = parseInt(box.find('input[name=ea]').val());
            let tr = $('.box_tbllist:eq(' + aa + ') tbody tr:not(:eq(0))');

            if (ea == 0) {
                alert('수량을 선택해 주세요.');
                return;
            }

            $.each(tr, function () {
                if ($(this).hasClass('on')) {
                    index = tr.index($(this));
                }
            });

            // 매입
            if (aa === 0) {
                if (index !== null) {
                    stock = mData.stock.find(function (item) {
                        return item.COMP_CODE == mData.favor[index];
                    });

                    buyTotal = stock.COMP_PRICE * ea;

                    // 잔고 비교
                    if (buyTotal > mData.cashFlow.cash3) {
                        alert('잔고가 부족합니다.');
                        return;
                    }

                    $.ajax({
                        async: false,
                        dataType: 'json',
                        type: 'post',
                        url: '/main/post_buyStock',
                        data: {
                            buyStock: {
                                COMP_CODE: stock.COMP_CODE,
                                EMPL_BUYQTY: ea,
                            }
                        },
                        success: function (data, status, xhr) {
                            mData.buyStock = data.buyStock;
                            mData.cashFlow = data.cashFlow;

                            ui.buyStock();
                            ui.cashFlow();

                            $('.bx_tablist:eq(1) .btmtbl:eq(0) span').text('');
                            $('.bx_tablist:eq(1) .btmtbl:eq(0) input[name="ea"]').val(0);
                        }
                    });
                }
            }

            // 매수
            if (aa === 1) {
                let BUY_KEY = $('.bx_tablist:eq(0) .btmtbl:eq(1) input[name="ea"]').data('BUY_KEY');

                if (index !== null) {
                    stock = mData.stock.find(function (item) {
                        return item.COMP_CODE == mData.buyStock[index].COMP_CODE;
                    });

                    $.ajax({
                        async: false,
                        dataType: 'json',
                        type: 'post',
                        url: '/main/post_sellStock',
                        data: {
                            sellStock: {
                                BUY_KEY: BUY_KEY,
                                COMP_CODE: stock.COMP_CODE,
                                EMPL_SELQTY: ea,
                            }
                        },
                        success: function (data, status, xhr) {
                            mData.buyStock = data.buyStock;
                            mData.cashFlow = data.cashFlow;

                            ui.buyStock();
                            ui.cashFlow();

                            $('.bx_tablist:eq(1) .btmtbl:eq(0) span').text('');
                            $('.bx_tablist:eq(1) .btmtbl:eq(0) input[name="ea"]').val(0);
                        }
                    });
                }
            }
        });

        // 공시정보 클릭
        $('.btn_adgre').on('click', function () {
            let pop = $('.wrap_layerpop:eq(3)');
            let index = $('.box_tbllist:eq(0) table tbody tr:not(:eq(0))')
                .index($('.box_tbllist:eq(0) table tbody tr.on'));

            let COMP_CODE = mData.favor[index];

            ajax.company_info(COMP_CODE);
            pop.fadeIn(500);
        });

        // 주가그래프
        $('.btn_adgre2').on('click', function () {
            let index = $('.box_tbllist:eq(0) table tbody tr:not(:eq(0))')
                .index($('.box_tbllist:eq(0) table tbody tr.on'));

            if (index < 0) {
                alert('관심종목을 선택해 주세요.')
                return false;
            }

            ajax.draw_chart();
            $('.wrap_layerpop:eq(2)').fadeIn(500);
        });

        // 인쇄
        $('.btn_print').on('click', function () {
            print();
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

        // 관심종목 기업정보 처리
        pop.find('.ovtbl tbody tr').on('dblclick', function () {
            let pop2 = $('.wrap_layerpop:eq(2)');
            let index = $('.box_tbllist:eq(2) tbody tr:not(:eq(0))').index($(this));
            let COMP_CODE = mData.stock[index].COMP_CODE;

            ajax.company_info(COMP_CODE);
            ajax.draw_chart(COMP_CODE, $('#chart_10'));

            pop2.fadeIn(500);
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
        // 주식 데이터 변경
        if (tmp.stock_rownum !== eData.stock_rownum) {
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

        if (eData.PG_LOCK == "2") {
            ui.stock_result();
            // eventSource.close();
        }

        if (eData.PG_LOCK == "3") {
            $(location).attr('href', '/main');
        }
    };

    // eventSource
    (function () {
        // 시스템 데이터 바인드
        eventSource = new EventSource('/login/sse_get_system');
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