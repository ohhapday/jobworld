/**
 * Created by 서정석 on 2017/04/22.
 * todo 작업 아직 안함
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
], function ($, bootstrap, moment, a, session) {
    "use strict";

    let pop = $('.wrap_layerpop:eq(1)'),    // 설문지 팝업
        q_pop = pop.find('.layerpop').eq(0),// 질문 팝업
        a_pop = pop.find('.layerpop').eq(1);// 결과 팝업

    let user = {                            // 사용자 정보
        key: session.EMPL_KEY,              // 기본키
        name: session.EMPL_NAME,            // 사용자 이름
        mf: session.MF_FG,                  // 성별
    };

    let surveyData = {

    };

    let answerData = {

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
                url: '/main/get_survey',
                success: function (data, status, xhr) {
                    surveyData = data;
                }
            });
        })();
    })();

    // event 처리 함수
    let handle_event = function () {

    };

    // 기본 UI (1회만 처리)
    (function () {
        q_pop.find('.btn_blk').on('click', function () {
            q_pop.fadeOut(500);
            a_pop.fadeIn(500);
        });
    })();

    handle_event();
});

