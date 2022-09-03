<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CRM Dashboard</title>

    <!-- Prevent the demo from appearing in search engines -->
    <meta name="robots" content="noindex">

    <link href="https://fonts.googleapis.com/css?family=Lato:400,700%7CRoboto:400,500%7CExo+2:600&display=swap"
          rel="stylesheet">

    <!-- Perfect Scrollbar -->
    <link type="text/css" href="<c:url value="/resources/assets/vendor/perfect-scrollbar.css"/>" rel="stylesheet">

    <!-- Material Design Icons -->
    <link type="text/css" href="<c:url value="/resources/assets/css/material-icons.css"/>" rel="stylesheet">


    <!-- Font Awesome Icons -->
    <link type="text/css" href="<c:url value="/resources/assets/css/fontawesome.css"/>" rel="stylesheet">


    <!-- Preloader -->
    <link type="text/css" href="<c:url value="/resources/assets/css/preloader.css"/>" rel="stylesheet">


    <!-- App CSS -->
    <link type="text/css" href="<c:url value="/resources/assets/css/app.css"/>" rel="stylesheet">

    <!-- Flatpickr -->
    <link type="text/css" href="<c:url value="/resources/assets/css/flatpickr.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/resources/assets/css/flatpickr-airbnb.css"/>" rel="stylesheet">

    <!-- Select2 -->
    <link type="text/css" href="<c:url value="/resources/assets/css/select2.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/resources/assets/vendor/select2/select2.min.css"/>" rel="stylesheet">

