/**
 * Created by 서정석 on 2017/01/16.
 * 결재서류 입력
 * 해당 결재서류 관련 작업은 프로토 타입이므로 17_insert, 17_view로 Fix시켜서 작업함
 * 추후에 고민 필요
 */

requirejs([
    'jquery', 'session', 'orgInfo', 'myFn', 'app', 'select2Search',
    'ckeditor', 'jquery-slimscroll', 'faloading',
], function ($, session, orgInfo, myFn, app, select2Search) {
    "use strict";

    let approval_action = location.pathname.split('/')[3],      // 결재 형태
        document_no = location.pathname.split('/')[4],          // 문서 번호
        form_no = location.pathname.split('/')[5];              // 양식 번호


});

