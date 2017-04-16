/**
 * Created by 서정석 on 2017/04/13.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui',

], function ($, bootstrap, moment) {
    "use strict";

    let approval_action = location.pathname.split('/')[3];
    let user = null;                        // 사용자 정보
    let mdata = {
        usabled: 0,                         // 시스템 중지 여부(0, 1)
        STATUS: {                           // 체험 순서
            fund: false,
            bond: false,
            stock: true,
            COMP_DATA: null,                // 주식종목
        },
        DATA_TYPE: 1,
    };

    let nf = new Intl.NumberFormat(["en-US"]);

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
                }
            });
        })();

        // 환경 정보 처리
        function put_ajax() {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'put',
                data: {
                    mdata: mdata,
                },
                url: '/admin/',
                success: function (data, status, xhr) {
                    if (data) {
                        alert('저장 완료')
                    }
                }
            });
        }

        // get 테이블
        function get_table(data) {
            let returnData = null;
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'get',
                data: {
                    table_nm: data.table_nm,
                    where: data.where,
                    orderby: data.orderby,
                },
                url: '/admin/table',
                success: function (data, status, xhr) {
                    returnData = data;
                }
            });
            return returnData;
        }

        return {
            put_ajax: put_ajax,
            get_table: get_table,
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

        // 체험 순서 선택
        (function () {
            if (mdata.STATUS.fund === 'true') {
                $('.bx_chk_list:eq(0) button:eq(0)').addClass('on');
            } else {
                $('.bx_chk_list:eq(0) button:eq(0)').removeClass('on');
            }

            if (mdata.STATUS.bond === 'true') {
                $('.bx_chk_list:eq(0) button:eq(1)').addClass('on');
            } else {
                $('.bx_chk_list:eq(0) button:eq(1)').removeClass('on');
            }

            if (mdata.STATUS.stock === 'true') {
                $('.bx_chk_list:eq(0) button:eq(2)').addClass('on');
            } else {
                $('.bx_chk_list:eq(0) button:eq(2)').removeClass('on');
            }
        })();

        // 주식 데이터 선택
        (function () {
            $('.bx_chk_list:eq(1) button').removeClass('on');
            $('.bx_chk_list:eq(1) button:eq(' + mdata.DATA_TYPE + ')').addClass('on');
        })();
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

        // 체험 순서 선택
        (function () {
            $('.bx_chk_list:eq(0) button:eq(0)').on('click', function () {
                mdata.STATUS.fund = (mdata.STATUS.fund == 'true') ? 'false' : 'true';
                handle_ui();
            });
            $('.bx_chk_list:eq(0) button:eq(1)').on('click', function () {
                mdata.STATUS.bond = (mdata.STATUS.bond == 'true') ? 'false' : 'true';
                handle_ui();
            });
            $('.bx_chk_list:eq(0) button:eq(2)').on('click', function () {
                mdata.STATUS.stock = (mdata.STATUS.stock == 'true') ? 'false' : 'true';
                handle_ui();
            });
        })();

        // 체험할 주식 데이터 선택
        (function () {
            $('.bx_chk_list:eq(1) button').each(function (i) {
                $(this).on('click', function () {
                    mdata.DATA_TYPE = i;
                    handle_ui();
                });
            });
        })();

        // 데이터 초기화
        (function () {
            $('.btn_refresh').on('click', function () {
                if ((confirm('데이터가 초기화됩니다. 실행하시겠습니까?'))) {
                    // $(this).css('background', '#6e6b6b');
                }
            });
        })();
    })();

    // 확정 버튼
    (function () {
        $('.btn_conf').on('click', function () {
            handle_ajax.put_ajax();
        });
    })();

    // 프로그램 사용 제한
    (function () {
        // 종합환경설정
        (function () {
            let pop = $('.wrap_layerpop:eq(0)');

            $('.btn_adgre').on('click', function () {
                let job023 = handle_ajax.get_table({
                    table_nm: 'job023',
                    where: ['1', '1'],
                    // orderby: ['MKEY', 'ASC']
                });
                let $table = pop.find('.col2fl table tbody');
                let $clone = pop.find('.col2fl tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden').css('cursor', 'pointer');

                pop.find('.col2fl tbody tr:not(:eq(0))').remove();

                $.each(job023, function (i) {
                    $clone.find('td:eq(0)').text(this.MKEY);
                    $clone.find('td:eq(1)').text(this.M_CODE);
                    $clone.find('td:eq(2)').text(this.M_NAME);

                    $table.append($clone.clone(true));
                });

                pop.fadeIn(500);
            });

            // 코드명 선택
            pop.find('.col2fl tbody tr:eq(0)').on('click', function () {
                pop.find('.col2fl tbody tr').removeClass('on');
                $(this).addClass('on');
            });

            // 조회
            pop.find('.btn_search').on('click', function () {
                let MKEY = pop.find('tr.on td:eq(0)').text();
                let job024 = handle_ajax.get_table({
                    table_nm: 'job024',
                    where: ['MKEY', MKEY],
                    // orderby: ['MKEY', 'ASC']
                });
                let $table = pop.find('.col2fr table tbody');
                let $clone = pop.find('.col2fr tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden');

                pop.find('.col2fr tbody tr:not(:eq(0))').remove();

                $.each(job024, function (i) {
                    $clone.find('td:eq(0)').text(this.MKEY);
                    $clone.find('td:eq(1)').text(this.MD_CODE);
                    $clone.find('td:eq(2)').text(this.MD_NAME);

                    $table.append($clone.clone(true));
                });

                pop.find('.col2fr').removeClass('hidden');
            });

            pop.find('.btn_close').click(function () {
                pop.fadeOut(500);
            });
        })();

        // 채권관리
        (function () {
            let pop = $('.wrap_layerpop:eq(1)');

            $('.btn_adyee:eq(0)').on('click', function () {
                let job020 = handle_ajax.get_table({
                    table_nm: 'job020',
                    where: ['1', '1'],
                    // orderby: ['MKEY', 'ASC']
                });
                let $table = pop.find('table tbody');
                let $clone = pop.find('tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden').css('cursor', 'pointer');

                pop.find('tbody tr:not(:eq(0))').remove();

                $.each(job020, function (i) {
                    $clone.data('key', this.BOND_KEY);         // todo 수정시 키값

                    $clone.find('td:eq(0)').text(this.BOND_KEY);
                    $clone.find('td:eq(1)').text(this.BOND_TYPE);
                    $clone.find('td:eq(2) div').text(this.BOND_NAME);
                    $clone.find('td:eq(2) div').attr('title', this.BOND_NAME);
                    $clone.find('td:eq(3)').text(nf.format(this.BOND_TOT));
                    $clone.find('td:eq(4)').text(this.BOND_CLDATE);
                    $clone.find('td:eq(5)').text(nf.format(this.BOND_PRICE));
                    $clone.find('td:eq(6)').text(this.BOND_PER);
                    $clone.find('td:eq(7)').text(this.BOND_BOTIME);
                    $clone.find('td:eq(8)').text(this.BOND_BANK);

                    $table.append($clone.clone(true));
                });

                pop.fadeIn(500);
            });

            // 코드명 선택
            pop.find('tbody tr:eq(0)').on('click', function () {
                pop.find('tbody tr').removeClass('on');
                $(this).addClass('on');
            });

            pop.find('.btn_close').click(function () {
                pop.fadeOut(500);
            });

            // todo 저장 버튼
            pop.find('.btn_blk').on('click', function () {
                let aaa = pop.find('tbody tr:not(:eq(0))');
                $.each(aaa, function () {
                    console.log($(this).data('key'));
                });
            });
        })();

        // 주식종목관리
        (function () {
            let pop = $('.wrap_layerpop:eq(2)');

            $('.btn_adyee:eq(1)').on('click', function () {
                let COMP = mdata.COMP_DATA;
                let $table = pop.find('.col2fl table tbody');
                let $clone = pop.find('.col2fl tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden').css('cursor', 'pointer');

                pop.find('.col2fl tbody tr:not(:eq(0))').remove();

                $.each(COMP, function () {
                    $clone.find('td:eq(0)').text(this.SECT_KEY);
                    $clone.find('td:eq(1)').text(this.COMP_CODE);
                    $clone.find('td:eq(2)').text(this.COMP_NAME);

                    $table.append($clone.clone(true));
                })

                pop.fadeIn(500);
            });

            // 종목명 선택
            pop.find('.col2fl tbody tr:eq(0)').on('click', function () {
                pop.find('.col2fl tbody tr').removeClass('on');
                $(this).addClass('on');
            });

            // 조회
            pop.find('.btn_search').on('click', function () {
                let SECT_KEY = pop.find('tr.on td:eq(0)').text();
                let job015 = handle_ajax.get_table({
                    table_nm: 'job015',
                    where: ['SECT_KEY', SECT_KEY],
                    orderby: ['COMP_DATE', 'ASC']
                });
                let $table = pop.find('.col2fr table tbody');
                let $clone = pop.find('.col2fr tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden');

                pop.find('.col2fr tbody tr:not(:eq(0))').remove();

                $.each(job015, function (i) {
                    let date = moment().add(i, 'day').format('YYYY-MM-DD')
                    $clone.find('td:eq(0)').text(this.COMP_DATE);
                    $clone.find('td:eq(1)').text(date);
                    $clone.find('td:eq(2)').text(nf.format(this.COMP_PRICE));

                    $table.append($clone.clone(true));
                });

                pop.find('.col2fr').removeClass('hidden');
            });

            pop.find('.btn_play').on('click', function () {
                alert('작업중중');
            });

            pop.find('.btn_close').click(function () {
                pop.fadeOut(500);
            });
        })();
    })();

    // 뉴스 및 애널리스트 자료
    (function () {
        let gubun = {
            '01': '제약',
            '02': '석유화학',
            '03': '식품/유통',
            '04': '건설/조선',
            '05': '자동차/항공',
            '06': 'IT/전자',
        };

        // 패널 변경
        (function () {
            $('.btn_tb:eq(0)').on('click', function () {
                $(this).parent().addClass('on');
                $(this).parent().next().removeClass('on');

                $(this).next().removeClass('hidden');
                $(this).parent().next().find('a:eq(1)').addClass('hidden');

                $('.btmtbl:eq(0)').show();
                $('.btmtbl:eq(1)').hide();
            });

            $('.btn_tb:eq(1)').on('click', function () {
                $(this).parent().addClass('on');
                $(this).parent().prev().removeClass('on');

                $(this).next().removeClass('hidden');
                $(this).parent().prev().find('a:eq(1)').addClass('hidden');

                $('.btmtbl:eq(0)').hide();
                $('.btmtbl:eq(1)').show();
            });
        })();

        // 이 시간 뉴스
        (function () {
            let pop = $('.wrap_layerpop:eq(3)');

            $('.btn_mod:eq(0)').on('click', function () {
                let job016 = handle_ajax.get_table({
                    table_nm: 'job016',
                    where: ['1', '1'],
                    // orderby: ['MKEY', 'ASC']
                });
                let $table = pop.find('.box_tbllist:eq(0) table tbody');
                let $clone = pop.find('.box_tbllist:eq(0) tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden').css('cursor', 'pointer');

                pop.find('.box_tbllist:eq(0) tbody tr:not(:eq(0))').remove();

                $.each(job016, function (i) {
                    $clone.find('td:eq(0)').text(this.NEWS_KEY);
                    $clone.find('td:eq(1)').text(gubun[this.NEWS_TYPE]);
                    $clone.find('td:eq(2)').text(this.NEWS_HEAD);

                    $table.append($clone.clone(true));
                });

                pop.fadeIn(500);
            });

            // 뉴스명 선택
            pop.find('.box_tbllist:eq(0) tbody tr:eq(0)').on('click', function () {
                pop.find('.box_tbllist:eq(0) tbody tr').removeClass('on');
                $(this).addClass('on');
            });

            // 조회
            pop.find('.btn_search').on('click', function () {
                let NEWS_KEY = pop.find('.box_tbllist:eq(0) tr.on td:eq(0)').text();
                let job016 = handle_ajax.get_table({
                    table_nm: 'job016',
                    where: ['NEWS_KEY', NEWS_KEY],
                    // orderby: ['MKEY', 'ASC']
                });

                let $table = pop.find('.box_tbllist:eq(1) table tbody');
                let $clone = pop.find('.box_tbllist:eq(1) tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden');

                pop.find('.box_tbllist:eq(1) tbody tr:not(:eq(0))').remove();

                $.each(job016, function (i) {
                    let content = this.NEWS_FILE.replace(/\r\n/g, '<br>');
                    let up_down = (this.UPDOWN === '2') ? '오름' : '내림';

                    $clone.find('td:eq(0)').html(content).css('text-align', 'left');
                    $clone.find('td:eq(1)').text(up_down);

                    $table.append($clone.clone(true));
                });

                pop.find('.box_tbllist:eq(1)').removeClass('hidden');
            });

            pop.find('.btn_close').click(function () {
                pop.fadeOut(500);
            });
        })();

        // 애널리스트 분석
        (function () {
            let pop = $('.wrap_layerpop:eq(4)');

            $('.btn_mod:eq(1)').on('click', function () {
                let job017 = handle_ajax.get_table({
                    table_nm: 'job017',
                    where: ['1', '1'],
                    // orderby: ['MKEY', 'ASC']
                });
                let $table = pop.find('.box_tbllist:eq(0) table tbody');
                let $clone = pop.find('.box_tbllist:eq(0) tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden').css('cursor', 'pointer');

                pop.find('.box_tbllist:eq(0) tbody tr:not(:eq(0))').remove();

                $.each(job017, function (i) {
                    $clone.find('td:eq(0)').text(this.ANAL_KEY);
                    $clone.find('td:eq(1)').text(gubun[this.ANAL_TYPE]);
                    $clone.find('td:eq(2)').text(this.ANAL_HEAD);

                    $table.append($clone.clone(true));
                });

                pop.fadeIn(500);
            });

            // 뉴스명 선택
            pop.find('.box_tbllist:eq(0) tbody tr:eq(0)').on('click', function () {
                pop.find('.box_tbllist:eq(0) tbody tr').removeClass('on');
                $(this).addClass('on');
            });

            // 조회
            pop.find('.btn_search').on('click', function () {
                let ANAL_KEY = pop.find('.box_tbllist:eq(0) tr.on td:eq(0)').text();
                let job017 = handle_ajax.get_table({
                    table_nm: 'job017',
                    where: ['ANAL_KEY', ANAL_KEY],
                    // orderby: ['MKEY', 'ASC']
                });

                let $table = pop.find('.box_tbllist:eq(1) table tbody');
                let $clone = pop.find('.box_tbllist:eq(1) tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden');

                pop.find('.box_tbllist:eq(1) tbody tr:not(:eq(0))').remove();

                $.each(job017, function (i) {
                    let content = this.ANAL_FILE.replace(/\r\n/g, '<br>');
                    let up_down = (this.UPDOWN === '2') ? '오름' : '내림';

                    $clone.find('td:eq(0)').html(content).css('text-align', 'left');
                    $clone.find('td:eq(1)').text(up_down);

                    $table.append($clone.clone(true));
                });

                pop.find('.box_tbllist:eq(1)').removeClass('hidden');
            });

            pop.find('.btn_close').click(function () {
                pop.fadeOut(500);
            });
        })();
    })();

    handle_ui();
});

