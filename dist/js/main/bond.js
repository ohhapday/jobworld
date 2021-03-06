/**
 * Created by 서정석 on 2017/04/24.
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
    '/dist/js/main/common.js',         // 공통 처리 js
    'chartjs'
], function ($, bootstrap, moment, a, session, common) {
    "use strict";

    let nf = new Intl.NumberFormat(["en-US"]);
    let user = common.user;
    let chart = null;

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
        BOND: null,
    };

    let ui = {
        index: function () {
            let index = $('.box_tbllist:eq(0) table tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) table tbody tr.on'));
            return index;
        },
        init: function () {
            this.bond();
            this.cashFlow();
            this.buyBondList();
            this.buyBond_clear();

            console.log(mData);
            this.gold_chart(mData.gold_chart, $('#chart_11'));
        },
        bond: function () {
            let $table = $('.box_tbllist:eq(0) table tbody');

            $table.find('tr:not(:eq(0))').hide(500);
            $table.find('tr:not(:eq(0))').remove();

            $.each(mData.BOND, function (i) {
                let $clone = $table.find('tr:eq(0)').clone(true);
                let self = this;

                $clone.find('td:eq(0)').text(this.BOND_NAME);
                $clone.find('td:eq(0)').attr('title', this.BOND_NAME);
                $clone.find('td:eq(1)').text(nf.format(this.BOND_TOT));
                $clone.find('td:eq(2)').text(nf.format(this.BOND_NOWPRICE));
                $clone.find('td:eq(3)').text(this.BOND_PER);
                $clone.find('td:eq(4)').text(this.BOND_TYPE);

                $table.append($clone.clone(true));
            });
            $table.find('tr:not(:eq(0))').show(500);
        },
        buyBond: function (index) {
            let bond = mData.BOND[index];

            $('.ar_btm_dt .dttit span').text(bond.BOND_NAME);

            $('.ar_btm_dt li:eq(0) span').text(nf.format(bond.BOND_NOWPRICE));
            $('.ar_btm_dt li:eq(1) input').val(100);
            $('.ar_btm_dt li:eq(2) span').text(nf.format(bond.BOND_NOWPRICE * 100));
            $('.ar_btm_dt li:eq(3) span').text(bond.BOND_CLDATE);
            $('.ar_btm_dt li:eq(4) span').text(bond.BOND_INDATE);
            $('.ar_btm_dt li:eq(5) span').text(nf.format(bond.BOND_NOWPRICE * 100 * bond.BOND_PER / 100));
            $('.ar_btm_dt li:last span').text(bond.BOND_PER + ' %');

            $('.ar_btm_dt li:eq(1) input').on('change', function () {
                let buyPrice = bond.BOND_NOWPRICE * $(this).val();
                $('.ar_btm_dt li:eq(2) span').text(nf.format(buyPrice));
                $('.ar_btm_dt li:eq(5) span').text(nf.format(buyPrice * bond.BOND_PER / 100));
            });
        },
        buyBond_clear: function () {
            $('.ar_btm_dt .dttit span').text('');

            $('.ar_btm_dt li:eq(0) span').text('');
            $('.ar_btm_dt li:eq(1) input').val(100);
            $('.ar_btm_dt li:eq(2) span').text('');
            $('.ar_btm_dt li:eq(3) span').text('');
            $('.ar_btm_dt li:eq(4) span').text('');
            $('.ar_btm_dt li:eq(5) span').text('');
            $('.ar_btm_dt li:last span').text('');
        },
        cashFlow: function () {
            let li = $('.ar_btm_sel li');
            // li.eq(0).find('span').text(nf.format(mData.cashFlow.cash1));
            li.eq(0).find('span').text(nf.format(mData.cashFlow.cash2));
            li.eq(1).find('span').text(nf.format(mData.cashFlow.cash3));
        },
        buyBondList: function () {
            let $table = $('.ar_btm_bx table tbody');

            $table.find('tr:not(:eq(0))').hide(500);
            $table.find('tr:not(:eq(0))').remove();

            $.each(mData.buyBond, function () {
                let $clone = $table.find('tr:eq(0)').clone(true);
                let self = this;
                let total = parseInt(this.BOND_DANGA) * parseInt(this.BOND_BUYQTY);
                let MM_txt;

                let bond = mData.BOND.find(function (item) {
                    return item.BOND_KEY === self.BOND_KEY;
                });

                (this.BOND_MM == '48') ? MM_txt = '만기' : MM_txt = this.BOND_MM/4;

                $clone.find('td:eq(0)').text(bond.BOND_NAME);
                $clone.find('td:eq(1)').text(this.BOND_BUYQTY);
                $clone.find('td:eq(2)').text(MM_txt);
                $clone.find('td:eq(3)').text(nf.format(total));
                $clone.find('td:eq(4)').text(nf.format(this.BOND_BUYBENIFIT));

                $table.append($clone.clone(true).fadeIn(500));
            });
        },
        credit: function () {
            let $table = $('.btmtbl:eq(1) table tbody');
            let index = this.index();

            let credit = mData.credit.find(function (item) {
                return item.BOND_KEY === mData.BOND[index].BOND_KEY;
            });

            $table.find('td:eq(0)').text(credit.CREDIT_RANK);
            $table.find('td:eq(1)').text(credit.CREDIT_MEMO);
        },
        benifit: function () {
            let pop = $('.wrap_layerpop:eq(1)');
            let tot_benifit, tot_buy_cost = 0, tot_price = 0;

            $('.box_titpop2 span').text(user.name);
            $('.box_titpop2 div:eq(0)').text(moment().format('YYYY년 MM월 DD일'));

            $.each(mData.buyBond, function (i) {
                let self = this;
                let bond = mData.BOND.find(function (item) {
                    return item.BOND_KEY === self.BOND_KEY;
                });

                pop.find('.pb_view:eq(' + i + ') .pb_tit span').text(bond.BOND_NAME);

                pop.find('.pb_view:eq(' + i + ') td:eq(0)').text(this.BOND_BUYDATE);
                pop.find('.pb_view:eq(' + i + ') td:eq(1)').text(nf.format((this.BOND_BUYBENIFIT / this.BOND_BUYPAY * 100).toFixed(2)) + '%');
                pop.find('.pb_view:eq(' + i + ') td:eq(2)').text(nf.format(this.BOND_BUYPAY));
                pop.find('.pb_view:eq(' + i + ') td:eq(3)').text(nf.format(this.BOND_BUYBENIFIT));

                tot_price += parseInt(this.BOND_BUYBENIFIT);
                tot_buy_cost += parseInt(this.BOND_BUYPAY);
            });

            pop.find('.box_btcc .fl span').text(nf.format((tot_price / tot_buy_cost * 100).toFixed(2)) + '%');
            pop.find('.box_btcc .fr span').text(nf.format(tot_price));
        },
        drawchart: function (data, object) {
            let suggestedMin, suggestedMax;

            suggestedMin = Math.min.apply(null, data.sales) - 50;
            suggestedMax = Math.max.apply(null, data.sales) + 50;

            let config1 = {
                type: 'line',
                data: {
                    datasets: [{
                        borderWidth: 3,
                        borderColor: "#306E92",
                        backgroundColor: "rgba(60,141,188,0.5)",
                        pointBorderColor: "#3b8bba",
                        pointBorderWidth: 1,
                        pointRadius: 4,
                        fill: true,
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
        gold_chart: function (data, object) {
            let config1 = {
                type: 'line',
                data: {
                    datasets: [{
                        borderWidth: 3,
                        borderColor: "#306E92",
                        backgroundColor: "rgba(60,141,188,0.5)",
                        pointBorderColor: "#3b8bba",
                        pointBorderWidth: 1,
                        pointRadius: 4,
                        fill: true,
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
                            },
                        }],
                        yAxes: [{
                            display: true,
                            scaleLabel: {
                                display: false,
                                labelString: '금액',
                            },
                            ticks: {
                                beginAtZero: true,
                                min: 0,
                                max: 5
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
    };

    let ajax = {
        index: function () {
            let index = $('.box_tbllist:eq(0) table tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) table tbody tr.on'));
            return index;
        },
        post_buyBond: function () {
            let index = this.index();

            if (index < 0) {
                alert('채권을 선택해 주세요.');
                return;
            }

            if (mData.cashFlow.cash3 <= 0) {
                alert('잔고가 부족합니다.');
                return;
            }

            $.ajax({
                async: false,
                dataType: 'json',
                type: 'post',
                url: '/main/post_buyBond',
                data: {
                    bond: mData.BOND[index],
                    BOND_BUYQTY: $('input[type="number"]').val(),
                },
                success: function (data, status, xhr) {
                    mData = null;
                    mData = $.extend(true, mData, data);
                }
            });
            return true;
        },
        cancel_buyBond: function (key) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'post',
                url: '/main/cancel_buyBond',
                data: {
                    BOND_KEY: key,
                },
                success: function (data, status, xhr) {
                    mData = null;
                    mData = $.extend(true, mData, data);
                }
            });
        },
        draw_chart: function (BOND_KEY) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                data: {
                    BOND_KEY: BOND_KEY,
                },
                url: '/main/get_bond_chart2',
                success: function (data, status, xhr) {
                    ui.drawchart(data, $('#chart_20'));
                    console.log(data);
                },
            });
        },
        put_buyBond: function (BOND_KEY) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'post',
                url: '/main/put_buyBond',
                data: {
                    BOND_KEY: BOND_KEY,
                    BOND_MM: $('.box_bt_rdo select').val(),
                },
                success: function (data, status, xhr) {
                    mData = null;
                    mData = $.extend(true, mData, data);
                }
            });
        }
    };

    // 기본 event (1회만 처리)
    (function () {
        var change_tabmenu = function (index) {
            if (index === 0) {
                $('.tabmenu').removeClass('on');
                $('.tabmenu:eq(0)').addClass('on');

                $('.btmtbl:eq(0)').show();
                $('.btmtbl:eq(1)').hide();
            } else {
                $('.tabmenu').removeClass('on');
                $('.tabmenu:eq(1)').addClass('on');

                $('.btmtbl:eq(1)').show();
                $('.btmtbl:eq(0)').hide();
            }
        }

        // 상세보기
        $('.box_sbtop .und').on('click', function () {
            let index = $('.und:not(:eq(0))').index($(this));
            let bond = mData.BOND[index];
            let pop = $('.wrap_layerpop:eq(2)');

            pop.find('.area_sbptit7 span').text(bond.BOND_NAME);
            pop.find('.box_tblwrite:eq(0) td:eq(0)').text(bond.BOND_TYPE);
            pop.find('.box_tblwrite:eq(0) td:eq(1)').text(bond.BOND_CODE);
            pop.find('.box_tblwrite:eq(0) td:eq(2)').text(nf.format(bond.BOND_TOT));
            pop.find('.box_tblwrite:eq(0) td:eq(3)').text(nf.format(bond.BOND_NOWPRICE));
            pop.find('.box_tblwrite:eq(0) td:eq(4)').text(bond.BOND_PER + ' %');

            pop.find('.box_tblwrite:eq(0) td:eq(5)').text(bond.BOND_INDATE);
            pop.find('.box_tblwrite:eq(0) td:eq(6)').text(bond.BOND_CLDATE);
            pop.find('.box_tblwrite:eq(0) td:eq(7)').text(bond.BOND_BOTIME + ' 개월');
            pop.find('.box_tblwrite:eq(0) td:eq(8)').text(bond.BOND_BANK);
            pop.find('.box_tblwrite:eq(0) td:eq(9)').text(bond.BOND_PROD);

            ajax.draw_chart(bond.BOND_KEY);

            $('.wrap_layerpop:eq(2)').fadeIn(500);
        });

        // 채권명 클릭
        $('.box_tbllist:eq(0) table tbody tr').on('click', function () {
            let index = $('.box_tbllist:eq(0) table tbody tr:not(:eq(0))').index($(this));
            $('.box_tbllist:eq(0) table tbody tr').removeClass('on');
            $(this).addClass('on');

            ui.buyBond(index);
        });

        // 채권 사기
        $('.btn_buyc:eq(0)').on('click', function () {
            if (mData.buyBond.length >= 3) {
                alert('채권투자는 3개만 가능합니다.')
                return;
            }
            ajax.post_buyBond();

            ui.init();
        });

        // 채권 취소
        $('.ar_btm_bx .und').on('click', function () {
            let index = $('.ar_btm_bx .und:not(:eq(0))').index($(this));

            ajax.cancel_buyBond(mData.buyBond[index].BOND_KEY);
            ui.init();
        });

        // 구매한 채권 클릭
        $('.box_tbllist:eq(1) table tbody tr').on('click', function () {
            let index = $('.box_tbllist:eq(1) table tbody tr:not(:eq(0))').index($(this));
            $('.box_tbllist:eq(1) table tbody tr').removeClass('on');
            $(this).addClass('on');
        });

        // 만기 일자 변경
        $('.btn_buyc:eq(1)').on('click', function () {
            let index = $('.box_tbllist:eq(1) table tbody tr:not(:eq(0))').index($('.box_tbllist:eq(1) table tbody tr.on'));

            if (index < 0) {
                alert('구매한 채권을 선택해 주세요.');
            }

            ajax.put_buyBond(mData.buyBond[index].BOND_KEY);
            ui.init();
        });

        // 수익률 보기
        $('.btn_bview').on('click', function () {
            ui.benifit();

            $('.wrap_layerpop:eq(1)').fadeIn(500);
        });

        // 프린트 버튼
        $('.btn_print').on('click', function () {
            print();
        });
    })();

    // 기본 DATA (1회만 처리)
    (function () {
        $.ajax({
            async: false,
            dataType: 'json',
            type: 'get',
            url: '/main/get_bondData',
            success: function (data, status, xhr) {
                mData = $.extend(true, mData, data);
                ui.init();
            }
        });
    })();

    // 시스템 데이터와 비교하여 변경된 항목만 업데이트 처리
    let get_ajax = function (tmp) {
        if (eData.PG_LOCK == "2") {
            ui.benifit();
            $('.btn_close').remove();
            $('.wrap_layerpop:eq(1)').fadeIn(500);
        }

        if (eData.PG_LOCK == "3") {
            $(location).attr('href', '/main');
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
