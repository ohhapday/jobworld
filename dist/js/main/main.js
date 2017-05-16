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
            let config1 = {
                type: 'line',
                data: {
                    datasets: [{
                        borderWidth: 3,
                        borderColor: "#ba0808",
                        backgroundColor: "rgba(248,241,255,1)",
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
        }
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

        // 그래프
        ajax.draw_chart('005930', $('#chart_01'));
        ajax.draw_chart('003490', $('#chart_02'));

        // 기업정보 상세보기
        (function () {
            $('.chart_mn').on('click', function () {
                let pop = $('.wrap_layerpop:eq(2)');
                let index = $('.chart_mn').index($(this));
                let COMP_CODE = (index === 0) ? '005930' : '003490';

                ajax.company_info(COMP_CODE);
                ajax.draw_chart(COMP_CODE, $('#chart_10'));

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

