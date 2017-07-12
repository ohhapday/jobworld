/**
 * Created by 서정석 on 2017/04/16.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
    'chartjs',
    '/dist/js/main/common.js',         // 공통 처리 js
], function ($, bootstrap, moment, a, session) {
    "use strict";

    let nf = new Intl.NumberFormat(["en-US"]);
    let chart = null;
    let eventSource;
    let stock_timer;

    let eData = {                           // 실시간 데이터
        PG_LOCK: null,                      // 프로그램 중지유무
        fund_STATUS: null,                  // 펀드 체험
        bond_STATUS: null,                  // 채권 체험
        stock_STATUS: null,                 // 주식 체험
        DATA_TYPE: null,                    // 데이터 변경 속도
        stock_rownum: null,                 // 주식 데이터 시작 rownum
        kos_rownum: null,                   // 주가지수 데이터 시작 rownum
        news_que: null,                     // 뉴스 변경 유무
        anal_que: null,                     // 애널리스트 변경 유무
    };

    let mData = {                           // 1회 로딩 데이터
        NEWS: null,
        ANAL: null,
        KOS: null,
        COMP: null,
    };

    let gubun = {
        '01': '제약',
        '02': '석유화학',
        '03': '식품/유통',
        '04': '건설/조선',
        '05': '자동차/항공',
        '06': 'IT/전자',
    };

    let ui = {
        init: function () {
            this.stock();
            this.KOS();
            this.chart();
            this.news();
            this.anal();
        },
        stock: function () {
            let $table = $('.box_tbllist table:eq(0) tbody');

            $table.find('tr:not(:eq(0))').hide(500);
            $table.find('tr:not(:eq(0))').remove();

            $.each(mData.stock, function (i) {
                let $clone = $table.find('tr:eq(0)').clone(true);
                let self = this;

                let stock = mData.stock.find(function (item) {
                    return item.COMP_CODE == self;
                });

                $clone.find('td:eq(0)').text(this.COMP_NAME);
                $clone.find('td:eq(1)').text(nf.format(this.COMP_PRICE));

                if (parseInt(this.MEASURE) >= 0) {
                    $clone.find('td:eq(2) img').attr('src', '/dist/images/ico_mnup.png');
                    $clone.find('td:eq(2) span').addClass('colred');
                    $clone.find('td:eq(3) em').addClass('colred');
                } else {
                    $clone.find('td:eq(2) img').attr('src', '/dist/images/ico_mndw.png');
                    $clone.find('td:eq(2) span').addClass('colblu');
                    $clone.find('td:eq(3) em').addClass('colblu');
                }
                $clone.find('td:eq(2) span').text(nf.format(this.MEASURE));
                $clone.find('td:eq(3) em').text(parseFloat(this.PER_MEASURE * 100).toFixed(2) + '%');

                $table.append($clone.clone(true));
            });
            $table.find('tr:not(:eq(0))').show(500);

            // 기존에 선택된 라인 선택
            /* if(selected_index > -1) {
             $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').eq(selected_index).addClass('on');
             }*/
        },
        KOS: function () {
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
        },
        chart: function () {
            // 주식 그래프 처리
            let count = 0;
            ajax.draw_chart2(mData.stock[count].COMP_CODE, $('#chart_11'));
            $('.pt_tit').text(mData.stock[count].COMP_NAME);

            clearInterval(stock_timer);
            stock_timer = window.setInterval(function () {
                if(count > 10) {
                    count = 0;
                }
                count = count + 1;
                ajax.draw_chart2(mData.stock[count].COMP_CODE, $('#chart_11'));
                $('.pt_tit').text(mData.stock[count].COMP_NAME);
            }, 10000);
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

            var originalLineDraw = Chart.controllers.line.prototype.draw;
            Chart.helpers.extend(Chart.controllers.line.prototype, {
                draw: function() {
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

            if (chart === null) {
                chart = new Chart(ctx1, config1);
            } else {
                chart.destroy();
                chart = new Chart(ctx1, config1);
            }
        },
        news: function () {
            let ul = $('.dtlist:eq(0)');
            let li = $('.dtlist:eq(0) li:eq(0)');

            $('.dtlist:eq(0) li:not(:eq(0))').remove();

            $.each(mData.NEWS, function () {
                let $clone = li.clone(true).css('display', '');
                let type = '[' + gubun[this.NEWS_TYPE] + '] ';

                // $clone.find('a').text(type + this.NEWS_HEAD);
                $clone.find('a').text(this.NEWS_HEAD);
                $clone.find('span').text(moment(this.INSERT_DATE).format('YYYY.MM.DD'));

                ul.append($clone.clone(true));
            });
        },
        anal: function () {
            let ul = $('.dtlist:eq(1)');
            let li = $('.dtlist:eq(1) li:eq(0)');

            $('.dtlist:eq(1) li:not(:eq(0))').remove();

            $.each(mData.ANAL, function () {
                let $clone = li.clone(true).css('display', '');
                let type = '[' + gubun[this.ANAL_TYPE] + '] ';

                // $clone.find('a').text(type + this.ANAL_HEAD);
                $clone.find('a').text(this.ANAL_HEAD);
                $clone.find('span').text(moment(this.INSERT_DATE).format('YYYY.MM.DD'));

                ul.append($clone);
            });
        },
        news_pop: function () {
            if (eData.news_que > 1) {
                let index = 0;
                let news = mData.NEWS[index];
                let pop = $('.wrap_layerpop:eq(1)');

                pop.find('.box_contpop h3').text(news.NEWS_HEAD);
                pop.find('.box_contpop p').html(news.NEWS_FILE.replace(/\n/gi, '<br>'));
                pop.find('.date em').text('잡월드 뉴스');
                pop.find('.date span:eq(1)').text(moment(news.INSERT_DATE).format('YYYY.MM.DD'));

                pop.fadeIn(500);
            }
        },
        anal_pop: function () {
            if (eData.anal_que > 1) {
                let index = 0;
                let news = mData.ANAL[index];
                let pop = $('.wrap_layerpop:eq(0)');

                pop.find('.box_contpop h3').text(news.ANAL_HEAD);
                pop.find('.box_contpop .con_txt').html(news.ANAL_FILE.replace(/\n/gi, '<br>'));
                pop.find('.date em').text('잡월드 애널리스트');
                pop.find('.date span:eq(1)').text(moment(news.INSERT_DATE).format('YYYY.MM.DD'));

                pop.fadeIn(500);
            }
        },
    };

    // 기본 Event
    (function () {
        // 뉴스 처리
        (function () {
            let li = $('.dtlist:eq(0) li');
            li.on('click', function () {
                let index = $('.dtlist:eq(0) li:not(:eq(0))').index($(this));
                let news = mData.NEWS[index];
                let pop = $('.wrap_layerpop:eq(1)');

                pop.find('.box_contpop h3').text(news.NEWS_HEAD);
                pop.find('.box_contpop p').html(news.NEWS_FILE.replace(/\n/gi, '<br>'));
                pop.find('.date em').text('잡월드 뉴스');
                pop.find('.date span:eq(1)').text(moment(news.INSERT_DATE).format('YYYY.MM.DD'));

                pop.fadeIn(500);
            });
        })();

        // 애널리스트 처리
        (function () {
            let li = $('.dtlist:eq(1) li');
            li.on('click', function () {
                let index = $('.dtlist:eq(1) li:not(:eq(0))').index($(this));
                let news = mData.ANAL[index];
                let pop = $('.wrap_layerpop:eq(0)');

                pop.find('.box_contpop h3').text(news.ANAL_HEAD);
                pop.find('.box_contpop .con_txt').html(news.ANAL_FILE.replace(/\n/gi, '<br>'));
                pop.find('.date em').text('잡월드 애널리스트');
                pop.find('.date span:eq(1)').text(moment(news.INSERT_DATE).format('YYYY.MM.DD'));

                pop.fadeIn(500);
            });
        })();
    })();

    let ajax = {
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
    };

    // 시스템 데이터와 비교하여 변경된 항목만 업데이트 처리
    let get_ajax = function (tmp) {
        // 주식 데이터 변경
        if (tmp.stock_rownum !== eData.stock_rownum || tmp.kos_rownum !== eData.kos_rownum) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_bulletinData',
                success: function (data, status, xhr) {
                    mData = $.extend(true, mData, data);
                    ui.init();
                }
            });
        }

        // 뉴스 데이터 변경
        if (tmp.news_que !== eData.news_que || tmp.anal_que !== eData.anal_que) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_bulletinData',
                success: function (data, status, xhr) {
                    mData = $.extend(true, mData, data);
                    ui.init();
                }
            });

            // 뉴스 팝업
            if (tmp.news_que !== eData.news_que) {
                ui.news_pop();
            }

            // 애널 팝업
            if (tmp.anal_que !== eData.anal_que) {
                ui.anal_pop();
            }
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

