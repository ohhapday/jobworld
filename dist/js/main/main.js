/**
 * Created by 서정석 on 2017/04/16.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
    '/dist/js/main/common.js',         // 공통 처리 js
    '/dist/js/main/survey.js',         // 설문 조사 js
    'chartjs'
], function ($, bootstrap, moment, a, session) {
    "use strict";

    let nf = new Intl.NumberFormat(["en-US"]);
    let chart = null, chart_mm = null;

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
        KOS: null,
        COMP: null,
    };

    let ui = {
        init: function () {
            console.log(eData);
        },
        drawchart: function (data, object) {
            let suggestedMin, suggestedMax;

            suggestedMin = Math.min.apply(null, data.sales) - 1000;
            suggestedMax = Math.max.apply(null, data.sales) + 1000;

            let config1 = {
                type: 'line',
                data: {
                    datasets: [{
                        borderWidth: 3,
                        borderColor: "#ba0808",
                        backgroundColor: "rgba(255,198,198,0.7)",
                        pointBorderColor: "#ba0808",
                        pointBorderWidth: 1,
                        pointRadius: 4,
                        fill: true,
                        lineTension: 0.2
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
                            },
                        }],
                        yAxes: [{
                            display: true,
                            scaleLabel: {
                                display: false,
                                labelString: '금액',
                            },
                            ticks: {
                                suggestedMin: suggestedMin,
                                suggestedMax: suggestedMax,
                                userCallback: function (value, index, values) {
                                    return '' + value.toFixed(0).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                                }
                            }
                        }]
                    }
                }
            };
            // 매출
            config1.data.labels = data.labels;
            config1.data.datasets[0].data = data.sales;

            var ctx1 = object.get(0).getContext("2d");

            if (chart === null) {
                chart = new Chart(ctx1, config1);
            } else {
                chart.destroy();
                chart = new Chart(ctx1, config1);
            }
        },
        drawchart_mm: function (data, object) {
            let suggestedMin, suggestedMax;

            suggestedMin = Math.min.apply(null, data.sales) - 1000;
            suggestedMax = Math.max.apply(null, data.sales) + 1000;

            let config1 = {
                type: 'line',
                data: {
                    datasets: [{
                        borderWidth: 3,
                        borderColor: "#ba0808",
                        backgroundColor: "rgba(255,198,198,0.7)",
                        pointBorderColor: "#ba0808",
                        pointBorderWidth: 1,
                        pointRadius: 4,
                        fill: true,
                        lineTension: 0.2
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
                            },
                        }],
                        yAxes: [{
                            display: true,
                            scaleLabel: {
                                display: false,
                                labelString: '금액',
                            },
                            ticks: {
                                suggestedMin: suggestedMin,
                                suggestedMax: suggestedMax,
                                userCallback: function (value, index, values) {
                                    return '' + value.toFixed(0).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                                }
                            }
                        }]
                    }
                }
            };
            // 매출
            config1.data.labels = data.labels;
            config1.data.datasets[0].data = data.sales;

            var ctx1 = object.get(0).getContext("2d");

            if (chart_mm === null) {
                chart_mm = new Chart(ctx1, config1);
            } else {
                chart_mm.destroy();
                chart_mm = new Chart(ctx1, config1);
            }
        },
        drawchart2: function (data, object) {
            let suggestedMin, suggestedMax;

            suggestedMin = Math.min.apply(null, data.sales) - 1000;
            suggestedMax = Math.max.apply(null, data.sales) + 1000;

            let config1 = {
                type: 'line',
                data: {
                    datasets: [{
                        borderWidth: 3,
                        borderColor: "#ba0808",
                        backgroundColor: "rgba(255,198,198,0.7)",
                        pointBorderColor: "#ba0808",
                        pointBorderWidth: 1,
                        pointRadius: 4,
                        fill: true,
                        lineTension: 0.2
                    }],
                    lineAtIndex: 12,
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
                        enabled: false,
                        mode: 'label',
                    },
                    scales: {
                        xAxes: [{
                            display: true,
                            scaleLabel: {
                                labelString: '일'
                            },
                        }],
                        yAxes: [{
                            display: true,
                            scaleLabel: {
                                display: false,
                                labelString: '금액',
                            },
                            ticks: {
                                suggestedMin: suggestedMin,
                                suggestedMax: suggestedMax,
                                userCallback: function (value, index, values) {
                                    return '' + value.toFixed(0).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                                }
                            }
                        }]
                    }
                }
            };
            // 매출
            config1.data.labels = data.labels;
            config1.data.datasets[0].data = data.sales;

            var ctx1 = object.get(0).getContext("2d");

            var originalLineDraw = Chart.controllers.line.prototype.draw;
            Chart.helpers.extend(Chart.controllers.line.prototype, {
                draw: function () {
                    originalLineDraw.apply(this, arguments);

                    var chart = this.chart;
                    var ctx = chart.chart.ctx;

                    var index = chart.config.data.lineAtIndex;
                    if (index) {
                        var xaxis = chart.scales['x-axis-0'];
                        var yaxis = chart.scales['y-axis-0'];

                        ctx.save();
                        ctx.beginPath();
                        ctx.moveTo(xaxis.getPixelForValue(undefined, index), yaxis.top);
                        ctx.strokeStyle = '#ff0000';
                        ctx.lineTo(xaxis.getPixelForValue(undefined, index), yaxis.bottom);
                        ctx.stroke();
                        ctx.restore();
                    }
                }
            });

            let chart = new Chart(ctx1, config1);
        },
        company_info: function (data) {
            let table = $('.wrap_layerpop:eq(4)');

            table.find('.box_titpop .my_h4').text(data.COMP_NAME);
            table.find('.box_titpop .my_h5').text(data.SECT_NAME);
            table.find('.box_titpop .my_h5_02').text(data.COMP_CODE);

            table.find('.bx_innm .clfix:eq(0) span').text(data.COMP_CODE);
            table.find('.bx_innm .clfix:eq(1) span').text(nf.format(data.STOCK.max));
            table.find('.bx_innm .clfix:eq(2) span').text(nf.format(data.STOCK.min));
            table.find('.bx_innm .clfix:eq(3) span').text(data.CREDIT);

            table.find('.bx_innm1 li:eq(0) a').text(data.NEWS_01);
            table.find('.bx_innm1 li:eq(1) a').text(data.NEWS_02);
            table.find('.bx_innm1 li:eq(2) a').text(data.NEWS_03);
            table.find('.bx_innm1 li:eq(3) a').text(data.NEWS_04);
            table.find('.bx_innm1 li:eq(4) a').text(data.NEWS_05);

            let STOCK = mData.STOCK_POP.find(function (item) {
                return item.COMP_CODE == data.COMP_CODE;
            });

            if (parseInt(STOCK.MEASURE) >= 0) {
                table.find('.lftpols1 .numkk img').attr('src', '/dist/images/ico_mnup.png');
                table.find('.lftpols1 .numkk span').addClass('colred');
                table.find('.lftpols1 em').addClass('colred');
            } else {
                table.find('.lftpols1 .numkk img').attr('src', '/dist/images/ico_mndw.png');
                table.find('.lftpols1 .numkk span').addClass('colblu');
                table.find('.lftpols1 .numkk em').addClass('colblu');
            }

            table.find('.lftpols1 .numkk strong').text(nf.format(STOCK.COMP_PRICE));
            table.find('.lftpols1 .numkk span:eq(1)').text(nf.format(STOCK.MEASURE));
            table.find('.lftpols1 em').text(parseFloat(STOCK.PER_MEASURE * 100).toFixed(2) + '%');
        },
        result_pop: function () {
            let data = ajax.result_pop();
            let pop = $('.wrap_layerpop:eq(3)');

            $.each(data, function (i) {
                let $clone = pop.find('tbody tr:eq(0)')
                    .clone(true).css('display', '');

                $clone.find('td:eq(0)').text(i + 1);
                $clone.find('td:eq(1)').text(this.EMPL_NAME);
                pop.find('tbody').append($clone);
            });
        },
    }

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
        draw_chart_mm: function (COMP_CODE, object) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                data: {
                    COMP_CODE: COMP_CODE,
                },
                url: '/main/get_stock_chart_mm',
                success: function (data, status, xhr) {
                    ui.drawchart_mm(data, object);
                }
            });
        },
        draw_chart2: function (COMP_CODE, object) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                data: {
                    COMP_CODE: COMP_CODE,
                },
                url: '/main/get_stock_chart',
                success: function (data, status, xhr) {
                    ui.drawchart2(data, object);
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
        result_pop: function () {
            let returnData;
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_user_info',
                success: function (data, status, xhr) {
                    returnData = data;
                    console.log(data);
                }
            });
            return returnData;
        },
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

                    console.log(mData);
                }
            });
        })();
    })();

    // 기본 UI (1회만 처리)
    (function () {
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
                pop.find('.box_contpop p').html(mData.NEWS[index].NEWS_FILE.replace(/\n/gi, '<br>'));
                pop.find('.date em').text('잡월드 뉴스');
                pop.find('.date span:eq(1)').text(moment().format('YYYY.MM.DD'));

                pop.fadeIn(500);
            });
        })();

        // 종합지수 처리
        (function () {
            $.each(mData.KOS, function (i) {
                let $li = $('.pt_list li').eq(i);
                $li.find('.pt1').text(this.NOW_RATE);

                if (this.MEASURE > 0) {
                    $li.find('.pt2 img').attr('src', '/dist/images/ico_mnup.png');
                    $li.addClass('up');
                } else {
                    $li.find('.pt2 img').attr('src', '/dist/images/ico_mndw.png');
                    $li.addClass('down');
                }

                $li.find('.pt2 span').text(this.MEASURE);
                $li.find('.per').text(this.PER_MEASURE + '%');
            });
        })();

        // 종목주가 처리
        (function () {
            $.each(mData.COMP, function (i) {
                let $li = $('.area_cpm li').eq(i);
                $li.find('strong').text(this.COMP_NAME);
                $li.find('span').text(nf.format(this.COMP_PRICE));
                $li.find('a').data('COMP_CODE', this.COMP_CODE);
            });

            $('.tit_bt:eq(0) a').data('COMP_CODE', '005930');
            $('.tit_bt:eq(1) a').data('COMP_CODE', '003490');
        })();

        // 애널리스트 처리
        (function () {
            $('.box_mnrtg2 li').on('click', function () {
                let index = $('.box_mnrtg2 li').index(this);
                let pop = $('.wrap_layerpop:eq(6)');

                let ANAL = mData.ANAL.find(function (item) {
                    return item.ANAL_TYPE == index + 1;
                });

                pop.find('img').attr('src', '/dist/images/analist/' + ANAL.IMG_FILE);


                /* 2017/07/22 재수정

                // pop.find('box_titpop h2').text('애널리스트 보고서');
                pop.find('.news_tit').text(ANAL.ANAL_HEAD);
                pop.find('.box_contpop .con_txt').html(ANAL.ANAL_FILE.replace(/\n/gi, '<br>'));
                /*
                pop.find('.date em').text('잡월드 애널리스트');
                pop.find('.date span:eq(1)').text(moment().format('YYYY.MM.DD'));
                */

                pop.fadeIn(500);
            });

            // 애널리스트 이미지 닫기
            $('.wrap_layerpop:eq(6)').find('img').on('click', function () {
                $('.wrap_layerpop:eq(6)').fadeOut(500);
            });
        })();


        // 그래프
        ajax.draw_chart2('005930', $('#chart_01'));
        ajax.draw_chart2('003490', $('#chart_02'));

        // 기업정보 상세보기
        /* -삭제 요청 (170623)
        (function () {
            $('.chart_mn a, .area_cpm a').on('click', function () {
                let pop = $('.wrap_layerpop:eq(4)');
                let index = $('.chart_mn a').index($(this));
                let COMP_CODE = $(this).data('COMP_CODE');

                ajax.company_info(COMP_CODE);
                ajax.draw_chart(COMP_CODE, $('#chart_11'));
                ajax.draw_chart_mm(COMP_CODE, $('#chart_12'));

                pop.fadeIn(500);
            });
        })();
        */
    })();

    // 시스템 데이터와 비교하여 변경된 항목만 업데이트 처리
    let get_ajax = function (tmp) {
        // 주식 데이터 변경
        if (tmp.stock_rownum !== eData.stock_rownum || tmp.kos_rownum !== eData.kos_rownum) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_mData',
                success: function (data, status, xhr) {
                    mData = $.extend(true, mData, data);

                    ajax.draw_chart2('005930', $('#chart_01'));
                    ajax.draw_chart2('003490', $('#chart_02'));
                }
            });
        }

        // 종합지수 변경
        if (eData.kos_rownum !== tmp.kos_rownum) {

            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_mData',
                success: function (data, status, xhr) {
                    mData = data;
                }
            });

            $.each(mData.KOS, function (i) {
                let $li = $('.pt_list li').eq(i);
                $li.find('.pt1').text(this.NOW_RATE);

                if (this.MEASURE > 0) {
                    $li.find('.pt2 img').attr('src', '/dist/images/ico_mnup.png');
                    $li.removeClass('down').addClass('up');
                } else {
                    $li.find('.pt2 img').attr('src', '/dist/images/ico_mndw.png');
                    $li.removeClass('up').addClass('down');
                }

                $li.find('.pt2 span').text(this.MEASURE);
                $li.find('.per').text(this.PER_MEASURE + '%');
            });
        }
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
            $('#gnb li:eq(1) a').attr('href', '/main/fund2');
        } else {
            $('#gnb li:eq(1)').removeClass('on');
            $('#gnb li:eq(1) a').attr('href', '#');
        }

        if (eData.bond_STATUS == '1') {
            $('#gnb li:eq(3)').addClass('on');
            $('#gnb li:eq(3) a').attr('href', '/main/bond');
        } else {
            $('#gnb li:eq(3)').removeClass('on');
            $('#gnb li:eq(3) a').attr('href', '#');
        }

        if (eData.stock_STATUS == '1') {
            $('#gnb li:eq(2)').addClass('on');
            $('#gnb li:eq(2) a').attr('href', '/main/stock');
        } else {
            $('#gnb li:eq(2)').removeClass('on');
            $('#gnb li:eq(2) a').attr('href', '#');
        }

        if (eData.result_STATUS == '1') {
            $('#gnb li:eq(4)').addClass('on');

            $('#gnb li:eq(4)').on('click', function () {
                ui.result_pop();
                $('.wrap_layerpop:eq(3)').fadeIn(500);
            });
        } else {
            $('#gnb li:eq(4)').removeClass('on');
            $('#gnb li:eq(4)').off('click');
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

                if (eData.PG_LOCK == '1' && eData.login_status == null) {
                    $(location).attr('href', '/login/main');
                }

                if (tmp.PG_LOCK !== '0') {
                    get_ajax(tmp);
                }
            }
        }
    })();

});

