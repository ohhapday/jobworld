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
        FUND: [],
        NEWS: null,
        KOS: null,
        fund_stock: [],
    };

    let ui = {
        init: function () {
            // this.news();
            this.kos();
            this.fund();
        },
        news: function () {
            $.each(mData.NEWS, function (i) {
                let $li = $('.ar_btm_news li').eq(i);
                $li.find('strong').text(this.NEWS_HEAD);
                $li.find('span').text(moment().format('YYYY-MM-DD'));
            });
        },
        kos: function () {
            $.each(mData.KOS, function (i) {
                let $li = $('.ar_btm_pt li').eq(i);
                $li.find('.pt1').text(this.NOW_RATE);

                if (this.MEASURE > 0) {
                    $li.find('.pt2 img').attr('src', '/dist/images/ico_mnup.png');
                    $li.addClass('up').removeClass('down');
                } else {
                    $li.find('.pt2 img').attr('src', '/dist/images/ico_mndw.png');
                    $li.addClass('down').removeClass('up');
                }

                $li.find('.pt2 span').text(this.MEASURE);
                $li.find('.per').text(this.PER_MEASURE + '%');
            });
        },
        fund: function () {
            let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));
            let $table = $('.box_tbllist:eq(0) table:eq(0) tbody');

            $table.find('tr:not(:eq(0))').hide(500);
            $table.find('tr:not(:eq(0))').remove();

            $.each(mData.FUND, function (i) {
                let $clone = $table.find('tr:eq(0)').clone(true);
                let self = this;
                let FUND_ADDPER = (this.FUND_ADDPER === null) ? '' : this.FUND_ADDPER + '%';

                $clone.find('td:eq(0) button').text(this.FUND_NAME);
                $clone.find('td:eq(1)').text(nf.format(this.FUND_TOT));
                $clone.find('td:eq(2)').text(FUND_ADDPER);

                $table.append($clone.clone(true).fadeIn(500));
            });

            if (mData.FUND.length === 0) {
                $('.box_tbllist:eq(0) div').fadeIn(500);
            } else {
                $('.box_tbllist:eq(0) div').fadeOut(500);
            }
        },
        fund_detail: function () {
            let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));
            let data = mData.FUND[index];
            let FUND_ADDPER = (data.FUND_ADDPER === null) ? '' : data.FUND_ADDPER + '%';

            $('.ar_btm_dt li:eq(0) span').text(data.FUND_NAME);
            $('.ar_btm_dt li:eq(1) span').text(moment().format('YYYY-MM-DD'));
            $('.ar_btm_dt li:eq(2) span').text(nf.format(data.FUND_TOT));
            $('.ar_btm_dt li:eq(3) span').text(FUND_ADDPER);
        },
        fund_myStock: function () {
            let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));
            let $table = $('.box_tbllist:eq(1) table:eq(0) tbody');

            $table.find('tr:not(:eq(0))').hide(500);
            $table.find('tr:not(:eq(0))').remove();

            $.each(mData.FUND[index].stock, function (i) {
                let $clone = $table.find('tr:eq(0)').clone(true);
                let self = this;

                let stock = mData.fund_stock.find(function (item) {
                    return item.COMP_CODE === self.COMP_CODE;
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

                $table.append($clone.clone(true).fadeIn(500));
            });

            if (mData.FUND[index].stock.length === 0) {
                $('.box_tbllist:eq(1) div').fadeIn(500);
            } else {
                $('.box_tbllist:eq(1) div').fadeOut(500);
            }
        },
        fund_add_stock: function () {
            let $table = $('.wrap_layerpop:eq(2) table:eq(0) tbody');
            mData.fund_stock = ajax.get_stock();

            $table.find('tr:not(:eq(0))').hide(500);
            $table.find('tr:not(:eq(0))').remove();

            $.each(mData.fund_stock, function () {
                let $clone = $table.find('tr:eq(0)').clone(true);
                let self = this;

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

                $table.append($clone.clone(true).fadeIn(500));
            });
        },
        fund_expect: function () {
            let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));
            let fund = mData.FUND[index];
            let $li = $('.rightar li:not(:eq(0))');

            fund.custom = ajax.get_custom(fund.FUND_KEY);

            $.each(fund.custom, function (i) {
                let CUSTOM_ADDPER = this.CUSTOM_ADDPER || 0;
                let benifit = parseInt(this.CUSTOM_PAY) * parseFloat(CUSTOM_ADDPER) / 100;

                $li.eq(i).find('input:eq(0)').val(nf.format(this.CUSTOM_PAY));
                $li.eq(i).find('input:eq(1)').val(nf.format(benifit));
            });

            $('select[name="FUND_MM"]').val(fund.FUND_DAY).attr('selected', true);
        },
        fund_change_MM: function () {
            let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));
            let fund = mData.FUND[index];
            let custom = ajax.get_custom(fund.FUND_KEY);
            let $li = $('.rightar li:not(:eq(0))');

            $.each(custom, function (i) {
                let benifit = parseInt(this.CUSTOM_PAY) * parseFloat(fund.FUND_MMPER) / 100;

                $li.eq(i).find('input:eq(0)').val(nf.format(this.CUSTOM_PAY));
                $li.eq(i).find('input:eq(1)').val(nf.format(benifit));
            });
        },
        fund_result: function () {
            $('.box_titpop2 span').text(user.name);
            $.each(mData.FUND, function (i) {
                let MM, benifit, tot_price = 0, tot_benifit_pay = 0,
                    my_benifit, my_benifit_per, str;             // 실제 보유기간이 없으면 최초 보유기간으로
                $('.pb_tit:eq(' + i + ') span').text(this.FUND_NAME);

                MM = this.MM || this.FUND_DAY;
                $('.dtts:eq(' + i + ') input:eq(0)').val(MM);

                benifit = parseFloat(this.FUND_MMPER) || parseFloat(this.FUND_ADDPER);
                $('.dtts:eq(' + i + ') input:eq(1)').val(benifit);

                $.each(this.custom, function (k) {
                    $('.dtts1:eq(' + i + ') li:eq(' + k + ') input').val(nf.format(this.CUSTOM_PAY));
                    tot_price += parseInt(this.CUSTOM_PAY);

                    let benifit_pay = parseInt(this.CUSTOM_PAY) + (parseInt(this.CUSTOM_PAY) * benifit / 100);
                    $('.dtts2:eq(' + i + ') li:eq(' + k + ') input').val(nf.format(benifit_pay));
                    tot_benifit_pay += parseInt(benifit_pay);
                });
                $('.dtts1:eq(' + i + ') li:eq(3) input').val(nf.format(tot_price));
                $('.dtts2:eq(' + i + ') li:eq(3) input').val(nf.format(tot_benifit_pay));

                my_benifit = (benifit < 0) ? 0 : tot_benifit_pay * 0.01;        // todo 10%
                my_benifit_per = (benifit < 0) ? 0 : benifit * 0.01;        // todo 10%

                // todo 펀드 매니저 수익률 임시
                let txt_benifit = '10';

                str = '펀드 매니저 수익률 ' + txt_benifit + '%  수익금 ' + nf.format(my_benifit) + '원';
                $('.pb_view:eq(' + i + ') p').text(str);
            });
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
            let table = $('.wrap_layerpop:eq(4) table');

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
    };

    let ajax = {
        get_investor: function () {
            let returnData = null;
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_investor',
                success: function (data, status, xhr) {
                    returnData = data.investor;
                }
            });
            return returnData;
        },
        get_stock: function () {
            let returnData = null;
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_fund_stock',
                success: function (data, status, xhr) {
                    returnData = data.stock;
                }
            });
            return returnData;
        },
        post_myFund: function (data) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'post',
                url: '/main/post_myFund',
                data: {fund: data},
                success: function (data, status, xhr) {
                    mData.FUND = $.extend(true, mData.FUND, data.FUND);
                }
            });
            return true;
        },
        post_myFundStock: function (data) {
            let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));
            let FUND_KEY = mData.FUND[index].FUND_KEY;

            $.ajax({
                async: false,
                dataType: 'json',
                type: 'post',
                url: '/main/post_myFundStock',
                data: {
                    stock: data,
                    FUND_KEY: FUND_KEY,
                },
                success: function (data, status, xhr) {
                    mData.FUND = null;
                    mData.FUND = $.extend(true, mData.FUND, data.FUND);
                }
            });
            return true;
        },
        get_custom: function (key) {
            let returnData = null;
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                data: {FUND_KEY: key},
                url: '/main/get_custom',
                success: function (data, status, xhr) {
                    returnData = data.custom;
                }
            });
            return returnData;
        },
        put_change_MM: function (MM, fund) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'post',
                url: '/main/put_myFundStock',
                data: {
                    MM: MM,
                    fund: fund,
                },
                success: function (data, status, xhr) {
                    mData.FUND = null;
                    mData.FUND = $.extend(true, mData.FUND, data.FUND);
                }
            });
        },
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

    // 기본 event (1회만 처리)
    (function () {
        // 뉴스 클릭
        $('.ar_btm_news a').on('click', function () {
            let index = $('.ar_btm_news a').index(this);
            let pop = $('.wrap_layerpop:eq(0)');

            pop.find('.box_titpop h2').text('이 시각 뉴스');
            pop.find('.news_tit').text(mData.NEWS[index].NEWS_HEAD);
            pop.find('.box_contpop p').html(mData.NEWS[index].NEWS_FILE);
            pop.find('.date em').text('잡월드 뉴스');
            pop.find('.date span:eq(1)').text(moment().format('YYYY.MM.DD'));

            pop.fadeIn(500);
        });

        // 펀드 만들기 팝업
        $('.btn_plss:eq(0)').on('click', function () {
            if (mData.FUND.length > 2) {
                alert('펀드는 3개만 만들수 있어요.');
                return;
            }
            let pop = $('.wrap_layerpop:eq(1)');
            let investor = ajax.get_investor();
            let total = 0;

            $.each(investor, function (i) {
                let tr = pop.find('table:eq(0) tr').eq(i);
                tr.find('th').text(this.MD_CODE);
                tr.find('input').val(nf.format(this.balance));
                total += parseInt(this.balance);
            });
            pop.find('table:eq(0) tr:last input').val(nf.format(total));
            pop.find('table:eq(1) tr:eq(1) input').val(nf.format(total));

            pop.find('table:eq(1) tr:eq(0) input').val('');
            pop.find('table:eq(1) tr:eq(2) input').val('');
            pop.find('table:eq(1) tr:eq(2) select option:not(:eq(0))').remove();
            for (let i = 1; i <= 10; i++) {
                pop.find('table:eq(1) tr:eq(2) select').append('<option>' + (i * 10) + '</option>');
            }

            pop.fadeIn(500);
        });

        // 펀드 만들기 저장 checkValidity
        $('.btn_blk:eq(0)').on('click', function (e) {
            let pop = $('.wrap_layerpop:eq(1)');
            let isValid = null, data = null;
            isValid = $('form')[0].checkValidity();

            if (false !== isValid) {
                let table = $('.wrap_layerpop:eq(1) table:eq(1)');
                e.preventDefault();
                data = {
                    name: table.find('tr:eq(0) input').val(),
                    FUND_DAY: parseInt(table.find('tr:eq(1) select').val()),
                    percent: parseInt(table.find('tr:eq(2) select').val()),
                    FUND_TOT: parseInt(table.find('tr:eq(2) input').val().replace(/,/g, '')),
                };
                if (ajax.post_myFund(data) === true) {
                    ui.fund();
                    // ui.fund_myStock();
                    pop.fadeOut(500);
                }
            }
        });

        // 투자할 비율 변경
        $('.wrap_layerpop:eq(1) select:eq(1)').on('change', function () {
            let cost = parseInt($('.wrap_layerpop:eq(1) table:eq(0) tr:last input').val().replace(/,/g, ''));
            let per = parseInt($(this).val());

            $('.wrap_layerpop:eq(1) table:eq(1) tr:last input').val(nf.format(cost * per / 100));
        });

        // 펀드명 클릭
        $('.box_tbllist:eq(0) tbody tr').on('click', function () {
            $('.box_tbllist:eq(0) tr').removeClass('on');
            $(this).closest('tr').addClass('on');

            ui.fund_detail();
            ui.fund_myStock();
            ui.fund_expect();
        });

        // 펀드 투자 종목
        (function () {
            let pop = $('.wrap_layerpop:eq(2)');

            // 펀드 투자 종목 추가 팝업
            $('.btn_plss:eq(1)').on('click', function () {
                let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));
                if (index < 0) {
                    alert('펀드명을 선택해 주세요.');
                    return;
                }
                ui.fund_add_stock();
                pop.fadeIn(500);
            });

            // 펀드 투자 종목 추가 버튼
            $('.btn_blk:eq(1)').on('click', function (e) {
                let checked = $('input[name="favor"]:checked');
                let stock = [];
                $.each(checked, function (i) {
                    let self = this;
                    stock[i] = mData.fund_stock.find(function (item) {
                        return item.COMP_CODE === $(self).val();
                    });
                });

                ajax.post_myFundStock(stock);
                ui.fund_myStock();
                ui.fund();
                pop.fadeOut(500);
            });

            // 종목명에 재무재표 생성
            $('.pop5 a').on('dblclick', function () {
                let COMP_CODE = $(this).closest('tr').find('input[type="checkbox"]').val();

                ajax.company_info(COMP_CODE);
                ajax.draw_chart(COMP_CODE, $('#chart_10'));
                $('.wrap_layerpop:eq(4)').fadeIn(500);
            });
        })();

        // 적용 버튼
        $('.btn_ckcof').on('click', function () {
            let fund;
            let MM = $('select[name="FUND_MM"]').val();
            let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));
            if (index < 0) {
                alert('펀드를 선택해 주세요');
                return;
            }
            fund = mData.FUND[index];

            ajax.put_change_MM(MM, fund);
            ui.fund_change_MM();

            alert('수익률이 변경 되었습니다.\n\n 전체 수익률을 확인해 보세요.')
        });

        // 수익률 보기 클릭
        $('.btn_bview').on('click', function () {
            ui.fund_result();
            $('.wrap_layerpop:eq(3)').fadeIn(500);
        });

        // 프린트 버튼
        $('.btn_print').on('click', function () {
            print();
        })
    })();

    // 기본 DATA (1회만 처리)
    (function () {
        $.ajax({
            async: false,
            dataType: 'json',
            type: 'get',
            url: '/main/get_fundData',
            success: function (data, status, xhr) {
                mData = $.extend(true, mData, data);
                ui.init();
                console.log(mData);
            }
        });
    })();

    // 시스템 데이터와 비교하여 변경된 항목만 업데이트 처리
    let get_ajax = function (tmp) {
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
