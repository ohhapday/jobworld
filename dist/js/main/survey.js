/**
 * Created by 서정석 on 2017/04/22.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
], function ($, bootstrap, moment, a, session) {
    "use strict";

    let pop = $('.wrap_layerpop:eq(1)'),    // 설문지 팝업
        q_pop = pop.find('.layerpop').eq(0);// 질문 팝업

    let user = {                            // 사용자 정보
        key: session.EMPL_KEY,              // 기본키
        name: session.EMPL_NAME,            // 사용자 이름
        mf: session.MF_FG,                  // 성별
    };

    let surveyData = {};

    let answerData = {};

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
                    surveyData = data.SURVEY;
                }
            });
        })();
    })();

    // event 처리 함수
    let handle_event = function () {

    };

    // 기본 UI (1회만 처리)
    (function () {
        // 설문지 생성
        (function () {
            let $clone = q_pop.find('ul.list_qu li:eq(0)').clone(true);             // 질문
            let $an_clone = q_pop.find('ul.list_qu li:eq(0) li').clone(true);       // 답변

            $.each(surveyData, function (i) {
                $clone.find('strong').text((i + 1) + '. ' + this.QUES_NAME);
                // 답변
                $clone.find('ul li').remove();
                $.each(this.QUES_ANSW, function (j) {
                    let $answer = $an_clone.clone(true);
                    $answer.find('span').text(this.ANSW_NAME);
                    $answer.find('input').attr('name', 'qu' + i);
                    $answer.find('input').val(this.ANSW_POINT);
                    if(j == 0) {
                        $answer.find('input').attr('checked', true);
                    }
                    $answer.css('display', '');

                    $clone.find('ul').append($answer);

                    if (this.ANSW_NAME.length > 20) {       // 답변이 20글자 이상이면 Class 변경
                        $clone.find('ul').addClass('subul').removeClass('clfix');
                    }
                });
                $clone.css('display', '');
                q_pop.find('ul.list_qu').append($clone.clone(true));
            });
        })();

        q_pop.find('.btn_blk').on('click', function () {
            let radio = $('input:radio:checked'),
                total = 0;
            $.each(radio, function () {
                total +=  parseInt($(this).val());
            });

            answerData = {

            }

            alert(total + '점입니다.');

            pop.find('.layerpop').hide();

            if(total < 10) {
                pop.find('.layerpop').eq(1).fadeIn(500);
            } else if(total > 15) {
                pop.find('.layerpop').eq(3).fadeIn(500);
            } else {
                pop.find('.layerpop').eq(2).fadeIn(500);
            }
        });
    })();

    handle_event();
});

