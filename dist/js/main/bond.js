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
                $clone.find('td:eq(2)').text(nf.format(this.BOND_PRICE));
                $clone.find('td:eq(3)').text(this.BOND_PER);
                $clone.find('td:eq(4)').text(this.BOND_TYPE);

                $table.append($clone.clone(true));
            });
            $table.find('tr:not(:eq(0))').show(500);
        },
        buyBond: function (index) {
            let bond = mData.BOND[index];

            $('.ar_btm_dt .dttit span').text(bond.BOND_NAME);

            $('.ar_btm_dt .mb10:eq(0) span').text(nf.format(bond.BOND_PRICE));
            $('.ar_btm_dt .mb10:eq(1) input').val(100);
            $('.ar_btm_dt .mb10:eq(2) span').text(nf.format(bond.BOND_PRICE * 100));
            $('.ar_btm_dt .mb10:eq(3) span').text(bond.BOND_CLDATE);
            $('.ar_btm_dt .mb10:eq(4) span').text(bond.BOND_INDATE);
            $('.ar_btm_dt .mb10:eq(5) span').text(nf.format(bond.BOND_PRICE * 100 * bond.BOND_PER / 100));
            $('.ar_btm_dt li:last span').text(bond.BOND_PER + ' %');

            $('.ar_btm_dt .mb10:eq(1) input').on('change', function () {
                let buyPrice = bond.BOND_PRICE * $(this).val();
                $('.ar_btm_dt .mb10:eq(2) span').text(nf.format(buyPrice));
                $('.ar_btm_dt .mb10:eq(5) span').text(nf.format(buyPrice * bond.BOND_PER / 100));
            });
        },
        buyBond_clear: function () {
            $('.ar_btm_dt .dttit span').text('');

            $('.ar_btm_dt .mb10:eq(0) span').text('');
            $('.ar_btm_dt .mb10:eq(1) input').val(100);
            $('.ar_btm_dt .mb10:eq(2) span').text('');
            $('.ar_btm_dt .mb10:eq(3) span').text('');
            $('.ar_btm_dt .mb10:eq(4) span').text('');
            $('.ar_btm_dt .mb10:eq(5) span').text('');
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

                let bond = mData.BOND.find(function (item) {
                    return item.BOND_KEY === self.BOND_KEY;
                });

                $clone.find('td:eq(0)').text(bond.BOND_NAME);
                $clone.find('td:eq(1)').text(this.BOND_BUYQTY);
                $clone.find('td:eq(2)').text(nf.format(total));
                $clone.find('td:eq(3)').text(nf.format(this.BOND_BUYBENIFIT));

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

        },
        drawchart: function (data) {
            let config1 = {
                type: 'line',
                data: {
                    datasets: [{
                        borderWidth: 3,
                        borderColor: "#306E92",
                        // backgroundColor: "rgba(60,141,188,0.5)",
                        pointBorderColor: "#3b8bba",
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
                        display: true,
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

            var ctx1 = $("#chart_01").get(0).getContext("2d");
            let chart = new Chart(ctx1, config1);
        }
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
                alert('잔고가 부족합니다..');
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
        draw_chart: function () {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_bond_chart',
                success: function (data, status, xhr) {
                    ui.drawchart(data);
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
        $('.und').on('click', function () {
            let index = $('.und:not(:eq(0))').index($(this));
            let bond = mData.BOND[index];
            let pop = $('.wrap_layerpop:eq(0)');

            pop.find('.area_sbptit span').text(bond.BOND_NAME);
            pop.find('.box_tblwrite:eq(0) td:eq(0)').text(bond.BOND_TYPE);
            pop.find('.box_tblwrite:eq(0) td:eq(1)').text(bond.BOND_CODE);
            pop.find('.box_tblwrite:eq(0) td:eq(2)').text(nf.format(bond.BOND_TOT));
            pop.find('.box_tblwrite:eq(0) td:eq(3)').text(nf.format(bond.BOND_PRICE));
            pop.find('.box_tblwrite:eq(0) td:eq(4)').text(bond.BOND_PER + ' %');

            pop.find('.box_tblwrite:eq(1) td:eq(0)').text(bond.BOND_INDATE);
            pop.find('.box_tblwrite:eq(1) td:eq(1)').text(bond.BOND_CLDATE);
            pop.find('.box_tblwrite:eq(1) td:eq(2)').text(bond.BOND_BOTIME + ' 개월');
            pop.find('.box_tblwrite:eq(1) td:eq(3)').text(bond.BOND_BANK);
            pop.find('.box_tblwrite:eq(1) td:eq(4)').text(bond.BOND_PROD);

            $('.wrap_layerpop:eq(0)').fadeIn(500);
        });

        // 채권명 클릭
        $('.box_tbllist:eq(0) table tbody tr').on('click', function () {
            let index = $('.box_tbllist:eq(0) table tbody tr:not(:eq(0))').index($(this));
            $('.box_tbllist:eq(0) table tbody tr').removeClass('on');
            $(this).addClass('on');

            ui.buyBond(index);

            if (mData.BOND[index].BOND_TYPE === "국채") {
                change_tabmenu(0);
            } else {
                change_tabmenu(1);
                ui.credit();
            }
        });

        // 채권 사기
        $('.btn_buyc').on('click', function () {
            ajax.post_buyBond();

            ui.init();
        });

        // 수익률 보기
        $('.btn_bview').on('click', function () {
            ui.benifit();

            $('.wrap_layerpop:eq(1)').fadeIn(500);
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
                console.log(mData);
            }
        });
    })();

    // 시스템 데이터와 비교하여 변경된 항목만 업데이트 처리
    let get_ajax = function (tmp) {
        // 주식 데이터 변경
        if (tmp.bond_rownum !== eData.bond_rownum) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/put_bond_rownum',
                success: function (data, status, xhr) {
                    mData = $.extend(true, mData, data);
                    ui.init();
                    console.log(mData);
                }
            });
            ajax.draw_chart();
            console.log('채권 변경');
        }

        if (eData.PG_LOCK == "2") {
            ui.fund_result();
            $('.btn_close').remove();
            $('.wrap_layerpop:eq(3)').fadeIn(500);
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
