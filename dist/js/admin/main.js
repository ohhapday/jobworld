/**
 * Created by 서정석 on 2017/04/13.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui',
    'common',
], function ($, bootstrap, moment) {
    "use strict";

    let approval_action = location.pathname.split('/')[3];
    let user = null;                        // 사용자 정보
    let mdata = {
        usabled: 0,                         // 시스템 중지 여부(0, 1)
    };

    // ajax 처리
    let handle_ajax = (function () {
        // 페이지 Data 바인드
        (function () {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                url: '/admin/',
                success: function (data, status, xhr) {
                    mdata = data;
                    console.log(data);
                }
            });
        })();

        // 환경 정보 처리
        function put_ajax() {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'put',
                data: mdata,
                url: '/admin/',
                success: function (data, status, xhr) {
                    mdata = data;
                }
            });
        }

        return {
            put_ajax: put_ajax,
        }
    })();

    // 체험자 정보
    let user_insert_dom = function (user) {
        let $table = $('.sbleftdat:eq(0) table');
        let $tr = $table.find('tbody tr');

        $.each(user, function (i) {
            $tr.eq(i).children('td').eq(0).text(parseInt(i) + 1);
            $tr.eq(i).children('td').eq(1).text(this.EMPL_NAME);
            $tr.eq(i).children('td').eq(2).text((this.MF_FG === 'M') ? '남' : '여');
        });
    };

    // 카운터 시계
    (function () {
        window.setInterval(function () {
            let now_time = moment().format('HH:mm:ss');
            $('.time').text(now_time);
        }, 1000);
    })();

    // eventSource
    (function () {
        let eventSource = new EventSource('/admin/sse_get_user');
        let userCount = 0;
        eventSource.onmessage = function (e) {
            let user = JSON.parse(e.data).user;
            if (userCount !== Object.keys(user).length) {
                user_insert_dom(user);
                userCount = Object.keys(user).length;
            }
        }
    })();

    // UI 처리 함수
    let handle_ui = function () {
        // 프로그램 사용 제한
        (function () {
            if (mdata.usabled === 1) {
                $('.btn_use').animate({
                    backgroundColor: "#f34937",
                }, 1000);
                $('.btn_stop').animate({
                    backgroundColor: "#6e6b6b",
                }, 1000);
            } else {
                $('.btn_use').animate({
                    backgroundColor: "#6e6b6b",
                }, 1000);
                $('.btn_stop').animate({
                    backgroundColor: "#f34937",
                }, 1000);
            }
        })();
        console.log(mdata);
    };

    // event Data 처리 함수
    (function () {
        // 프로그램 사용 제한
        (function () {
            $('.btn_use').on('click', function () {
                mdata.usabled = 1;
                handle_ui();
                handle_ajax.put_ajax();
            });

            $('.btn_stop').on('click', function () {
                mdata.usabled = 0;
                handle_ui();
                handle_ajax.put_ajax();
            });
        })();

        // 데이터 초기화
        (function () {
            $('.btn_refresh').on('click', function () {
                if ((confirm('데이터가 초기화됩니다. 실행하시겠습니까?'))) {
                    $(this).css('background', '#6e6b6b');
                }
            });
        })();
    })();

    handle_ui();
});

