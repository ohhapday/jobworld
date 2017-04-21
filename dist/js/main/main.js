/**
 * Created by 서정석 on 2017/04/16.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',

], function ($, bootstrap, moment, a, session) {
    "use strict";

    let approval_action = location.pathname.split('/')[3];
    let user = {                            // 사용자 정보
        key: session.EMPL_KEY,              // 기본키
        name: session.EMPL_NAME,            // 사용자 이름
        mf: session.MF_FG,                  // 성별
    };
    let eData = {                           // 실시간 데이터
        usabled: '1',
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

    // UI 처리 함수
    let handle_ui = function () {
        // 프로그램 사용 중지
        if (eData.usabled === '0') {
            $('.clfix li a').css('cursor', 'not-allowed');
            $('.clfix li a').attr('href', '#');
        } else {
            $('.clfix li a').css('cursor', 'pointer');
            $('.clfix li a').attr('href', '#');
        }
    };

    // eventSource
    (function () {
        // 시스템 데이터 바인드
        let eventSource = new EventSource('/login/sse_get_system');
        eventSource.onmessage = function (e) {
            if (e.data !== JSON.stringify(eData)) {
                eData = JSON.parse(e.data);
                handle_ui();
            }
        }
    })();

    // 카운터 시계
    (function () {
        window.setInterval(function () {
            let now_time = moment().format('HH:mm:ss');
            $('.time').text(now_time);
        }, 1000);
    })();

    // 기본 UI (1회만 처리)
    (function () {
        $('.member strong').text(user.name);

        // 뉴스 처리
        (function () {
            $.each(mData.NEWS, function (i) {
                let $li = $('.news').eq(i);
                $li.find('span').text(moment().format('YYYY.MM.DD'));
                $li.find('em').text(this.NEWS_HEAD);
            });

            $('.news').on('click', function () {
                let index = $(this).index() - 1;            // '앞에 주요뉴스'라는 애가 li:0임
                console.log(index);
            });

            console.log($('.news'));
        })();

        // 종합지수 처리
        $.each(mData.KOS, function (i) {
            let $li = $('.pt_list li').eq(i);
            $li.find('.pt1').text(this.NOW_RATE);

            if(this.MEASURE > 0) {
                $li.find('.pt2 img').attr('src', '/dist/images/ico_mnup.png');
                $li.addClass('up');
            } else {
                $li.find('.pt2 img').attr('src', '/dist/images/ico_mndw.png');
                $li.addClass('down');
            }

            $li.find('.pt2 span').text(this.MEASURE);
            $li.find('.per').text(this.PER_MEASURE + '%');
        });

        // 종목주가 처리
        $.each(mData.COMP, function (i) {
            let $li = $('.area_cpm li').eq(i);
            $li.find('strong').text(this.COMP_NAME);
            $li.find('span').text(nf.format(this.COMP_PRICE));
        });
    })();

    handle_ui();
});

