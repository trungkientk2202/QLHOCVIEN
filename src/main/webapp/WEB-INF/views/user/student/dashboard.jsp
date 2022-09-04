<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title>Courses</title>

    <!-- Prevent the demo from appearing in search engines -->
    <meta name="robots" content="noindex"/>

    <link
            href="<c:url value="/resources/https://fonts.googleapis.com/css?family=Lato:400,700%7CRoboto:400,500%7CExo+2:600&display=swap"/>"
            rel="stylesheet"
    />

    <!-- Perfect Scrollbar -->
    <link
            type="text/css"
            href="<c:url value="/resources/assets/vendor/perfect-scrollbar.css"/>"
            rel="stylesheet"
    />

    <!-- Fix Footer CSS -->
    <link
            type="text/css"
            href="<c:url value="/resources/assets/vendor/fix-footer.css"/>"
            rel="stylesheet"
    />

    <!-- Material Design Icons -->
    <link
            type="text/css"
            href="<c:url value="/resources/assets/css/material-icons.css"/>"
            rel="stylesheet"
    />

    <!-- Font Awesome Icons -->
    <link type="text/css" href="<c:url value="/resources/assets/css/fontawesome.css"/>" rel="stylesheet"/>

    <!-- Preloader -->
    <link type="text/css" href="<c:url value="/resources/assets/css/preloader.css"/>" rel="stylesheet"/>

    <!-- App CSS -->
    <link type="text/css" href="<c:url value="/resources/assets/css/app.css"/>" rel="stylesheet"/>
</head>
<body class="layout-app">
<%@include file="/WEB-INF/views/layouts/preloader.jsp" %>

<div
        class="mdk-drawer-layout js-mdk-drawer-layout"
        data-push
        data-responsive-width="992px"
