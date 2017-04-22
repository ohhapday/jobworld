/**
 * Created by 서정석 on 2017/04/16.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
    '/dist/js/main/common.js',         // 공통 처리 js
    '/dist/js/main/survey.js',         // 설문 조사 js
], function ($, bootstrap, moment, a, session) {
    "use strict";

    let user = {                            // 사용자 정보
        key: session.EMPL_KEY,              // 기본키
        name: session.EMPL_NAME,            // 사용자 이름
        mf: session.MF_FG,                  // 성별
    };

    let mData = {                           // 1회 로딩 데이터
        NEWS: null,
        ANAL: null,
        KOS: null,
        COMP: null,
    };

    let nf = new Intl.NumberFormat(["en-US"]);

    // ajax 처리
    let handle_ajax = (function () {
        // 클라이언트 Data 바인드
        (function () {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/main/get_mData',
                success: function (data, status, xhr) {
                    mData = data;
                }
            });
        })();
    })();

    // 기본 UI (1회만 처리)
    (function () {
        $('.member strong').text(user.name);

        // 팝업 숨기기
        $('.wrap_layerpop .btn_close').click(function () {
            $(this).closest('.wrap_layerpop').fadeOut(500);
        });

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
                // todo 컨텐츠 하단에 "서울경제"부분 DB 처리 필요
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
                // todo 컨텐츠 하단에 "서울경제"부분 DB 처리 필요
                pop.find('.date span:eq(1)').text(moment().format('YYYY.MM.DD'));

                pop.fadeIn(500);
            });
        })();
    })();
});

