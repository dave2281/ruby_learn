// ==UserScript==
// @name         hold
// @namespace    http://tampermonkey.net/
// @version      2.0
// @description  a;ld;asld
// @author       Junky
// @license      MIT
// @match        https://agarpowers.xyz/
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    var $ = window.$;
    var typeKill = 66

    function pressEnter() {
    $("#canvas").trigger($.Event("keydown", { keyCode: 13}));
    $("#canvas").trigger($.Event("keyup", { keyCode: 13}));
}

    function pressSlash() {
        $("#canvas").trigger($.Event("keydown", { keyCode: 191}));
        $("#canvas").trigger($.Event("keyup", { keyCode: 191}));
}
    function pressK() {
        $("#canvas").trigger($.Event("keydown", { keyCode: 75}));
        $("#canvas").trigger($.Event("keyup", { keyCode: 75}));
}
    function pressI() {
        $("#canvas").trigger($.Event("keydown", { keyCode: 73}));
        $("#canvas").trigger($.Event("keyup", { keyCode: 73}));
}

    function pressL() {
        $("#canvas").trigger($.Event("keydown", { keyCode: 76}));
        $("#canvas").trigger($.Event("keyup", { keyCode: 76}));
}

     window.addEventListener('keydown', keydown);
    function keydown(event) {
    if (event.keyCode == typeKill) {
        pressEnter()
        pressSlash()
        pressK()
        pressI()
        pressL()
        pressL()
        pressEnter()
    }
}
})();