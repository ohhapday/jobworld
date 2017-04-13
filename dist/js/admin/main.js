/**
 * Created by 서정석 on 2017/04/13.
 *
 */

requirejs([
    'jquery', 'bootstrap',
    'common',

], function ($, bootstrap) {
    "use strict";

    let approval_action = location.pathname.split('/')[3];
    let w_data = null;

    $.ajax({
        async: false,
        dataType: 'json',
        type: 'get',
        url: '',
        success: function (data, status, xhr) {
            w_data = data;
        }
    });
});

