<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Dashboard</title>

    <!-- Prevent the demo from appearing in search engines -->
    <meta name="robots" content="noindex">

    <link href="https://fonts.googleapis.com/css?family=Lato:400,700%7CRoboto:400,500%7CExo+2:600&display=swap"
          rel="stylesheet">

    <!-- Perfect Scrollbar -->
    <link type="text/css" href="<c:url value="/resources/assets/vendor/perfect-scrollbar.css"/>" rel="stylesheet">

    <!-- Fix Footer CSS -->
    <link type="text/css" href="<c:url value="/resources/assets/vendor/fix-footer.css"/>" rel="stylesheet">

    <!-- Material Design Icons -->
    <link type="text/css" href="<c:url value="/resources/assets/css/material-icons.css"/>" rel="stylesheet">


    <!-- Font Awesome Icons -->
    <link type="text/css" href="<c:url value="/resources/assets/css/fontawesome.css"/>" rel="stylesheet">


    <!-- Preloader -->
    <link type="text/css" href="<c:url value="/resources/assets/css/preloader.css"/>" rel="stylesheet">


    <!-- App CSS -->
    <link type="text/css" href="<c:url value="/resources/assets/css/app.css"/>" rel="stylesheet">


</head>

<body class="layout-app ">
<%@include file="/WEB-INF/views/layouts/preloader.jsp" %>

