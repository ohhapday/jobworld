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
    let chart = null, chart_mm = null;

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
            this.fund2();
            this.fund_myStock();
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
                let $li = $('.pt_list li').eq(i);
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

                let select = $clone.find('select');

                $.each(mData.fund_own_month, function () {
                    select.append('<option value="' + this.MD_NAME + '">' + this.MD_NAME + '</option>')
                });
                select.val(this.FUND_DAY);

                $table.append($clone.fadeIn(500));
                // $table.append($clone.clone(true).fadeIn(500));
            });

            if (mData.FUND.length === 0) {
                $('.box_tbllist:eq(0) div').fadeIn(500);
            } else {
                $('.box_tbllist:eq(0) div').fadeOut(500);
            }
        },
        fund2: function () {
            if(mData.FUND.length > 0) {
                $('.box_sbtop01 input:eq(0)').val(mData.FUND[0].FUND_NAME);
                $('.box_sbtop01 input:eq(1)').val(nf.format(mData.FUND[0].FUND_TOT));
                $('.box_sbtop01 input:eq(2)').val(moment().format('YYYY/MM/DD'));
                $('.box_sbtop01 input:eq(3)').val(mData.FUND[0].FUND_DAY);
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
            let $table = $('.box_tbllist:eq(0) table tbody');

            console.log(mData.FUND);

            if(mData.FUND.length > 0) {
                $table.find('tr:not(:eq(0))').hide(500);
                $table.find('tr:not(:eq(0))').remove();

                $.each(mData.FUND[0].stock, function (i) {
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

                if (mData.FUND[0].stock.length === 0) {
                    $('.box_tbllist:eq(1) div:eq(1)').fadeIn(500);
                } else {
                    $('.box_tbllist:eq(1) div:eq(1)').fadeOut(500);
                }
            }
        },
        fund_add_stock: function () {
            let $table = $('.wrap_layerpop:eq(2) table tbody');
            let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));

            $('.area_sbptit span').text(mData.FUND[0].FUND_NAME);

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
            let txt_benifit;
            let txt_my_benifit = 0;

            $('.box_titpop2 span').text(user.name);
            $('.box_titpop2 div').text(moment().format('YYYY년 MM월 DD일'));
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

                // 펀드 매니저 수익률
                txt_benifit = mData.benifit;

                my_benifit = (benifit < 0) ? 0 : tot_benifit_pay * txt_benifit / 100;
                my_benifit_per = (benifit < 0) ? 0 : benifit * txt_benifit / 100;

                str = '펀드 매니저 수익률 ' + txt_benifit + '%  수익금 ' + nf.format(my_benifit) + '원';
                $('.pb_view:eq(' + i + ') p').text(str);

                txt_my_benifit += my_benifit;
            });

            $('.box_btcc .fl span').text(txt_benifit + '%');
            $('.box_btcc .fr span').text(nf.format(txt_my_benifit) + '원');
        },
        drawchart: function (origin_data, object) {
            let suggestedMin, suggestedMax;
            let data = $.extend({}, origin_data);

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
                            }
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

            suggestedMin = Math.min.apply(null, data.sales)  - 1000;
            suggestedMax = Math.max.apply(null, data.sales)  + 1000;

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
        company_info: function (data) {
            let table = $('.wrap_layerpop:eq(5)');

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

            let STOCK = mData.STOCK_POP.find(function(item){
                return item.COMP_CODE == data.COMP_CODE;
            });

            if (parseInt(STOCK.MEASURE) >= 0) {
                table.find('.lftpols1 img').attr('src', '/dist/images/ico_mnup.png');
                table.find('.lftpols1 span:not(:eq(0))').addClass('colred');
                table.find('.lftpols1 em').addClass('colred');
            } else {
                table.find('.lftpols1 img').attr('src', '/dist/images/ico_mndw.png');
                table.find('.lftpols1 span:not(:eq(0))').addClass('colblu');
                table.find('.lftpols1 em').addClass('colblu');
            }

            table.find('.lftpols1 strong').text(nf.format(STOCK.COMP_PRICE));
            table.find('.lftpols1 span:eq(2)').text(nf.format(STOCK.MEASURE));
            table.find('.lftpols1 em').text(parseFloat(STOCK.PER_MEASURE * 100).toFixed(2) + '%');
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
            let FUND_KEY = mData.FUND[0].FUND_KEY;

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
                    mData.FUND = [];
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
        $('.btn_buyc:eq(0)').on('click', function () {
            console.log(mData);
            if (mData.FUND.length > 0) {
                alert('펀드는 1개만 만들수 있어요.');
                return;
            }
            let pop = $('.wrap_layerpop:eq(1)');
            let total = 0;

            pop.find('table:eq(0) tr:last input').val(nf.format(mData.CASH));

            pop.find('table:eq(1) tr:eq(0) input').val('');
            pop.find('table:eq(1) tr:eq(2) input').val('');

            let select = pop.find('select:eq(0)');

            select.find('option').remove();
            $.each(mData.fund_own_month, function () {
                select.append('<option value="' + this.MD_NAME + '">' + this.MD_NAME + '개월</option>');
            });

            pop.find('table:eq(1) tr:eq(2) select option:not(:eq(0))').remove();
            for (let i = 1; i <= 10; i++) {
                pop.find('table:eq(1) tr:eq(2) select').append('<option>' + (i * 10) + '%</option>');
            }

            pop.fadeIn(500);
        });

        // 펀드 만들기 저장 checkValidity
        $('.btn_blk:eq(0)').on('click', function (e) {
            let pop = $('.wrap_layerpop:eq(1)');
            let isValid = null, data = null;
            isValid = $('form')[0].checkValidity();

            if (false !== isValid) {
                let table = $('.wrap_layerpop:eq(1) table:eq(0)');
                e.preventDefault();
                data = {
                    name: table.find('tr:eq(0) input').val(),
                    FUND_DAY: parseInt(table.find('tr:eq(1) select').val()),
                    percent: 0,
                    FUND_TOT: parseInt(table.find('tr:eq(1) input').val().replace(/,/g, '')),
                };

                if (ajax.post_myFund(data) === true) {
                    ui.fund2();
                    ui.fund_myStock();
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

        // 보유기간 변경
        $('.box_tbllist:eq(0) tbody tr select').on('change', function () {
            let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));
            let fund = mData.FUND[index];

            ajax.put_change_MM($(this).val(), fund);

            ui.fund();
            $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').eq(index).addClass('on');

            ui.fund_detail();
            ui.fund_change_MM();
            ui.fund_expect();
        });

        // 펀드 투자 종목
        (function () {
            let pop = $('.wrap_layerpop:eq(2)');

            // 펀드 투자 종목 추가 팝업
            $('.btn_plss:eq(1)').on('click', function () {
                let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));
                if (mData.FUND.length == 0) {
                    alert('펀드를 만들어주세요.');
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
                ui.fund2();
                pop.fadeOut(500);
            });

            // 종목명에 재무재표 생성
            $('.pop5 .und').on('click', function () {
                let COMP_CODE = $(this).closest('tr').find('input[type="checkbox"]').val();

                ajax.company_info(COMP_CODE);
                ajax.draw_chart(COMP_CODE, $('#chart_11'));
                ajax.draw_chart_mm(COMP_CODE, $('#chart_12'));
                $('.wrap_layerpop:eq(5)').fadeIn(500);
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
            if ($(this).css('cursor') !== 'not-allowed') {
                ui.fund_result();
                $('.wrap_layerpop:eq(3)').fadeIn(500);
            }
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

        // 종합지수 변경
        if(eData.kos_rownum !== tmp.kos_rownum) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_fundData',
                success: function (data, status, xhr) {
                    mData.KOS = $.extend(true, mData.KOS, data.KOS);
                    ui.kos();
                }
            });
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
