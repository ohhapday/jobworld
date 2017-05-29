/**
 * Created by 서정석 on 2017/04/16.
 *
 */

requirejs([
    'jquery', 'bootstrap', 'moment', 'jquery-ui', 'session',
    '/dist/js/main/common.js',         // 공통 처리 js
], function ($, bootstrap, moment, a, session) {
    "use strict";

    $.ajax({
        async: false,
        dataType: 'json',
        type: 'get',
        url: '/main/get_youtube',
        success: function (data, status, xhr) {
            $('iframe').attr('src', data);
        }
    });

});

