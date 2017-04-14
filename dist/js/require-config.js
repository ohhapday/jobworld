/**
 * Created by 서정석 on 2016/11/24.
 * requirejs config 파일
 */
var requirejs = ({
    urlArgs: "ts=20170413",
    baseUrl: "/bower_components",
    paths: {
        // 플러그인 정의
        'jquery': 'jquery/dist/jquery.min',
        'jquery-ui': 'jquery-ui/jquery-ui.min',
        'bootstrap': 'bootstrap/dist/js/bootstrap',
        'icheck': 'iCheck/icheck.min',
        'select2': 'select2/dist/js/select2.min',
        'select2-ko': 'select2/dist/js/i18n/ko',
        'faloading': 'jquery-loading/dist/jquery.loading.min',
        'moment': 'moment/min/moment-with-locales.min',
        'datetimepicker': 'eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min',
        'ckeditor': 'ckeditor_no_bower/ckeditor',
        'jquery-slimscroll': 'jquery-slimscroll/jquery.slimscroll.min',
        /* 사용자 정의 플러그인 */
        'session': '../dist/js/common/session',
        'myFn': '../dist/js/common/myFn',
        'common': '../dist/js/common',
    },
    shim: {
        'bootstrap': ['jquery'],
        'icheck': ['jquery'],
        'select2': ['jquery'],
        'select2-ko': ['jquery', 'select2'],
        'faloading': ['jquery'],
        'moment': {
            export: 'moment',
            deps: ['jquery']
        },
        'datetimepicker': {
            deps: ['jquery', 'moment'],
        },
        'ckeditor': {
            export: 'CKEDITOR',
            deps: ['jquery']
        },
        'jquery-slimscroll': ['jquery'],
        /* 사용자 정의 */
        'common': ['jquery'],
    }
});