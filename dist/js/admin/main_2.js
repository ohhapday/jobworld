/**
 * Created by 서정석 on 2017/04/13.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui',

], function ($, bootstrap, moment) {
    "use strict";

    let user = null;                        // 사용자 정보
    let mdata = {
        usabled: 0,                         // 중지: 0, 시작: 1, 결과보기: 3, 메인으로: 4
        STATUS: {                           // 체험 순서
            fund_STATUS: 0,
            bond_STATUS: 0,
            stock_STATUS: 0,
        },
        DATA_TYPE: 30,
        COMP_DATA: null,                // 주식종목
    };
    let eventSource;

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
                    console.log(mdata);
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
                }
            });

            // 체험이 시작되면 eventSource 중지
            if (mdata.usabled !== 1) {
                // eventSource.close();
            }
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
        let $table = $('.adm:eq(0) table');
        let $tr = $table.find('tbody tr');

        $.each(user, function (i) {
            $tr.eq(i).children('td').eq(0).text(parseInt(i) + 1);
            $tr.eq(i).children('td').eq(1).text(this.EMPL_NAME);
            $tr.eq(i).children('td').eq(2).text((this.MF_FG === 'M') ? '남' : '여');
        });
    };

    // ajax
    let ajax = {
        put_job024: function (data) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'post',
                data: data,
                url: '/admin/put_job024',
                success: function (data, status, xhr) {
                    alert('저장되었습니다.');
                }
            })
        },
        put_job020: function (data) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'post',
                data: data,
                url: '/admin/put_job020',
                success: function (data, status, xhr) {
                    alert('저장되었습니다.');
                }
            });
        },
        put_NEWS_CONTENTS: function (data) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'post',
                data: data,
                url: '/admin/put_NEWS_CONTENTS',
                success: function (data, status, xhr) {
                    alert('변경되었습니다.');
                }
            })
        },
        put_ANAL_CONTENTS: function (data) {
            $.ajax({
                async: false,
                dataType: 'json',
                type: 'post',
                data: data,
                url: '/admin/put_ANAL_CONTENTS',
                success: function (data, status, xhr) {
                    alert('변경되었습니다.');
                }
            })
        }
    };

    // 카운터 시계
    (function () {
        var timer_update = function () {
            let url = null;
            /*
             if (mdata.STATUS.bond_STATUS == 1) {
             url = '/admin/put_bond_rownum'
             }
             */

            if (mdata.STATUS.stock_STATUS == 1) {
                url = '/admin/put_stock_rownum'
            }
            if (url !== null) {
                $.ajax({
                    async: false,
                    dataType: 'json',
                    type: 'get',
                    url: url,
                });
            }
        }

        let timer = 0;
        window.setInterval(function () {
            let now_time = moment().format('HH:mm:ss');
            $('.time').text(now_time);

            // 주식 데이터 rownum 변경
            if (mdata.usabled === 1) {
                timer += 1;
                if (timer > mdata.DATA_TYPE) {
                    timer_update();
                    timer = 0;
                }
            } else {
                timer = 0;
            }
        }, 1000);
    })();

    // eventSource
    (function () {
        // if (mdata.usabled === 1) {
        eventSource = new EventSource('/admin/sse_get_user');
        let userCount = 0;
        eventSource.onmessage = function (e) {
            let user = JSON.parse(e.data).user;
            if (userCount !== Object.keys(user).length) {
                user_insert_dom(user);
                userCount = Object.keys(user).length;
            }
        }
        // }
    })();

    // UI 처리 함수
    let handle_ui = function () {
        // 프로그램 사용 제한
        (function () {
            if (mdata.usabled === 0) {
                $('.btn_use').animate({
                    backgroundColor: "#f34937",
                }, 1000);
                $('.btn_result').animate({
                    backgroundColor: "#6e6b6b",
                }, 1000);
                $('.btn_stop').animate({
                    backgroundColor: "#6e6b6b",
                }, 1000);
            }

            if (mdata.usabled === 1) {
                $('.btn_use').animate({
                    backgroundColor: "#6e6b6b",
                }, 1000);
                $('.btn_result').animate({
                    backgroundColor: "#f34937",
                }, 1000);
                $('.btn_stop').animate({
                    backgroundColor: "#f34937",
                }, 1000);
            }

            if (mdata.usabled === 2) {
                $('.btn_use').animate({
                    backgroundColor: "#6e6b6b",
                }, 1000);
                $('.btn_result').animate({
                    backgroundColor: "#6e6b6b",
                }, 1000);
                $('.btn_stop').animate({
                    backgroundColor: "#f34937",
                }, 1000);
            }
        })();

        // 체험 순서 선택
        (function () {
            if (mdata.STATUS.survey_STATUS === 1) {
                $('.bx_chk_list:eq(0) button:eq(0)').addClass('on');
            } else {
                $('.bx_chk_list:eq(0) button:eq(0)').removeClass('on');
            }

            if (mdata.STATUS.fund_STATUS === 1) {
                $('.bx_chk_list:eq(0) button:eq(1)').addClass('on');
            } else {
                $('.bx_chk_list:eq(0) button:eq(1)').removeClass('on');
            }

            if (mdata.STATUS.bond_STATUS === 1) {
                $('.bx_chk_list:eq(0) button:eq(2)').addClass('on');
            } else {
                $('.bx_chk_list:eq(0) button:eq(2)').removeClass('on');
            }

            if (mdata.STATUS.stock_STATUS === 1) {
                $('.bx_chk_list:eq(0) button:eq(3)').addClass('on');
            } else {
                $('.bx_chk_list:eq(0) button:eq(3)').removeClass('on');
            }

            if (mdata.STATUS.result_STATUS === 1) {
                $('.bx_chk_list:eq(0) button:eq(4)').addClass('on');
            } else {
                $('.bx_chk_list:eq(0) button:eq(4)').removeClass('on');
            }
        })();

        // 주식 데이터 선택
        (function () {

        })();

        // 체험 주식 데이터 선택 (속도)
        (function () {
            $('.bx_chk_list:eq(1) button:eq(0)').data('value', mdata.speed[0].MD_NAME);
            $('.bx_chk_list:eq(1) button:eq(1)').data('value', mdata.speed[1].MD_NAME);
            $('.bx_chk_list:eq(1) button:eq(2)').data('value', mdata.speed[2].MD_NAME);

            $('.bx_chk_list:eq(1) button:eq(0)').text('하 (' + mdata.speed[0].MD_NAME + '초)');
            $('.bx_chk_list:eq(1) button:eq(1)').text('중 (' + mdata.speed[1].MD_NAME + '초)');
            $('.bx_chk_list:eq(1) button:eq(2)').text('상 (' + mdata.speed[2].MD_NAME + '초)');

            $('.bx_chk_list:eq(1) button').removeClass('on');
            $.each($('.bx_chk_list:eq(1) button'), function () {
                if (mdata.DATA_TYPE == $(this).data('value')) {
                    $(this).addClass('on');
                }
            })
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
                alert('프로그램을 시작합니다.');
            });

            $('.btn_result').on('click', function () {
                mdata.usabled = 2;
                handle_ui();
                handle_ajax.put_ajax();
                alert('결과보기를 시작합니다.');
            });

            $('.btn_stop').on('click', function () {
                mdata.usabled = 3;
                mdata.STATUS = {
                    fund_STATUS: 0,
                    bond_STATUS: 0,
                    stock_STATUS: 0,
                    result_STATUS: 0,
                }
                handle_ui();
                handle_ajax.put_ajax();
                alert('메인페이지로 이동합니다.');
            });
        })();

        // 체험 순서 선택
        (function () {
            $('.bx_chk_list:eq(0) button:eq(0)').on('click', function () {
                mdata.usabled = 1;
                mdata.STATUS.survey_STATUS = 1;
                mdata.STATUS.fund_STATUS = 0;
                mdata.STATUS.bond_STATUS = 0;
                mdata.STATUS.stock_STATUS = 0;
                mdata.STATUS.result_STATUS = 0;

                handle_ui();
                handle_ajax.put_ajax();
            });
            $('.bx_chk_list:eq(0) button:eq(1)').on('click', function () {
                mdata.usabled = 1;
                mdata.STATUS.survey_STATUS = 0;
                mdata.STATUS.fund_STATUS = 1;
                mdata.STATUS.bond_STATUS = 0;
                mdata.STATUS.stock_STATUS = 0;
                mdata.STATUS.result_STATUS = 0;

                handle_ui();
                handle_ajax.put_ajax();
            });
            $('.bx_chk_list:eq(0) button:eq(2)').on('click', function () {
                mdata.usabled = 1;
                mdata.STATUS.survey_STATUS = 0;
                mdata.STATUS.fund_STATUS = 0;
                mdata.STATUS.bond_STATUS = 1;
                mdata.STATUS.stock_STATUS = 0;
                mdata.STATUS.result_STATUS = 0;

                handle_ui();
                handle_ajax.put_ajax();
            });
            $('.bx_chk_list:eq(0) button:eq(3)').on('click', function () {
                mdata.usabled = 1;
                mdata.STATUS.survey_STATUS = 0;
                mdata.STATUS.fund_STATUS = 0;
                mdata.STATUS.bond_STATUS = 0;
                mdata.STATUS.stock_STATUS = 1;
                mdata.STATUS.result_STATUS = 0;

                handle_ui();
                handle_ajax.put_ajax();
            });
            $('.bx_chk_list:eq(0) button:eq(4)').on('click', function () {
                mdata.usabled = 1;
                mdata.STATUS.survey_STATUS = 0;
                mdata.STATUS.fund_STATUS = 0;
                mdata.STATUS.bond_STATUS = 0;
                mdata.STATUS.stock_STATUS = 0;
                mdata.STATUS.result_STATUS = 1;

                handle_ui();
                handle_ajax.put_ajax();
            });
        })();

        // 체험할 주식 데이터 선택
        (function () {
            $('.bx_chk_list:eq(1) button').each(function (i) {
                $(this).on('click', function () {
                    mdata.DATA_TYPE = $(this).data('value');
                    handle_ui();
                    handle_ajax.put_ajax();
                });
            });
        })();

        // 데이터 초기화
        (function () {
            var data_init = function () {
                $.ajax({
                    async: false,
                    dataType: 'json',
                    type: 'post',
                    url: '/admin/put_init',
                });
                location.reload();
            };

            $('.btn_refresh').on('click', function () {
                if ((confirm('데이터가 초기화됩니다. 실행하시겠습니까?'))) {
                    data_init();
                }
            });
        })();
    })();

    // 프로그램 사용 제한
    (function () {
        // 팝업 숨기기
        $('.wrap_layerpop .btn_close').click(function () {
            $(this).closest('.wrap_layerpop').fadeOut(500);
        });

        // 종합환경설정
        (function () {
            let pop = $('.wrap_layerpop:eq(0)');

            $('.btn_adgre:eq(0)').on('click', function () {
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
                    $clone.find('td:eq(2) input').val(this.MD_NAME);
                    $clone.find('td:eq(2) input').data('key', this.KEY);

                    $table.append($clone.clone(true));
                });

                pop.find('.col2fr').removeClass('hidden');
            });

            // 저장
            pop.find('.btn_blk').on('click', function () {
                let input = pop.find('input:not(:eq(0))');
                let data = {
                    table_nm: 'job024',
                    item: [],
                };

                $.each(input, function (i) {
                    data.item[i] = {
                        key: $(this).data('key'),
                        value: $(this).val(),
                    };
                });

                ajax.put_job024(data);

                $.ajax({
                    async: false,
                    dataType: 'json',
                    type: 'get',
                    url: '/admin/',
                    success: function (data, status, xhr) {
                        mdata = data;
                    }
                });

                handle_ui();
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
                    $clone.data('key', this.BOND_KEY);

                    $clone.find('td:eq(0) div').text(this.BOND_KEY);
                    $clone.find('td:eq(1) div').text(this.BOND_TYPE);
                    $clone.find('td:eq(2) div').text(this.BOND_NAME);
                    // $clone.find('td:eq(2) div').attr('title', this.BOND_NAME);
                    $clone.find('td:eq(3) div').text(nf.format(this.BOND_TOT));
                    $clone.find('td:eq(4) div').text(this.BOND_CLDATE);
                    $clone.find('td:eq(5) div').text(nf.format(this.BOND_PRICE));
                    $clone.find('td:eq(6) div').text(this.BOND_PER);
                    $clone.find('td:eq(7) div').text(this.BOND_BOTIME);
                    $clone.find('td:eq(8) div').text(this.BOND_BANK);

                    $table.append($clone.clone(true));
                });

                pop.fadeIn(500);
            });

            // 코드명 선택
            pop.find('tbody tr:eq(0)').on('dblclick', function () {
                let td = $(this).find('td:not(:eq(0), :eq(1))');

                pop.find('tbody tr').removeClass('on');

                $.each(pop.find('tbody tr'), function () {
                    $.each($(this).find('td'), function () {
                        let val = $(this).find('input').val();
                        $(this).find('div').text(val);
                    });
                });

                $.each(td, function () {
                    let val = $(this).find('div').text();
                    $(this).find('div').html('<input type="text" style="width: 95%" value="' + val + '" />');
                });

                $(this).addClass('on');
            });

            // 저장 버튼
            pop.find('.btn_blk').on('click', function () {
                let input = pop.find('input');
                let tr = pop.find('tr.on');

                let data = {
                    table_nm: 'job020',
                    key: tr.data('key'),
                    item: [],
                };

                $.each(input, function (i) {
                    data.item[i] = {
                        key: $(this).data('key'),
                        value: $(this).val().replace(/,/gi, ''),
                    };
                });

                ajax.put_job020(data);
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
                    $clone.find('td:eq(2) div').text(this.COMP_NAME);

                    $table.append($clone.clone(true));
                })

                pop.fadeIn(500);
            });

            // 종목명 선택
            pop.find('.col2fl tbody tr:eq(0)').on('click', function () {
                if ($(this).hasClass('on')) {
                    return;
                }
                pop.find('.col2fl tbody tr').removeClass('on');
                $(this).addClass('on');

                let SECT_KEY = pop.find('tr.on td:eq(0)').text();
                let job015 = handle_ajax.get_table({
                    table_nm: 'job015_copy',
                    where: ['SECT_KEY', SECT_KEY],
                    orderby: ['COMP_DATE', 'ASC']
                });
                let $table = pop.find('.col2fr table tbody');
                let $clone = pop.find('.col2fr tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden');

                pop.find('.col2fr tbody tr:not(:eq(0))').remove();

                let now = moment().subtract(10, 'day');
                $.each(job015, function (i) {
                    let date = moment(now).add(i, 'day').format('YYYY-MM-DD')
                    $clone.find('td:eq(0)').text(this.COMP_DATE);
                    $clone.find('td:eq(1)').text(date);
                    $clone.find('td:eq(2) div').text(nf.format(this.COMP_PRICE));

                    $table.append($clone.clone(true));
                });

                pop.find('.col2fr').removeClass('hidden');

                $.each(pop.find('.col2fl tbody tr'), function () {
                    let val = $(this).find('input').val();
                    $(this).find('td:eq(2) div').text(val);
                });

                let val = $(this).find('td:eq(2) div').text();
                $(this).find('td:eq(2) div').html('' +
                    '<input type="text" style="width: 95%" value="' + val + '" />' +
                    '');
                put_COMP_NAME();
            });

            // 주식종목 개별 가격 조정
            pop.find('.col2fr tbody tr').on('click', function () {
                if ($(this).hasClass('on')) {
                    return;
                }
                let val = $(this).find('td:eq(2) div').text();
                pop.find('.col2fr tbody tr').removeClass('on');

                $.each(pop.find('.col2fr tbody tr'), function () {
                    let val = $(this).find('input').val();
                    $(this).find('td:eq(2) div').text(val);
                });

                $(this).find('td:eq(2) div').html('' +
                    '<input type="text" style="width: 95%" value="' + val + '" />' +
                    '');

                $(this).addClass('on');
                input_event();
            });

            // 주식종목 종목명 변경
            let put_COMP_NAME = function () {
                pop.find('.col2fl tbody tr input').on('blur', function () {
                    let index1 = pop.find('.col2fl tbody tr:not(:eq(0))').index(pop.find('.col2fl tbody tr.on'));
                    let COMP_NAME = $(this).val();

                    $.ajax({
                        async: false,
                        dataType: 'json',
                        type: 'post',
                        data: {
                            COMP_CODE: mdata.COMP_DATA[index1].COMP_CODE,
                            COMP_NAME: COMP_NAME,
                        },
                        url: '/admin/put_COMP_NAME',
                        success: function (data, status, xhr) {
                        }
                    });
                });
            };

            // 주식종목 개별 가격 저장
            let input_event = function () {
                pop.find('.col2fr tbody tr input').on('blur', function () {
                    let index1 = pop.find('.col2fl tbody tr:not(:eq(0))').index(pop.find('.col2fl tbody tr.on'));
                    let index2 = pop.find('.col2fr tbody tr.on td:eq(0)').text();
                    let job015, COMP_PRICE;

                    if (index1 < 0 || index2 < 0) {
                        alert('종목 및 변경데이터 선택해 주세요.');
                        return;
                    }

                    COMP_PRICE = pop.find('.col2fr tbody tr.on input').val().replace(/,/gi, '');

                    $.ajax({
                        async: false,
                        dataType: 'json',
                        type: 'post',
                        data: {
                            COMP_CODE: mdata.COMP_DATA[index1].COMP_CODE,
                            COMP_DATE: index2,
                            COMP_PRICE: COMP_PRICE,
                        },
                        url: '/admin/put_COMP_PRICE',
                        success: function (data, status, xhr) {
                            job015 = data;
                        }
                    });
                });
            };

            // 주식종목 가격 조정
            pop.find('.btn_play').on('click', function () {
                let index = pop.find('.col2fl tbody tr:not(:eq(0))').index(pop.find('.col2fl tbody tr.on'));
                let job015;

                if (index < 0) {
                    alert('종목을 선택해 주세요.');
                    return;
                }

                $.ajax({
                    async: false,
                    dataType: 'json',
                    type: 'post',
                    data: {
                        COMP_CODE: mdata.COMP_DATA[index].COMP_CODE,
                        adjust: $('input[name="adjust"]').val()
                    },
                    url: '/admin/put_adjust',
                    success: function (data, status, xhr) {
                        job015 = data;
                    }
                });

                let $table = pop.find('.col2fr table tbody');
                let $clone = pop.find('.col2fr tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden');

                pop.find('.col2fr tbody tr:not(:eq(0))').remove();

                let now = moment().subtract(10, 'day');
                $.each(job015, function (i) {
                    let date = moment(now).add(i, 'day').format('YYYY-MM-DD')
                    $clone.find('td:eq(0)').text(this.COMP_DATE);
                    $clone.find('td:eq(1)').text(date);
                    $clone.find('td:eq(2)').text(nf.format(this.COMP_PRICE));

                    $table.append($clone.clone(true));
                });

                alert('가격 정보 조정 완료');
            });
        })();

        // 종합주가 관리
        (function () {
            let pop = $('.wrap_layerpop:eq(5)');

            $('.btn_adgre:eq(1)').on('click', function () {
                let job013 = handle_ajax.get_table({
                    table_nm: 'job013',
                    where: ['KOS_DATE', '1'],
                    // orderby: ['MKEY', 'ASC']
                });
                let $table = pop.find('.col2fl table tbody');
                let $clone = pop.find('.col2fl tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden').css('cursor', 'pointer');

                pop.find('.col2fl tbody tr:not(:eq(0))').remove();

                $.each(job013, function (i) {
                    $clone.find('td:eq(0)').text(i+1);
                    $clone.find('td:eq(1)').text(this.KOS_NAME);
                    $clone.find('td:eq(2) div').text(this.KOS_RATE);

                    $table.append($clone.clone(true));
                });

                pop.fadeIn(500);
            });

            // 코드명 선택
            pop.find('.col2fl tbody tr:eq(0)').on('click', function () {
                if ($(this).hasClass('on')) {
                    return;
                }
                pop.find('.col2fl tbody tr').removeClass('on');
                $(this).addClass('on');

                $.each(pop.find('.col2fl tbody tr'), function () {
                    let val = $(this).find('input').val();
                    $(this).find('td:eq(2) div').text(val);
                });

                let val = $(this).find('td:eq(2) div').text();
                $(this).find('td:eq(2) div').html('' +
                    '<input type="text" style="width: 95%" value="' + val + '" />' +
                    '');
            });

            // 저장
            pop.find('.btn_blk').on('click', function () {
                let KOS_NAME = pop.find('.col2fl tr.on td:eq(1)').text();
                let KOS_RATE = pop.find('.col2fl tr.on input').val();

                $.each(pop.find('.col2fl tbody tr'), function () {
                    let val = $(this).find('input').val();
                    $(this).find('td:eq(2) div').text(val);
                });
                pop.find('.col2fl tbody tr').removeClass('on');

                $.ajax({
                    async: false,
                    dataType: 'json',
                    type: 'post',
                    data: {
                        KOS_NAME: KOS_NAME,
                        KOS_RATE: KOS_RATE,
                    },
                    url: '/admin/put_KOS_RATE',
                    success: function (data, status, xhr) {
                    }
                });
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
            let $table = $('.btmtbl:eq(0) table:eq(1) tbody');

            $table.find('tr:not(:eq(0))').hide(500);
            $table.find('tr:not(:eq(0))').remove();

            $.each(mdata.NEWS, function (i) {
                let $clone = $table.find('tr:eq(0)').clone(true);
                let self = this;

                if (this.SEND === "1") {
                    $clone.find('td:eq(0) a').removeClass('btn_send').addClass('btn_sendon').text('전송됨');
                } else {
                    $clone.find('td:eq(0) a').removeClass('btn_sendon').addClass('btn_send').text('전송');
                }
                $clone.find('td:eq(1)').text(this.NEWS_HEAD);

                if (this.UPDOWN === "1") {
                    $clone.find('td:eq(2)').text('오름' + '(' + this.PERCENT + '%)');
                } else {
                    $clone.find('td:eq(2)').text('내림' + '(' + this.PERCENT + '%)');
                }

                $table.append($clone.clone(true));
            });

            $table.find('tr:not(:eq(0))').show(500);
        })();

        // 이 시간 뉴스 전송
        (function () {
            let $table = $('.btmtbl:eq(0) table:eq(1) tbody');

            $table.find('.btn_send').on('click', function () {
                let index = $('.btmtbl:eq(0) table a:not(:eq(0))').index($(this));

                $.ajax({
                    async: false,
                    dataType: 'json',
                    type: 'post',
                    data: {
                        NEWS_KEY: mdata.NEWS[index].NEWS_KEY
                    },
                    url: '/admin/put_NEWS',
                });
                $(this).removeClass('btn_send').addClass('btn_sendon').text('전송됨');
            })
        })();

        // 이 시간 뉴스 팝업
        (function () {
            let pop = $('.wrap_layerpop:eq(3)');

            $('.btn_adyee:eq(2)').on('click', function () {
                let job016 = handle_ajax.get_table({
                    table_nm: 'job016_copy',
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

                let NEWS_KEY = pop.find('.box_tbllist:eq(0) tr.on td:eq(0)').text();
                let job016 = handle_ajax.get_table({
                    table_nm: 'job016_copy',
                    where: ['NEWS_KEY', NEWS_KEY],
                    // orderby: ['MKEY', 'ASC']
                });

                let $table = pop.find('.box_tbllist:eq(1) table tbody');
                let $clone = pop.find('.box_tbllist:eq(1) tbody tr:eq(0)')
                    .clone(true)
                    .removeClass('hidden');

                pop.find('.box_tbllist:eq(1) tbody tr:not(:eq(0))').remove();

                $.each(job016, function (i) {
                    pop.find('input:eq(0)').val(this.NEWS_HEAD);
                    pop.find('textarea').val(this.NEWS_FILE);
                    pop.find('input[type="number"]').val(parseInt(this.PERCENT));

                    pop.find('input[value=' + this.UPDOWN + ']').prop('checked', true);
                });

                pop.find('.box_tbllist:eq(1)').removeClass('hidden');
            });

            // 뉴스 수정
            pop.find('.btn_blk').on('click', function () {
                let NEWS_KEY = pop.find('.box_tbllist:eq(0) tr.on td:eq(0)').text() || null;

                if (NEWS_KEY !== null) {
                    let data = {
                        KEY: NEWS_KEY,
                        NEWS_HEAD: pop.find('input:eq(0)').val(),
                        NEWS_FILE: pop.find('textarea').val(),
                        PERCENT: pop.find('input[type="number"]').val(),
                        UPDOWN: pop.find('input[type="radio"]:checked').val(),
                    };
                    ajax.put_NEWS_CONTENTS(data);
                }
            });
        })();

        // 애널리스트 분석
        (function () {
            let $table = $('.btmtbl:eq(1) table:eq(1) tbody');

            $table.find('tr:not(:eq(0))').hide(500);
            $table.find('tr:not(:eq(0))').remove();

            $.each(mdata.ANAL, function (i) {
                let $clone = $table.find('tr:eq(0)').clone(true);
                let self = this;

                if (this.SEND === "1") {
                    $clone.find('td:eq(0) a').addClass('btn_sendon').text('전송됨');
                } else {
                    $clone.find('td:eq(0) a').addClass('btn_send').text('전송');
                }
                $clone.find('td:eq(1)').text(this.ANAL_HEAD);

                if (this.UPDOWN === "1") {
                    $clone.find('td:eq(2)').text('오름' + '(' + this.PERCENT + '%)');
                } else {
                    $clone.find('td:eq(2)').text('내림' + '(' + this.PERCENT + '%)');
                }

                $table.append($clone.clone(true));
            });

            $table.find('tr:not(:eq(0))').show(500);
        })();

        // 애널리스트 전송
        (function () {
            let $table = $('.btmtbl:eq(1) table:eq(1) tbody');

            $table.find('.btn_send').on('click', function () {
                let index = $('.btmtbl:eq(1) table a:not(:eq(0))').index($(this));

                $.ajax({
                    async: false,
                    dataType: 'json',
                    type: 'post',
                    data: {
                        ANAL_KEY: mdata.ANAL[index].ANAL_KEY
                    },
                    url: '/admin/put_ANAL',
                });
                $(this).removeClass('btn_send').addClass('btn_sendon').text('전송됨');
            })
        })();

        // 애널리스트 분석 팝업
        (function () {
            let pop = $('.wrap_layerpop:eq(4)');

            $('.btn_adyee:eq(3)').on('click', function () {
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

                let ANAL_KEY = pop.find('.box_tbllist:eq(0) tr.on td:eq(0)').text();
                let job017 = handle_ajax.get_table({
                    table_nm: 'job017_copy',
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
                    let up_down = (this.UPDOWN === '1') ? '오름' : '내림';

                    pop.find('input:eq(0)').val(this.ANAL_HEAD);
                    pop.find('textarea').val(this.ANAL_FILE);
                    pop.find('input[type="number"]').val(parseInt(this.PERCENT));
                    pop.find('input[value=' + up_down + ']').prop('checked', true);
                });

                pop.find('.box_tbllist:eq(1)').removeClass('hidden');
            });

            // 뉴스 수정
            pop.find('.btn_blk').on('click', function () {
                let ANAL_KEY = pop.find('.box_tbllist:eq(0) tr.on td:eq(0)').text() || null;

                if (ANAL_KEY !== null) {
                    let data = {
                        KEY: ANAL_KEY,
                        ANAL_HEAD: pop.find('input:eq(0)').val(),
                        ANAL_FILE: pop.find('textarea').val(),
                        PERCENT: pop.find('input[type="number"]').val(),
                        UPDOWN: pop.find('input[type="radio"]:checked').val(),
                    };
                    ajax.put_ANAL_CONTENTS(data);
                }
            });
        })();
    })();

    handle_ui();

});

