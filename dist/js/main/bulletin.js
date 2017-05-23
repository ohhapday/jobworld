/**
 * Created by 서정석 on 2017/04/16.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
    'chartjs'
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
            this.stock();
            this.KOS();
            this.chart();
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
                    $li.addClass('up');
                } else {
                    $li.find('.pt2 img').attr('src', '/dist/images/ico_mndw.png');
                    $li.addClass('down');
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
            }, 5000);
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
    }

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
        if (tmp.stock_rownum !== eData.stock_rownum) {
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