<div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
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
                        <a href="instructor-earnings.html" class="btn btn-outline-secondary">All courses</a>
                    </div>
                </div>

            </div>
        </div>


        <div class="page-section border-bottom-2">
            <div class="container page__container">

                <div class="row">
                    <div class="col-lg-4">
                        <div class="card border-1 border-left-3 border-left-accent text-center mb-lg-0">
                            <div class="card-body">
                                <h4 class="h2 mb-0">&dollar;1,569.00</h4>
                                <div>Earnings this month</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card text-center mb-lg-0">
                            <div class="card-body">
                                <h4 class="h2 mb-0">&dollar;3,917.80</h4>
                                <div>Account Balance</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card text-center mb-lg-0">
                            <div class="card-body">
                                <h4 class="h2 mb-0">&dollar;10,211.50</h4>
                                <div>Total Sales</div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="container page__container page-section">

            <div class="page-separator">
                <div class="page-separator__text">Earnings</div>
            </div>
            <div class="card card-body mb-32pt">
                <div id="legend" class="chart-legend mt-0 mb-24pt justify-content-start"></div>
                <div class="chart" style="height: 320px;">
                    <canvas id="earningsChart" class="chart-canvas js-update-chart-bar" data-chart-legend="#legend"
                            data-chart-line-background-color="gradient:primary,gray" data-chart-prefix="$"
                            data-chart-suffix="k"></canvas>
                </div>
            </div>


            <div class="page-separator">
                <div class="page-separator__text">Transactions</div>
            </div>
            <div class="card">
                <div data-toggle="lists" data-lists-values='[
      "js-lists-values-course",
      "js-lists-values-document",
      "js-lists-values-amount",
      "js-lists-values-date"
    ]' data-lists-sort-by="js-lists-values-date" data-lists-sort-desc="true" class="table-responsive">
                    <table class="table table-flush table-nowrap">
                        <thead>
                        <tr>
                            <th colspan="2">
                                <a href="javascript:void(0)" class="sort"
                                   data-sort="js-lists-values-course">Course</a>
                                <a href="javascript:void(0)" class="sort"
                                   data-sort="js-lists-values-document">Document</a>
                                <a href="javascript:void(0)" class="sort"
                                   data-sort="js-lists-values-amount">Amount</a>
                                <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-date">Date</a>
                            </th>
                        </tr>
                        </thead>
                        <tbody class="list">


                        <tr>
                            <td>
                                <div class="d-flex flex-nowrap align-items-center">
                                    <a href="instructor-edit-course.html"
                                       class="avatar avatar-4by3 overlay overlay--primary mr-12pt">
                                        <img src="<c:url value="/resources/assets/images/paths/angular_routing_200x168.png"/>"
                                             alt="course" class="avatar-img rounded">
                                        <span class="overlay__content"></span>
                                    </a>
                                    <div class="flex">
                                        <a class="card-title js-lists-values-course"
                                           href="instructor-edit-course.html">Angular Routing In-Depth</a>
                                        <small class="text-muted mr-1">
                                            Invoice
                                            <a href="invoice.html" style="color: inherit;"
                                               class="js-lists-values-document">#8734</a> -
                                            &dollar;<span class="js-lists-values-amount">89</span> USD
                                        </small>
                                    </div>
                                </div>
                            </td>
                            <td class="text-right">
                                <small class="text-muted text-uppercase js-lists-values-date">12 Nov 2018</small>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div class="d-flex flex-nowrap align-items-center">
                                    <a href="instructor-edit-course.html"
                                       class="avatar avatar-4by3 overlay overlay--primary mr-12pt">
                                        <img src="<c:url value="/resources/assets/images/paths/angular_testing_200x168.png"/>"
                                             alt="course" class="avatar-img rounded">
                                        <span class="overlay__content"></span>
                                    </a>
                                    <div class="flex">
                                        <a class="card-title js-lists-values-course"
                                           href="instructor-edit-course.html">Angular Unit Testing</a>
                                        <small class="text-muted mr-1">
                                            Invoice
                                            <a href="invoice.html" style="color: inherit;"
                                               class="js-lists-values-document">#8735</a> -
                                            &dollar;<span class="js-lists-values-amount">89</span> USD
                                        </small>
                                    </div>
                                </div>
                            </td>
                            <td class="text-right">
                                <small class="text-muted text-uppercase js-lists-values-date">13 Nov 2018</small>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div class="d-flex flex-nowrap align-items-center">
                                    <a href="instructor-edit-course.html"
                                       class="avatar avatar-4by3 overlay overlay--primary mr-12pt">
                                        <img src="<c:url value="/resources/assets/images/paths/typescript_200x168.png"/>"
                                             alt="course" class="avatar-img rounded">
                                        <span class="overlay__content"></span>
                                    </a>
                                    <div class="flex">
                                        <a class="card-title js-lists-values-course"
                                           href="instructor-edit-course.html">Introduction to TypeScript</a>
                                        <small class="text-muted mr-1">
                                            Invoice
                                            <a href="invoice.html" style="color: inherit;"
                                               class="js-lists-values-document">#8736</a> -
                                            &dollar;<span class="js-lists-values-amount">89</span> USD
                                        </small>
                                    </div>
                                </div>
                            </td>
                            <td class="text-right">
                                <small class="text-muted text-uppercase js-lists-values-date">14 Nov 2018</small>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div class="d-flex flex-nowrap align-items-center">
                                    <a href="instructor-edit-course.html"
                                       class="avatar avatar-4by3 overlay overlay--primary mr-12pt">
                                        <img src="<c:url value="/resources/assets/images/paths/angular_200x168.png"/>"
                                             alt="course" class="avatar-img rounded">
                                        <span class="overlay__content"></span>
                                    </a>
                                    <div class="flex">
                                        <a class="card-title js-lists-values-course"
                                           href="instructor-edit-course.html">Learn Angular Fundamentals</a>
                                        <small class="text-muted mr-1">
                                            Invoice
                                            <a href="invoice.html" style="color: inherit;"
                                               class="js-lists-values-document">#8737</a> -
                                            &dollar;<span class="js-lists-values-amount">89</span> USD
                                        </small>
                                    </div>
                                </div>
                            </td>
                            <td class="text-right">
                                <small class="text-muted text-uppercase js-lists-values-date">15 Nov 2018</small>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!--    footer -->
        <%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
        <!--  end footer -->
    </div>

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


<script>
    var drawer = document.querySelector(".mdk-drawer-layout");

    drawer.style.overflow = "auto";
</script>

<!-- Global Settings -->
<script src="<c:url value="/resources/assets/js/settings.js"/>"></script>

<!-- Moment.js -->
<script src="<c:url value="/resources/assets/vendor/moment.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/moment-range.min.js"/>"></script>

<!-- Chart.js -->
<script src="<c:url value="/resources/assets/vendor/Chart.min.js"/>"></script>

<!-- UI Charts Page JS -->
<script src="<c:url value="/resources/assets/js/chartjs-rounded-bar.js"/>"></script>
<script src="<c:url value="/resources/assets/js/chartjs.js"/>"></script>

<!-- Chart.js Samples -->
<script src="<c:url value="/resources/assets/js/page.instructor-dashboard.js"/>"></script>

<!-- List.js -->
<script src="<c:url value="/resources/assets/vendor/list.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/list.js"/>"></script>
</body>
</html>
