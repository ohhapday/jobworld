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
        FUND: [],
        NEWS: null,
        KOS: null,
        fund_stock: [],
    };

    let ui = {
        init: function () {
            this.news();
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
                $clone.find('td:eq(4)').text(FUND_ADDPER);

                $table.append($clone.clone(true).fadeIn(500));
            });

            $table.find('tr:eq(' + (index + 1) + ')').addClass('on');

            if (mData.FUND.length === 0) {
                $('.box_tbllist:eq(0) div').fadeIn(500);
            } else {
                $('.box_tbllist:eq(0) div').fadeOut(500);
            }
        },
        fund_detail: function () {
            let index = $('.box_tbllist:eq(0) tbody tr:not(:eq(0))').index($('.box_tbllist:eq(0) tbody tr.on'));
            let data = mData.FUND[index];
            let per_benifit = (typeof data.percent === 'undefined') ? '' : data.percent + '%';
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

            if (mData.FUND.length === 0) {
                $('.box_tbllist:eq(0) div').fadeIn(500);
            } else {
                $('.box_tbllist:eq(0) div').fadeOut(500);
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
            let custom = ajax.get_custom(fund.FUND_KEY);
            let $li = $('.rightar li:not(:eq(0))');

            $.each(custom, function (i) {
                let benifit = parseInt(this.CUSTOM_PAY) * parseFloat(this.CUSTOM_ADDPER) / 100;

                console.log(benifit);

                $li.eq(i).find('input:eq(0)').val(nf.format(this.CUSTOM_PAY));
                $li.eq(i).find('input:eq(1)').val(nf.format(benifit));
            });

            console.log(custom);

            $('select[name="FUND_MM"]').val(fund.FUND_DAY).attr('selected', true);

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
                    mData.FUND = $.extend(true, mData.FUND, data.FUND);
                    mData.FUND[index].stock = $.extend(true, mData.FUND[index].stock, data.stock);
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
            console.log(mData.FUND.length);
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
                    console.log(mData.FUND);
                    ui.fund();
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
        })();

        // 수익률 보기 클릭
        $('.btn_bview').on('click', function () {
            $('.wrap_layerpop:eq(3)').fadeIn(500);
        });
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