>
    <!-- drawer-layout__content -->
    <div class="mdk-drawer-layout__content page-content">
        <!-- Header -->
        <%@include file="/WEB-INF/views/layouts/user/ui-header.jsp" %>
        <!-- // END Header -->

        <div class="pt-32pt">
            <div class="container page__container d-flex flex-column flex-md-row align-items-center text-center text-sm-left">
                <div class="flex d-flex flex-column flex-sm-row align-items-center mb-24pt mb-md-0">

                    <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                        <h2 class="mb-0">Dashboard</h2>

                        <ol class="breadcrumb p-0 m-0">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                            <li class="breadcrumb-item active">

                                Dashboard

                            </li>

                        </ol>

                    </div>
                </div>


                <div class="row" role="tablist">
                    <div class="col-auto">
                        <a href="student-my-courses.html" class="btn btn-outline-secondary">My Courses</a>
                    </div>
                </div>

            </div>
        </div>

        <div class="container page__container">
            <div class="page-section">

                <div class="page-separator">
                    <div class="page-separator__text">Overview</div>
                </div>

                <div class="row mb-lg-8pt">
                    <div class="col-lg-6">

                        <div class="card">
                            <div class="card-header d-flex align-items-center">
                                <div class="h2 mb-0 mr-3">116</div>
                                <div class="flex">
                                    <p class="card-title">Angular</p>
                                    <p class="card-subtitle text-50">Best score</p>
                                </div>
                                <div class="dropdown">
                                    <a href="#" class="btn btn-sm btn-outline-secondary dropdown-toggle"
                                       data-toggle="dropdown">Popular Topics</a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a href="" class="dropdown-item">Popular Topics</a>
                                        <a href="" class="dropdown-item">Web Design</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body p-24pt">
                                <div class="chart" style="height: 344px;">
                                    <canvas id="courseChart" class="chart-canvas js-update-chart-line"
                                            data-chart-hide-axes="true" data-chart-points="true"
                                            data-chart-suffix=" points" data-chart-line-border-color="primary"></canvas>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-6">

                        <div class="card">
                            <div class="card-header d-flex align-items-center border-0">
                                <div class="h2 mb-0 mr-3">432</div>
                                <div class="flex">
                                    <p class="card-title">Experience IQ</p>
                                    <p class="card-subtitle text-50">4 days streak this week</p>
                                </div>
                                <i class="material-icons text-muted ml-2">trending_up</i>
                            </div>
                            <div class="card-body pt-0">
                                <div class="chart" style="height: 128px;">
                                    <canvas id="iqChart" class="chart-canvas js-update-chart-line"
                                            data-chart-hide-axes="false" data-chart-points="true" data-chart-suffix="pt"
                                            data-chart-line-border-color="primary"></canvas>
                                </div>
                            </div>
                        </div>


                        <div id="carouselExampleFade" class="carousel carousel-card slide mb-24pt">
                            <div class="carousel-inner">

                                <div class="carousel-item active">

                                    <a class="card border-0 mb-0" href="">
                                        <img src="<c:url value="/resources/assets/images/achievements/flinto.png" />" alt="Flinto" class="card-img"
                                             style="max-height: 100%; width: initial;">
                                        <div class="fullbleed bg-primary" style="opacity: .5;"></div>
                                        <span class="card-body d-flex flex-column align-items-center justify-content-center fullbleed">
                                                <span class="row flex-nowrap">
                                                    <span class="col-auto text-center d-flex flex-column justify-content-center align-items-center">
                                                        <span class="h5 text-white text-uppercase font-weight-normal m-0 d-block">Achievement</span>
                                                        <span class="text-white-60 d-block mb-24pt">Jun 5, 2018</span>
                                                    </span>
                                                    <span class="col d-flex flex-column">
                                                        <span class="text-right flex mb-16pt">
                                                            <img src="<c:url value="/resources/assets/images/paths/flinto_40x40@2x.png" />"
                                                                 width="64" alt="Flinto" class="rounded">
                                                        </span>
                                                    </span>
                                                </span>
                                                <span class="row flex-nowrap">
                                                    <span class="col-auto text-center d-flex flex-column justify-content-center align-items-center">
                                                        <img src="<c:url value="/resources/assets/images/illustration/achievement/128/white.png" />"
                                                             width="64" alt="achievement">
                                                    </span>
                                                    <span class="col d-flex flex-column">
                                                        <span>
                                                            <span class="card-title text-white mb-4pt d-block">Flinto</span>
                                                            <span class="text-white-60">Introduction to The App Design Application</span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                    </a>

                                </div>

                                <div class="carousel-item">

                                    <a class="card border-0 mb-0" href="">
                                        <img src="<c:url value="/resources/assets/images/achievements/angular.png" />" alt="Angular fundamentals"
                                             class="card-img" style="max-height: 100%; width: initial;">
                                        <div class="fullbleed bg-primary" style="opacity: .5;"></div>
                                        <span class="card-body d-flex flex-column align-items-center justify-content-center fullbleed">
                                                <span class="row flex-nowrap">
                                                    <span class="col-auto text-center d-flex flex-column justify-content-center align-items-center">
                                                        <span class="h5 text-white text-uppercase font-weight-normal m-0 d-block">Achievement</span>
                                                        <span class="text-white-60 d-block mb-24pt">Jun 5, 2018</span>
                                                    </span>
                                                    <span class="col d-flex flex-column">
                                                        <span class="text-right flex mb-16pt">
                                                            <img src="<c:url value="/resources/assets/images/paths/angular_64x64.png" />" width="64"
                                                                 alt="Angular fundamentals" class="rounded">
                                                        </span>
                                                    </span>
                                                </span>
                                                <span class="row flex-nowrap">
                                                    <span class="col-auto text-center d-flex flex-column justify-content-center align-items-center">
                                                        <img src="<c:url value="/resources/assets/images/illustration/achievement/128/white.png" />"
                                                             width="64" alt="achievement">
                                                    </span>
                                                    <span class="col d-flex flex-column">
                                                        <span>
                                                            <span class="card-title text-white mb-4pt d-block">Angular fundamentals</span>
                                                            <span class="text-white-60">Creating and Communicating Between Angular Components</span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                    </a>

                                </div>

                            </div>
                            <a class="carousel-control-next" href="#carouselExampleFade" role="button"
                               data-slide="next">
                                <span class="carousel-control-icon material-icons" aria-hidden="true">keyboard_arrow_right</span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>


                    </div>
                </div>
            </div>
        </div>

        <!--    footer -->
        <%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
        <!--  end footer -->
    </div>
    <!-- // END drawer-layout__content -->

    <!-- drawer -->
    <%@include file="/WEB-INF/views/layouts/user/drawer.jsp" %>
    <!-- END drawer -->
</div>

<!-- jQuery -->
<script src="<c:url value="/resources/assets/vendor/jquery.min.js"/>"></script>

<!-- Bootstrap -->
<script src="<c:url value="/resources/assets/vendor/popper.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/bootstrap.min.js"/>"></script>

<!-- Perfect Scrollbar -->
<script src="<c:url value="/resources/assets/vendor/perfect-scrollbar.min.js"/>"></script>

<!-- DOM Factory -->
<script src="<c:url value="/resources/assets/vendor/dom-factory.js"/>"></script>

<!-- MDK -->
<script src="<c:url value="/resources/assets/vendor/material-design-kit.js"/>"></script>

