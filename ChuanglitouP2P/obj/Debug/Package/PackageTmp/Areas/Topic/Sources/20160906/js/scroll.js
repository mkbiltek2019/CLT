﻿!
function (a, b) {
    "function" == typeof define && define.amd ? define(b) : "object" == typeof exports ? module.exports = b(require, exports, module) : a.CountUp = b()
}(this,
function () {
    var d = function (a, b, c, d, e, f) {
        for (var g = 0,
        h = ["webkit", "moz", "ms", "o"], i = 0; i < h.length && !window.requestAnimationFrame; ++i) window.requestAnimationFrame = window[h[i] + "RequestAnimationFrame"],
        window.cancelAnimationFrame = window[h[i] + "CancelAnimationFrame"] || window[h[i] + "CancelRequestAnimationFrame"];
        window.requestAnimationFrame || (window.requestAnimationFrame = function (a) {
            var c = (new Date).getTime(),
            d = Math.max(0, 16 - (c - g)),
            e = window.setTimeout(function () {
                a(c + d)
            },
            d);
            return g = c + d,
            e
        }),
        window.cancelAnimationFrame || (window.cancelAnimationFrame = function (a) {
            clearTimeout(a)
        }),
        this.options = {
            useEasing: !0,
            useGrouping: !0,
            separator: ",",
            decimal: "."
        };
        for (var j in f) f.hasOwnProperty(j) && (this.options[j] = f[j]);
        "" === this.options.separator && (this.options.useGrouping = !1),
        this.options.prefix || (this.options.prefix = ""),
        this.options.suffix || (this.options.suffix = ""),
        this.d = "string" == typeof a ? document.getElementById(a) : a,
        this.startVal = Number(b),
        isNaN(b) && (this.startVal = Number(b.match(/[\d]+/g).join(""))),
        this.endVal = Number(c),
        isNaN(c) && (this.endVal = Number(c.match(/[\d]+/g).join(""))),
        this.countDown = this.startVal > this.endVal,
        this.frameVal = this.startVal,
        this.decimals = Math.max(0, d || 0),
        this.dec = Math.pow(10, this.decimals),
        this.duration = 1e3 * Number(e) || 2e3;
        var k = this;
        this.version = function () {
            return "1.5.3"
        },
        this.printValue = function (a) {
            var b = isNaN(a) ? "--" : k.formatNumber(a);
            "INPUT" == k.d.tagName ? this.d.value = b : "text" == k.d.tagName ? this.d.textContent = b : this.d.innerHTML = b
        },
        this.easeOutExpo = function (a, b, c, d) {
            return 1024 * c * (-Math.pow(2, -10 * a / d) + 1) / 1023 + b
        },
        this.count = function (a) {
            k.startTime || (k.startTime = a),
            k.timestamp = a;
            var b = a - k.startTime;
            k.remaining = k.duration - b,
            k.frameVal = k.options.useEasing ? k.countDown ? k.startVal - k.easeOutExpo(b, 0, k.startVal - k.endVal, k.duration) : k.easeOutExpo(b, k.startVal, k.endVal - k.startVal, k.duration) : k.countDown ? k.startVal - (k.startVal - k.endVal) * (b / k.duration) : k.startVal + (k.endVal - k.startVal) * (b / k.duration),
            k.frameVal = k.countDown ? k.frameVal < k.endVal ? k.endVal : k.frameVal : k.frameVal > k.endVal ? k.endVal : k.frameVal,
            k.frameVal = Math.round(k.frameVal * k.dec) / k.dec,
            k.printValue(k.frameVal),
            b < k.duration ? k.rAF = requestAnimationFrame(k.count) : k.callback && k.callback()
        },
        this.start = function (a) {
            return k.callback = a,
            isNaN(k.endVal) || isNaN(k.startVal) || k.startVal === k.endVal ? (console.log("countUp error: startVal or endVal is not a number"), k.printValue(c)) : k.rAF = requestAnimationFrame(k.count),
            !1
        },
        this.pauseResume = function () {
            k.paused ? (k.paused = !1, delete k.startTime, k.duration = k.remaining, k.startVal = k.frameVal, requestAnimationFrame(k.count)) : (k.paused = !0, cancelAnimationFrame(k.rAF))
        },
        this.reset = function () {
            k.paused = !1,
            delete k.startTime,
            k.startVal = b,
            cancelAnimationFrame(k.rAF),
            k.printValue(k.startVal)
        },
        this.update = function (a) {
            cancelAnimationFrame(k.rAF),
            k.paused = !1,
            delete k.startTime,
            k.startVal = k.frameVal,
            k.endVal = Number(a),
            k.countDown = k.startVal > k.endVal,
            k.rAF = requestAnimationFrame(k.count)
        },
        this.formatNumber = function (a) {
            a = a.toFixed(k.decimals),
            a += "";
            var b, c, d, e;
            if (b = a.split("."), c = b[0], d = b.length > 1 ? k.options.decimal + b[1] : "", e = /(\d+)(\d{3})/, k.options.useGrouping)

            for (; e.test(c) ;)
                    c = c.replace(e, "$1" + k.options.separator + "$2");

            var newC = ""; 
            if (c != "0")
            {
                var nc = "";
                for (var i =0; i<c.length;i++)
                {
                    var temp = c.substring(i, i + 1);
                    if(temp!=",")
                        nc += this.options.prefix + temp + this.options.suffix;
                    else
                        nc += temp ;
                }
            }
             
            return  nc 
        },
        k.printValue(k.startVal)
    };
    return d
});