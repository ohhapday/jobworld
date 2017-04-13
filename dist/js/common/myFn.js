/**
 * Created by 서정석 on 2016/12/10.
 * 공용 함수 목록
 */

define(['jquery', 'bootstrap', 'icheck',], function ($) {
    "use strict";

    // url에서 Get param 추출 함수
    var getQueryParam = function (param) {
        var result = window.location.search.match(
            new RegExp("(\\?|&)" + param + "(\\[\\])?=([^&]*)")
        );
        return result ? result[3] : false;
    }

    // RGB 코드를 헥사코드로 변환
    var RgbHex = {
        hexDigits: new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"),
        rgb2hex: function (rgb) {
            rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
            return "#" + this.hex(rgb[1]) + this.hex(rgb[2]) + this.hex(rgb[3]);
        },
        hex: function (x) {
            return isNaN(x) ? "00" : this.hexDigits[(x - x % 16) / 16] + this.hexDigits[x % 16];
        }
    }

    // HTML 문서 초기화 자동 실행
    var default_init = {
        _init: function () {
            this.icheck();
            window.alert = this.alert;
        },
        icheck: function () {
            //iCheck for checkbox and radio inputs
            $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue'
            });
            //Red color scheme for iCheck
            $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                checkboxClass: 'icheckbox_square-red',
                radioClass: 'iradio_square-red'
            });
            //Flat red color scheme for iCheck
            $('input[type="checkbox"].minimal-green, input[type="radio"].minimal-green').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green'
            });
        },
        alert: function (message, action, url) {
            var html = ' \
                <div class="modal alert fade" id="my_alert"> \
                    <div class="modal-dialog"> \
                        <div class="modal-content" style="border-radius: 4px; margin: 0 auto"> \
                            <div class="alert alert-info alert-dismissible"> \
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button> \
                                <h4><i class="icon fa fa-info"></i> Notice</h4> \
                                <span></span> \
                            </div> \
                        </div> \
                    </div> \
                </div>';

            if ($('#my_alert.modal .alert').length == 0) {
                $('body').append(html);
            }

            $('#my_alert.modal .alert .modal-content').width(400);
            $('#my_alert.modal .alert span').html(message);
            $('#my_alert.modal').modal('show');

            setTimeout(function () {
                $('#my_alert.modal').modal('hide');
            }, 5000);

            if (action === 'close') {
                setTimeout(function () {
                    window.close();
                }, 1000);
            }

            if (url) {
                setTimeout(function () {
                    $(location).attr('href', url);
                }, 2000);
            }
        },
    };

    // 자동실행해야할 함수 목록
    (function () {
        default_init._init();
    })();

    return {
        default_init: default_init,
        getQueryParam: getQueryParam,
        rgb2hex: RgbHex.rgb2hex,
        hex: RgbHex.hex,
    }
});