</head>
<body class="layout-sticky layout-sticky-subnav">
<%@include file="/WEB-INF/views/layouts/preloader.jsp" %>
<!-- Header Layout -->
<div class="mdk-header-layout js-mdk-header-layout">
    <!-- Header -->
    <%@include file="/WEB-INF/views/layouts/admin/header.jsp" %>
    <!-- // END Header -->

    <!-- Header Layout Content -->
    <div class="mdk-header-layout__content" style="margin-top: -64px">

        <!-- Drawer Layout -->
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">

            <!-- Drawer Layout Content -->
            <div class="mdk-drawer-layout__content page-content mt-5">
                <div class="pt-32pt">
                    <div class="container-fluid page__container d-flex flex-column flex-md-row align-items-center text-center text-sm-left">
                        <div class="flex d-flex flex-column flex-sm-row align-items-center">

                            <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                                <h2 class="mb-0">Earnings</h2>

                                <ol class="breadcrumb p-0 m-0">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                                    <li class="breadcrumb-item active">

                                        Earnings

                                    </li>

                                </ol>

                            </div>
                        </div>


                    </div>
                </div>

                <div class="page-section border-bottom-2">
                    <div class="container-fluid page__container">

                        <div class="row">
                            <div class="col-lg-4">
                                <div class="card border-1 border-left-3 border-left-accent text-center mb-lg-0">
                                    <div class="card-body">
                                        <h4 class="h2 mb-0">1,569 Students</h4>
                                        <div>Total - 20,023 Students</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card text-center mb-lg-0">
                                    <div class="card-body">
                                        <h4 class="h2 mb-0">117 Instructors</h4>
                                        <div>Total - 500 Instructors</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card text-center mb-lg-0">
                                    <div class="card-body">
                                        <h4 class="h2 mb-0">50 Courses</h4>
                                        <div>Total - 100 Courses</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="container-fluid page__container page-section">
                    <div class="page-separator">
                        <div class="page-separator__text">Overview</div>
                    </div>

                    <div class="row mb-8pt">
                        <div class="col-lg-9">
                            <div class="card mb-lg-32pt">
                                <div class="card-header d-flex align-items-center">
                                    <strong class="card-title">Revenue</strong>
                                </div>
                                <div class="card-body">
                                    <div class="chart-legend mt-0 mb-24pt justify-content-start"
                                         id="ordersChartLegend"></div>
                                    <div class="chart">
                                        <canvas id="revenueChart" class="chart-canvas js-update-chart-bar"
                                                data-chart-legend="#ordersChartLegend" data-chart-prefix=""
                                                data-chart-suffix=" VNĐ"
                                                data-chart-line-background-color="gradient:primary"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card p-2">
                                <div class="flex" style="max-width: 100%">
                                    <div class="form-group">
                                        <input checked type="radio" class="mr-1" name="filter">
                                        <label class="form-label" for="day">Day</label>
                                        <div class="flatpickr-wrapper flatpickr-calendar-right d-flex ml-auto">
                                            <div id="recent_orders_date" data-toggle="flatpickr" data-flatpickr-wrap="true"
                                                 data-flatpickr-static="true" data-flatpickr-mode="range"
                                                 data-flatpickr-alt-format="d/m/Y"
                                                 data-flatpickr-date-format="d/m/Y">
                                                <a href="javascript:void(0)" class="link-date" data-toggle>13/03/2018 to
                                                    20/03/2018</a>
                                                <input id="day" class="d-none" type="hidden" value="13/03/2018 to 20/03/2018"
                                                       data-input>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="radio" class="mr-1" name="filter">
                                        <label class="form-label" for="month">Month</label>
                                        <select name="month" id="month" data-toggle="select" class="form-control" >
                                            <option  value="2022">2022</option>
                                            <option  value="2021">2021</option>
                                            <option  value="2020">2020</option>
                                            <option  value="2019">2019</option>
                                            <option  value="2018">2018</option>
                                            <option  value="2017">2017</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="radio" class="mr-1" name="filter">
                                        <label class="form-label" for="quarter">Month</label>
                                        <select name="quarter" id="quarter" data-toggle="select" class="form-control" >
                                            <option  value="2022">2022</option>
                                            <option  value="2021">2021</option>
                                            <option  value="2020">2020</option>
                                            <option  value="2019">2019</option>
                                            <option  value="2018">2018</option>
                                            <option  value="2017">2017</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="radio" class="mr-1" name="filter">
                                        <label class="form-label" for="year">Year</label>
                                        <select name="quarter" id="year" class="form-control custom-select" >
                                            <option value="5">5 years ago</option>
                                            <option value="10">10 years ago</option>
                                            <option value="5">15 years ago</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="page-separator">
                        <div class="page-separator__text">Transactions</div>
                    </div>

                    <div class="card mb-0">
                        <div data-toggle="lists" data-lists-values='[
      "js-lists-values-course", 
      "js-lists-values-revenue",
      "js-lists-values-fees"
    ]' data-lists-sort-by="js-lists-values-revenue" data-lists-sort-desc="true" class="table-responsive">
                            <table class="table table-nowrap table-flush">
                                <thead>
                                <tr class="text-uppercase small">
                                    <th>
                                        <a href="javascript:void(0)" class="sort"
                                           data-sort="js-lists-values-course">Course</a>
                                    </th>
                                    <th class="text-center" style="width:130px">
                                        <a href="javascript:void(0)" class="sort"
                                           data-sort="js-lists-values-fees">Fees</a>
                                    </th>
                                    <th class="text-center" style="width:130px">
                                        <a href="javascript:void(0)" class="sort"
                                           data-sort="js-lists-values-revenue">Revenue</a>
                                    </th>
                                </tr>
                                </thead>


                                <tbody class="list">

                                <tr>
                                    <td>
                                        <div class="media flex-nowrap align-items-center">
                                            <a href="boxed-instructor-edit-course.html"
                                               class="avatar avatar-4by3 overlay overlay--primary mr-12pt">
                                                <img src="<c:url value="/resources/assets/images/paths/angular_routing_200x168.png"/>"
                                                     alt="course" class="avatar-img rounded">
                                                <span class="overlay__content"></span>
                                            </a>
                                            <div class="media-body">
                                                <a class="text-body js-lists-values-course"
                                                   href="boxed-instructor-edit-course.html"><strong>Angular Routing
                                                    In-Depth</strong></a>
                                                <div class="text-muted small">34 Sales</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-center text-black-70">

                                        &dollar;<span class="js-lists-values-fees">120</span> USD

                                    </td>
                                    <td class="text-center text-black-70">
                                        &dollar;<span class="js-lists-values-revenue">8,737</span> USD
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <div class="media flex-nowrap align-items-center">
                                            <a href="boxed-instructor-edit-course.html"
                                               class="avatar avatar-4by3 overlay overlay--primary mr-12pt">
                                                <img src="<c:url value="/resources/assets/images/paths/angular_testing_200x168.png"/>"
                                                     alt="course" class="avatar-img rounded">
                                                <span class="overlay__content"></span>
                                            </a>
                                            <div class="media-body">
                                                <a class="text-body js-lists-values-course"
                                                   href="boxed-instructor-edit-course.html"><strong>Angular Unit
                                                    Testing</strong></a>
                                                <div class="text-muted small">38 Sales</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-center text-black-70">

                                        <span class="js-lists-values-fees sr-only">0</span>
                                        <i class="material-icons text-muted">remove</i>

                                    </td>
                                    <td class="text-center text-black-70">
                                        &dollar;<span class="js-lists-values-revenue">2,521</span> USD
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <div class="media flex-nowrap align-items-center">
                                            <a href="boxed-instructor-edit-course.html"
                                               class="avatar avatar-4by3 overlay overlay--primary mr-12pt">
                                                <img src="<c:url value="/resources/assets/images/paths/typescript_200x168.png"/>"
                                                     alt="course" class="avatar-img rounded">
                                                <span class="overlay__content"></span>
                                            </a>
                                            <div class="media-body">
                                                <a class="text-body js-lists-values-course"
                                                   href="boxed-instructor-edit-course.html"><strong>Introduction to
                                                    TypeScript</strong></a>
                                                <div class="text-muted small">8 Sales</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-center text-black-70">

                                        <span class="js-lists-values-fees sr-only">0</span>
                                        <i class="material-icons text-muted">remove</i>

                                    </td>
                                    <td class="text-center text-black-70">
                                        &dollar;<span class="js-lists-values-revenue">1,413</span> USD
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <div class="media flex-nowrap align-items-center">
                                            <a href="boxed-instructor-edit-course.html"
                                               class="avatar avatar-4by3 overlay overlay--primary mr-12pt">
                                                <img src="<c:url value="/resources/assets/images/paths/angular_200x168.png"/>"
                                                     alt="course" class="avatar-img rounded">
                                                <span class="overlay__content"></span>
                                            </a>
                                            <div class="media-body">
                                                <a class="text-body js-lists-values-course"
                                                   href="boxed-instructor-edit-course.html"><strong>Learn Angular
                                                    Fundamentals</strong></a>
                                                <div class="text-muted small">31 Sales</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-center text-black-70">

                                        <span class="js-lists-values-fees sr-only">0</span>
                                        <i class="material-icons text-muted">remove</i>

                                    </td>
                                    <td class="text-center text-black-70">
                                        &dollar;<span class="js-lists-values-revenue">1,234</span> USD
                                    </td>
                                </tr>

                                </tbody>
                                <tfoot class="text-right">
                                <tr>
                                    <td>


                                        <ul class="pagination justify-content-start pagination-xsm m-0">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" aria-label="Previous">
                                                        <span aria-hidden="true"
                                                              class="material-icons">chevron_left</span>
                                                    <span>Prev</span>
                                                </a>
                                            </li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Page 1">
                                                    <span>1</span>
                                                </a>
                                            </li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Page 2">
                                                    <span>2</span>
                                                </a>
                                            </li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Next">
                                                    <span>Next</span>
                                                    <span aria-hidden="true"
                                                          class="material-icons">chevron_right</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </td>
                                    <td colspan="2">Total <i class="material-icons text-muted">remove</i> <strong>&dollar;6,129
                                        USD</strong></td>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>

                <%@include file="/WEB-INF/views/layouts/admin/footer.jsp" %>
            </div>

            <!-- drawer -->
            <%@include file="/WEB-INF/views/layouts/admin/drawer.jsp" %>
            <!-- // END drawer -->
        </div>
    </div>
    <!-- // END Header Layout -->

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

    <!-- Flatpickr -->
    <script src="<c:url value="/resources/assets/vendor/flatpickr/flatpickr.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/js/flatpickr.js"/>"></script>

    <!-- Global Settings -->
    <script src="<c:url value="/resources/assets/js/settings.js"/>"></script>

    <!-- Chart.js -->
    <script src="<c:url value="/resources/assets/vendor/Chart.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/js/chartjs-rounded-bar.js"/>"></script>
    <script src="<c:url value="/resources/assets/js/chartjs.js"/>"></script>

    <!-- Chart.js Samples -->
    <script src="<c:url value="/resources/assets/js/script.js"/>"></script>

    <!-- List.js -->
    <script src="<c:url value="/resources/assets/vendor/list.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/js/list.js"/>"></script>

    <!-- Select2 -->
    <script src="<c:url value="/resources/assets/vendor/select2/select2.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/js/select2.js"/>"></script>

    <script>
        var drawer = document.querySelector(".mdk-drawer-layout");

        drawer.style.overflow = "auto";
    </script>
</body>
</html>
