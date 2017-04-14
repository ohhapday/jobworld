"use strict";

importScripts('../require-config.js');

(function () {
    onmessage = function (evt) {
        postMessage(evt.data);
        console.log(evt.data + 'aaaa');
    };
})();