<!-- Fix Footer -->
<script src="<c:url value="/resources/assets/vendor/fix-footer.js"/>"></script>

<!-- App JS -->
<script src="<c:url value="/resources/assets/js/app.js"/>"></script>

<!-- Global Settings -->
<script src="<c:url value="/resources/assets/js/settings.js" />"></script>

<!-- Flatpickr -->
<script src="<c:url value="/resources/assets/vendor/flatpickr/flatpickr.min.js" />"></script>
<script src="<c:url value="/resources/assets/js/flatpickr.js" />"></script>

<!-- Moment.js -->
<script src="<c:url value="/resources/assets/vendor/moment.min.js" />"></script>
<script src="<c:url value="/resources/assets/vendor/moment-range.min.js" />"></script>

<!-- Chart.js -->
<script src="<c:url value="/resources/assets/vendor/Chart.min.js" />"></script>
<script src="<c:url value="/resources/assets/js/chartjs.js" />"></script>

<!-- Chart.js Samples -->
<script>
    const chart = function (e) {
        var t = {};

        function r(n) {
            if (t[n]) return t[n].exports;
            var o = t[n] = {i: n, l: !1, exports: {}};
            return e[n].call(o.exports, o, o.exports, r), o.l = !0, o.exports
        }

        r.m = e, r.c = t, r.d = function (e, t, n) {
            r.o(e, t) || Object.defineProperty(e, t, {enumerable: !0, get: n})
        }, r.r = function (e) {
            "undefined" != typeof Symbol && Symbol.toStringTag && Object.defineProperty(e, Symbol.toStringTag, {value: "Module"}), Object.defineProperty(e, "__esModule", {value: !0})
        }, r.t = function (e, t) {
            if (1 & t && (e = r(e)), 8 & t) return e;
            if (4 & t && "object" == typeof e && e && e.__esModule) return e;
            var n = Object.create(null);
            if (r.r(n), Object.defineProperty(n, "default", {
                enumerable: !0,
                value: e
            }), 2 & t && "string" != typeof e) for (var o in e) r.d(n, o, function (t) {
                return e[t]
            }.bind(null, o));
            return n
        }, r.n = function (e) {
            var t = e && e.__esModule ? function () {
                return e.default
            } : function () {
                return e
            };
            return r.d(t, "a", t), t
        }, r.o = function (e, t) {
            return Object.prototype.hasOwnProperty.call(e, t)
        }, r.p = "/", r(r.s = 397)
    };
    chart({
        397: function (e, t, r) {
            e.exports = r(398)
        }, 398: function (e, t) {
            !function () {
                "use strict";
                var e = [], t = moment().subtract(6, "days").format("YYYY-MM-DD"), r = moment().format("YYYY-MM-DD");
                moment.range(t, r).by("days", (function (t) {
                    e.push({y: Math.floor(200 * Math.random()) + 15, x: t.toDate()})
                }));
                !function (t) {
                    var r = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : "line",
                        n = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : {};
                    n = Chart.helpers.merge({
                        scales: {
                            yAxes: [{ticks: {maxTicksLimit: 4}}],
                            xAxes: [{
                                gridLines: {display: !1},
                                type: "time",
                                distribution: "series",
                                time: {unit: "day", stepSize: 1, autoSkip: !1, displayFormats: {day: "ddd"}}
                            }]
                        }
                    }, n);
                    var o = {datasets: [{label: "Experience IQ", data: e}]};
                    Charts.create(t, r, n, o)
                }("#iqChart"), function (e) {
                    var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : "radar",
                        r = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : {}, n = {
                            labels: ["JavaScript", "HTML", "Flinto", "Vue.js", "Sketch", "Priciple", "CSS", "Angular"],
                            datasets: [{
                                label: "Experience IQ",
                                data: [30, 35, 33, 32, 31, 30, 28, 36],
                                borderJoinStyle: "bevel",
                                lineTension: .1
                            }]
                        };
                    Charts.create(e, t, r, n)
                }("#courseChart")
            }()
        }
    });
</script>

<!-- List.js -->
<script src="<c:url value="/resources/assets/vendor/list.min.js" />"></script>
<script src="<c:url value="/resources/assets/js/list.js" />"></script>

<!-- Tables -->
<script src="<c:url value="/resources/assets/js/toggle-check-all.js" />"></script>
<script src="<c:url value="/resources/assets/js/check-selected-row.js" />"></script>

<script>
    var drawer = document.querySelector(".mdk-drawer-layout");

    drawer.style.overflow = "auto";
</script>

</body>
</html>
