var alertType;
typeof app == "undefined" && (this.app = {});
_.templateSettings.interpolate = /\{\{(.+?)\}\}/g;
_.templateSettings.escape = /\{\{-(.+?)\}\}/g;
alertType = ["alert-info", "alert-warning", "alert-error", "alert-success"];
app.getUrlParams = function (n) {
    var u, t, e, f, i, o, s, r, h;
    for (n == null && (n = location.href), u = {}, o = n.substr(n.lastIndexOf("?") + 1), f = o.split("&"), r = 0, h = f.length; r < h; r++)(t = f[r], i = t.indexOf("="), i !== -1) && (e = t.substring(0, i), s = t.substring(i + 1), u[e] = decodeURIComponent(s));
    return u
};
app.isLogined = function () {
    return appConfig.userName ? !0 : !1
};
this.View = {
    render: function (n, t, i) {
        var r, u;
        return i = i ? i : n + "-template", u = $("#" + i).html(), r = _.template(u, t), $("#" + n).html(r)
    }, info: function (n, t, i) {
        return i ? $(n).show().removeClass(alertType.join(" ")).addClass("alert-" + i).html(t) : $(n).show().removeClass(alertType.join(" ")).html(t)
    }, hideInfo: function (n) {
        return $(n).hide()
    }, disableBtn: function (n, t, i) {
        var r, u;
        return t == null && (t = null), i == null && (i = 0), r = $(n), u = r.text(), t && r.text(t), r.prop("disabled", !0).addClass("disabled"), i > 0 ? window.setTimeout(function () {
            return r.text(u), r.prop("disabled", !1)
        }, i) : void 0
    }, activeBtn: function (n, t) {
        var i;
        return t == null && (t = null), i = $(n), t && i.text(t), i.prop("disabled", !1).removeClass("disabled")
    }, clearFormMessage: function (n) {
        return n.find(".control-group").removeClass("error success"), n.find(".help-inline").remove()
    }, clearFieldMessage: function (n, t) {
        return n.find("[name=" + t + "]").closest(".control-group").removeClass("error success").find(".help-inline").remove()
    }, setFieldMessage: function (n, t, i, r) {
        var f, u;
        return i == null && (i = "error"), r == null && (r = ""), f = n.find("[name=" + t + "]"), f.closest(".control-group").addClass(i), r ? (u = f.closest(".controls"), u.find(".help-inline").length === 0 ? u.append('<span class="help-inline">' + r + "<\/span>") : u.find(".help-inline").html(r)) : void 0
    }, setActiveNav: function (n) {
        var r, t, i, u, f;
        return t = $("#main-nav"), r = t.find(".container"), i = $("#main-nav-wrap>li").eq(n), f = i.innerWidth(), u = i.offset().left - r.offset().left, t.find(".border-line").css({
            left: "" + u + "px",
            width: "" + f + "px"
        }).show()
    }, activeNavIndex: 0
};
Validator.register("telephone", function (n) {
    return n ? n.match(/^\d{11}$/) : !0
}, "客官，手机号是11位数字哦！");
Validator.register("billcode", function (n) {
    return n ? n.match(/[A-Z]\d{10,12}|[A-Z]{2}\d{9,11}|[A-Z]{3}\d{8,10}|[A-Z]{4}\d{7,9}|\d{11,16}/ig) : !0
}, "单号是12-14位的数字和字母哦~");
Validator.register("phone", function (n) {
    return n ? n.match(/^[\d\s，,\-]{7,}$/) : !0
}, "号码不对哦！");
Validator.register("county", function (n) {
    return n ? n.split("-").length > 2 : !0
}, "区县不能不填啊亲，不填会导致无法上门取件。"), function () {
    var t, n;
    n = window.urlConfig;
    t = {
        userRegister: {
            url: n.api + "/User/Register",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        userLogin: {
            url: n.api + "/User/Login",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        userLogout: {url: n.api + "/User/Logout"},
        updateUserProfile: {
            url: n.wx + "/User/Profile/Update",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        updateUserPwd: {
            url: n.wx + "/security/updatepwd",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        resetUserPwd: {
            url: n.wx + "/security/password/reset",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        verifyPhone: {
            url: function (t, i) {
                return n.wx + "/security/verifycode/" + t + "?appId=" + appConfig.appId + "&code=" + i
            }, type: "post"
        },
        rebindPhone: {
            url: n.wx + "/security/rebind",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        userAddresses: {url: n.wx + "/AddressList", type: "post"},
        addUserAddress: {url: n.wx + "/InsertUserAddress", type: "post"},
        updateUserAddress: {url: n.wx + "/UpdateAddress", type: "post"},
        removeUserAddress: {url: n.wx + "/DisabledAddress", type: "post"},
        setUserDefaultAddress: {url: n.wx + "/SetDefaultAddresses", type: "post"},
        getUserProfile: urlConfig,
        trackBill: {url: n.api + "/trackBill", type: "post"},
        createOrder: {url: n.wx + "/Order/Create", type: "post"},
        cancelOrder: {
            url: n.wx + "/Order/Cancel",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        deleteOrder: {
            url: n.wx + "/Order/Delete",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        checkOrderBind: {
            url: function (t) {
                return n.wx + "/Order/checkbind/" + t
            }, type: "post"
        },
        querySites: {
            url: n.api + "/site/query",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        querySiteDetail: {
            url: function (t) {
                return n.api + "/site/detail/" + t
            }, type: "post"
        },
        querySiteContact: {
            url: function (t) {
                return n.api + "/site/contact/" + t
            }, type: "get"
        },
        faqs: {url: n.api + "/FAQ/GetFAQWithCategory", type: "post"},
        faqCategory: {url: n.api + "/FAQ/GetFAQCategoryList", type: "post"},
        hotCities: {url: n.api + "/hotCities", type: "post"},
        provinces: {url: n.api + "/provinces", type: "post"},
        cities: {url: n.api + "/cities", type: "post"},
        counties: {url: n.api + "/counties", type: "post"},
        citiesByPY: {
            url: function (t) {
                return n.api + "/Address/ProvinceCityQuery/" + t.toUpperCase()
            }, type: "post"
        },
        feedback: {
            url: n.api + "/LeaveMessage/Add",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        feedbackQuery: {
            url: n.api + "/LeaveMessage/Search",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        news: {
            url: n.api + "/News/Published",
            type: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8"
        },
        newsCategory: {url: n.api + "/NewsCategory", type: "get"},
        newsDetail: {url: n.api + "/News/Content/", type: "get"},
        smsVerification: {url: "" + n.wx + n.wxVerificationCodePath, type: "post"},
        verifyCode: {url: n.web + "/captcha/verify", type: "post"},
        refreshVerifyCode: {url: n.web + "/captcha/refresh", type: "post"},
        queryServiceSiteInfo: {url: n.q9api + "/serviceSite/queryServiceSiteInfo", type: "post"},
        call: function (n, i, r) {
            var u;
            return r == null && (r = !0), i = i || {}, i.data || (i.data = {}), i.data.appId || (i.data.appId = appConfig.appId), i.data = r ? JSON.stringify(i.data) : i.data, i = $.extend({}, t[n], i), u = $.cookie("X-Authorization"), u && (i.headers = {"X-Authorization": u}), $.ajax(i)
        }
    };
    typeof module != "undefined" && module.exports != null ? module.exports = t : window.api = t
}.call(this), function () {
    var n, e, t, u, i, o, s, y, a, r, p, c, w, f, b, k, l, v, h, d;
    this.DistrictSelector = function () {
        function n(n) {
            var i, t;
            if (this.input = $(n), i = this.input, t = this, this.input.length === 0)throw"invalid input";
            this.input.attr("autocomplete", "off");
            this.province = this.city = this.county = "";
            this.input.on("focus click", function (n) {
                return function (t) {
                    return t.stopPropagation(), t.target.select(), l(n)
                }
            }(this));
            this.input.next("i").click(function (n) {
                return n.stopPropagation(), l(t)
            });
            this.input.on("click mouseup", function () {
                return function (n) {
                    return n.stopPropagation(), n.target.select()
                }
            }(this));
            b(this.input);
            a || y()
        }

        return n.prototype.insertVal = function (n) {
            var t;
            return this.input.val(n), t = this.input.attr("district-trigger"), t ? this.input.trigger(t) : void 0
        }, n.prototype.selectHotCity = function (n) {
            return n = n.split(","), this.city = n[0], this.province = n[1], h("counties"), this.insertVal("" + this.province + "-" + this.city), r({
                api: api.counties,
                wrapId: "district-counties",
                data: {name: this.city, province: this.province}
            })
        }, n.prototype.selectProvince = function (n) {
            return this.province = n, $.inArray(n, ["北京", "上海", "重庆", "天津"]) >= 0 ? (h("counties"), this.city = "" + this.province + "市", this.insertVal("" + this.province + "-" + this.city), r({
                api: api.counties,
                wrapId: "district-counties",
                data: {name: n + "市", province: n}
            })) : (h("cities"), this.insertVal("" + this.province), r({
                api: api.cities,
                wrapId: "district-cities",
                data: {province: n}
            }))
        }, n.prototype.selectCity = function (n) {
            return this.city = n, h("counties"), this.insertVal("" + this.province + "-" + this.city), r({
                api: api.counties,
                wrapId: "district-counties",
                data: {province: this.province, name: this.city}
            })
        }, n.prototype.selectCounty = function (n) {
            return this.county = n, this.insertVal("" + this.province + "-" + this.city + "-" + this.county), u(), f()
        }, n
    }();
    d = '<div class="district-selector" id="district-selector"> <div class="district-select-results" id="district-select-results"> <ul class="nav nav-tabs"> <li class="active"><a href="#district-hot-cities" data-toggle="tab">常用城市<\/a><\/li> <li><a href="#district-provinces" data-toggle="tab">省<\/a><\/li> <li><a href="#district-cities" data-toggle="untab" onclick="false">市<\/a><\/li> <li><a href="#district-counties" data-toggle="untab" onclick="false">区县<\/a><\/li> <li><a href="#" class="klose">X<\/a><\/li> <\/ul> <div class="tab-content"> <div class="tab-pane active loading" id="district-hot-cities"><\/div> <div class="tab-pane loading" id="district-provinces"><\/div> <div class="tab-pane loading" id="district-cities"><\/div> <div class="tab-pane loading" id="district-counties"><\/div> <\/div> <\/div> <div class="district-py-results hide" id="district-py-results"> <\/div> <script type="text/template" id="district-template"> <ul class="district-items inline unstyled"> <% if(items.length === 0){  %> <li>暂无数据<\/li> <% }else{ %> <% var i = 1; _.each(items,function(item) { if(i <= max){ %> <li class="district-item" title="{{item}}" data-type="{{type}}" data-fullname="{{item}}">{{item.split(",")[0].replace(/省|自治区|壮族|回族|维吾尔|市/g,"").substr(0,5)}}<\/li> <% } i++; }); %> <% } %> <\/ul> <\/script> <script type="text/template" id="district-py-template"> <ul class="district-items unstyled"> <% if(data.citylist.length > 0){  %> <% _.each(data.citylist,function(item) { %> <li class="district-item-py" data-city="{{item.city}}" data-province="{{item.province}}">{{item.province}}-{{item.city}}<\/li> <% }); %> <% }else{ %> <li>没有匹配的城市<\/li> <% } %> <\/ul> <\/script> <\/div>';
    a = !1;
    o = !1;
    i = null;
    k = [];
    t = null;
    n = null;
    e = null;
    s = null;
    w = 300;
    p = 6;
    c = 35;
    r = function (n) {
        var t, i;
        if (n.api.url)return t = n.max ? n.max : 1e4, i = function () {
            switch (!1) {
                case n.wrapId !== "district-hot-cities":
                    return "hotCity";
                case n.wrapId !== "district-provinces":
                    return "province";
                case n.wrapId !== "district-cities":
                    return "city";
                case n.wrapId !== "district-counties":
                    return "county";
                default:
                    return ""
            }
        }(), $.ajax({url: n.api.url, type: n.api.type, dataType: "json", data: n.data}).done(function (r) {
            return $("#" + n.wrapId).removeClass("loading"), View.render(n.wrapId, {
                items: r,
                type: i,
                max: t
            }, "district-template")
        })
    };
    l = function (n) {
        var e, r, s;
        if (n == null && (n = i), r = n.input.offset(), s = r.top + n.input.outerHeight(), e = r.left, t.css({
                top: s,
                left: e
            }), t.show(), !o)$(document).one("click", function () {
            return u(), f(), !0
        });
        return i = n, o = !0
    };
    u = function () {
        return t.hide(), o = !1
    };
    f = function (r) {
        return r == null && (r = i), n.empty().hide(), e.show(), r.province = r.city = r.county = "", t.find(".nav a:first").tab("show"), jQuery("#district-cities,#district-counties").empty().addClass("loading")
    };
    v = function (t) {
        var i, r;
        if (t.length > 0) {
            if (i = t.index(), r = t.position().top, r >= p * c)return n.scrollTop(i * c);
            if (r < 0)return i = i - 5 >= 0 ? i - 5 : 0, n.scrollTop(i * c)
        }
    };
    h = function (n) {
        var i;
        return i = function () {
            switch (!1) {
                case n !== "hotCities":
                    return 0;
                case n !== "provinces":
                    return 1;
                case n !== "cities":
                    return 2;
                case n !== "counties":
                    return 3;
                default:
                    return 0
            }
        }(), t.find(".nav a").eq(i).tab("show")
    };
    b = function (t) {
        t.on("keydown", function (t) {
            var r, e, o, s, h;
            if (n.is(":visible")) {
                if (t.which === 40)return r = n.find(".hover"), e = r.next(".district-item-py"), e.length > 0 && (r.removeClass("hover"), e.addClass("hover"), v(e)), !1;
                if (t.which === 38)return r = n.find(".hover"), o = r.prev(".district-item-py"), o.length > 0 && (r.removeClass("hover"), o.addClass("hover"), v(o)), !1;
                if (t.which === 13)return r = n.find(".hover"), r.length > 0 && (h = r.data("province"), s = r.data("city"), i.insertVal("" + h + "-" + s), u(), f()), !1
            }
        });
        return t.on("keyup", function (t) {
            var i;
            if ($.inArray(t.which, [40, 38, 13, 37, 39]) >= 0)return !1;
            if (o || l(), i = $(this).val(), i) {
                if (i.length > 1)return e.hide(), s !== null && (clearTimeout(s), s = null), s = setTimeout(function () {
                    return api.call("citiesByPY", {
                        url: api.citiesByPY.url(i), success: function (t) {
                            return View.render("district-py-results", {
                                data: t.data,
                                query: i
                            }, "district-py-template"), n.find(".district-item-py:first-child").addClass("hover"), n.show()
                        }
                    })
                }, w)
            } else return n.hide(), e.show()
        })
    };
    y = function () {
        $("body").append(d);
        t = $("#district-selector");
        n = $("#district-py-results");
        e = $("#district-select-results");
        t.find(".nav a[data-toggle]").click(function () {
            var n;
            return n = $(this), n.data("toggle") === "tab" && n.tab("show"), !1
        });
        t.on("click", function (n) {
            return n.stopPropagation()
        });
        return t.delegate(".klose", "click", function (n) {
            return n.stopPropagation(), u(), f(), !1
        }), t.delegate(".district-item", "click", function () {
            var n, r, t, u;
            return n = $(this), t = n.data("type"), u = n.data("fullname"), !!t && i && (r = $.camelCase("select-" + t), i[r](u)), !1
        }), n.delegate(".district-item-py", "click", function () {
            var n, t, r;
            return n = $(this), r = n.data("province"), t = n.data("city"), i.insertVal("" + r + "-" + t), u(), f(), !1
        }), n.delegate(".district-item-py", "mouseover", function () {
            return n.find(".district-item-py").removeClass("hover"), $(this).addClass("hover")
        }), r({api: api.hotCities, wrapId: "district-hot-cities", max: 20}), r({
            api: api.provinces,
            wrapId: "district-provinces"
        }), a = !0
    };
    $(".district-input").each(function () {
        return k.push(new DistrictSelector(this))
    })
}.call(this), function () {
    var s, n, u, f, h, e, t, c, o, i, r;
    $(".addFavorite").click(function () {
        var i, n, t;
        t = "" + location.protocol + "//" + location.host + urlConfig.web;
        n = "百世快递";
        try {
            window.external.addFavorite(t, n)
        } catch (r) {
            i = r;
            try {
                window.sidebar.addPanel(n, t, "")
            } catch (r) {
                i = r;
                alert("请使用Ctrl+D加入收藏")
            }
        }
        return !1
    });
    $(function () {
        return View.setActiveNav(View.activeNavIndex)
    });
    u = $("#main-nav");
    s = u.find(".container");
    n = u.find(".border-line");
    f = $("#main-nav-wrap>li");
    c = !0;
    t = !1;
    r = null;
    i = null;
    h = function () {
        return c = !1
    };
    e = function (n) {
        var t;
        return t = s.offset().left, n.offset().left - t
    };
    o = {done: h, queue: !1};
    f.hover(function () {
        var u, i, f;
        return t = !0, i = $(this), f = i.index(), u = i.find("ul"), u.length > 0 && u.fadeIn(), r && window.clearTimeout(r), r = window.setTimeout(function () {
            var r, u, t, f;
            return f = n.width(), u = i.innerWidth(), t = {}, t.width = "" + u + "px", r = e(i), t.left = "" + r + "px", n.animate(t, o)
        }, 0)
    }, function () {
        var r, u, s;
        return t = !1, u = $(this), r = u.find("ul"), s = u.index(), i && window.clearTimeout(i), r.length > 0 && r.fadeOut(), i = window.setTimeout(function () {
            var r, c, i, u, h, l;
            if (!t)return r = f.eq(View.activeNavIndex), l = n.width(), h = r.innerWidth(), i = {}, i.width = "" + h + "px", u = e(r), i.left = "" + u + "px", c = s, n.animate(i, o)
        }, 200)
    })
}.call(this)