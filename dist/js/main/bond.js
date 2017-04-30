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
        BOND: null,
    };

    let ui = {
        init: function () {
            this.bond();
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
            console.log(bond[index]);

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
        }
    };

    // 기본 event (1회만 처리)
    (function () {
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
            pop.find('.box_tblwrite:eq(0) td:eq(4)').text(bond.BOND_PER);

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
