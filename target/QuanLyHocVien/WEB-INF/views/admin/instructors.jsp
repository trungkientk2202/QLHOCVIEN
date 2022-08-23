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
<body class="layout-sticky layout-sticky-subnav ">
<%@include file="/WEB-INF/views/layouts/preloader.jsp" %>
<!-- Header Layout -->
<div class="mdk-header-layout js-mdk-header-layout">
    <!-- Header -->
    <%@include file="/WEB-INF/views/layouts/admin/header.jsp" %>
    <!-- // END Header -->

    <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">

        <!-- Drawer Layout Content -->
        <div class="mdk-drawer-layout__content page-content mt-5">
            <div class="pt-32pt">
                <div class="container page__container d-flex flex-column flex-md-row align-items-center text-center text-sm-left">
                    <div class="flex d-flex flex-column flex-sm-row align-items-center mb-24pt mb-md-0">

                        <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                            <h2 class="mb-0">Instructor</h2>

                            <ol class="breadcrumb p-0 m-0">
                                <li class="breadcrumb-item"><a href="/">Dashboard</a></li>

                                <li class="breadcrumb-item active">

                                    Instructor

                                </li>

                            </ol>

                        </div>
                    </div>


                    <div class="row" role="tablist">
                        <div class="col-auto">
                            <a href="" class="btn btn-outline-secondary"><span
                                    class="icon--left material-icons icon-16pt">add</span>New Instructor</a>
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
                        <div class="col-md-6 col-lg-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div class="position-relative mr-16pt">
                                            <div class="text-center fullbleed d-flex align-items-center justify-content-center flex-column z-0">
                                                <small>92%</small>
                                            </div>
                                            <canvas width="48" height="48" class="chart-canvas position-relative z-1 js-update-chart-progress" id="inTimeProgressChart" data-chart-line-background-color="primary;gray" data-chart-disable-tooltips="true"></canvas>
                                        </div>
                                        <div class="flex">
                                            <strong>In Time</strong>
                                        </div>
                                        <div class="text-50">60</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div class="position-relative mr-16pt">
                                            <div class="text-center fullbleed d-flex align-items-center justify-content-center flex-column z-0">
                                                <small>23%</small>
                                            </div>
                                            <canvas width="48" height="48" class="chart-canvas position-relative z-1 js-update-chart-progress-accent" id="lateProgressChart" data-chart-line-background-color="accent;gray" data-chart-disable-tooltips="true"></canvas>
                                        </div>
                                        <div class="flex">
                                            <strong>In Time</strong>
                                        </div>
                                        <div class="text-50">15</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div class="position-relative mr-16pt">
                                            <div class="text-center fullbleed d-flex align-items-center justify-content-center flex-column z-0">
                                                <small>6%</small>
                                            </div>
                                            <canvas width="48" height="48" class="chart-canvas position-relative z-1" id="absentsProgressChart" data-chart-line-background-color="yellow;gray" data-chart-disable-tooltips="true"></canvas>
                                        </div>
                                        <div class="flex">
                                            <strong>Absents</strong>
                                        </div>
                                        <div class="text-50">4</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div class="position-relative mr-16pt">
                                            <div class="text-center fullbleed d-flex align-items-center justify-content-center flex-column z-0">
                                                <small>1%</small>
                                            </div>
                                            <canvas width="48" height="48" class="chart-canvas position-relative z-1" id="vacationProgressChart" data-chart-line-background-color="yellow;gray" data-chart-disable-tooltips="true"></canvas>
                                        </div>
                                        <div class="flex">
                                            <strong>Vacation</strong>
                                        </div>
                                        <div class="text-50">1</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="page-separator">
                        <div class="page-separator__text">Recently added</div>
                    </div>

                    <div class="card mb-32pt">
                        <div class="table-responsive" data-toggle="lists" data-lists-sort-by="js-lists-values-date" data-lists-sort-desc="true" data-lists-values='["js-lists-values-name", "js-lists-values-department", "js-lists-values-status", "js-lists-values-type", "js-lists-values-phone", "js-lists-values-date"]'>

                            <div class="card-header">
                                <div class="search-form">
                                    <input type="text" class="form-control search" placeholder="Search ...">
                                    <button class="btn" type="button"><i class="material-icons">search</i></button>
                                </div>
                            </div>

                            <table class="table mb-0 thead-border-top-0 table-nowrap">
                                <thead>
                                <tr>

                                    <th style="width: 18px;" class="pr-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-toggle-check-all"
                                                   data-target="#employees" id="customCheckAllemployees">
                                            <label class="custom-control-label" for="customCheckAllemployees"><span
                                                    class="text-hide">Toggle all</span></label>
                                        </div>
                                    </th>

                                    <th>
                                        <a href="javascript:void(0)" class="sort"
                                           data-sort="js-lists-values-name">Name</a>
                                    </th>

                                    <th style="width: 48px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-major">Major</a>
                                    </th>


                                    <th style="width: 48px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-phone">Phone</a>
                                    </th>

                                    <th style="width: 48px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-date">Date
                                            Of Birth</a>
                                    </th>

                                    <th style="width: 48px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-username">Username</a>
                                    </th>

                                    <th style="width: 120px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-desc">Description</a>
                                    </th>

                                    <th></th>
                                </tr>
                                </thead>
                                <tbody class="list" id="employees">

                                <tr>

                                    <td class="pr-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row"
                                                   id="customCheck1_employees1">
                                            <label class="custom-control-label" for="customCheck1_employees1"><span
                                                    class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">


                                                <span class="avatar-title rounded-circle">BN</span>

                                            </div>
                                            <div class="media-body">


                                                <div class="d-flex align-items-center">
                                                    <div class="flex d-flex flex-column">
                                                        <p class="mb-0"><strong class="js-lists-values-name">Billy
                                                            Nunez</strong></p>
                                                        <small class="js-lists-values-email text-50">Degree: Thạc
                                                            Sĩ</small>
                                                    </div>
                                                </div>


                                            </div>
                                        </div>

                                    </td>

                                    <td>
                                        <small class="js-lists-values-major text-50">Công Nghệ Thông Tin</small>
                                    </td>


                                    <td>
                                        <small class="js-lists-values-phone text-50">239-721-3649</small>
                                    </td>

                                    <td>
                                        <small class="js-lists-values-date text-50">19/02/2019</small>
                                    </td>

                                    <td>
                                        <div class="d-flex flex-column">
                                            <small class="js-lists-values-username mb-4pt">letuan0512</small>
                                            <span class="indicator-line rounded bg-warning"></span>
                                        </div>
                                    </td>

                                    <td>
                                        <small class="js-lists-values-desc text-50"
                                               style="display: block;width: 150px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;"
                                               data-toggle="tooltip"
                                               data-title="Lorem ipsum dolor sit amet, consectetur adipiscing
                                            elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua."
                                               data-placement="bottom"
                                               data-boundary="window"
                                        >
                                            Lorem ipsum dolor sit amet, consectetur adipiscing
                                            elit, sed do eiusmod tempor incididunt ut
                                            labore et dolore magna aliqua.
                                        </small>
                                    </td>

                                    <td class="text-right">
                                        <div class="d-inline-flex align-items-center">
                                            <a href="billing-invoice.html"
                                               class="btn btn-sm btn-outline-secondary mr-16pt">Edit
                                                <i class="icon--right material-icons">edit</i></a>
                                            <a href="billing-invoice.html" class="btn btn-sm btn-outline-secondary">Delete
                                                <i class="icon--right material-icons">delete</i></a>
                                        </div>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>

                        <div class="card-footer p-8pt">

                            <ul class="pagination justify-content-start pagination-xsm m-0">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true" class="material-icons">chevron_left</span>
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
                                        <span aria-hidden="true" class="material-icons">chevron_right</span>
                                    </a>
                                </li>
                            </ul>

                        </div>
                        <!-- <div class="card-body bordet-top text-right">
15 <span class="text-50">of 1,430</span> <a href="#" class="text-50"><i class="material-icons ml-1">arrow_forward</i></a>
</div> -->


                    </div>

                </div>
            </div>

            <%@include file="/WEB-INF/views/layouts/admin/footer.jsp" %>
        </div>
        <!-- // END drawer-layout__content -->

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

<!-- Global Settings -->
<script src="<c:url value="/resources/assets/js/settings.js"/>"></script>

<!-- Moment.js -->
<script src="<c:url value="/resources/assets/vendor/moment.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/moment-range.min.js"/>"></script>

<!-- Flatpickr -->
<script src="<c:url value="/resources/assets/vendor/flatpickr/flatpickr.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/flatpickr.js"/>"></script>

<!-- Chart.js -->
<script src="<c:url value="/resources/assets/vendor/Chart.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/chartjs.js"/>"></script>

<!-- Chart.js Samples -->
<script src="<c:url value="/resources/assets/js/page.employees.js"/>"></script>

<!-- List.js -->
<script src="<c:url value="/resources/assets/vendor/list.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/list.js"/>"></script>

<!-- Tables -->
<script src="<c:url value="/resources/assets/js/toggle-check-all.js"/>"></script>
<script src="<c:url value="/resources/assets/js/check-selected-row.js"/>"></script>

<!-- App Settings (safe to remove) -->
<%-- <script src="<c:url value="/resources/assets/js/app-settings.js"/>"></script> --%>

<script>
    var drawer = document.querySelector(".mdk-drawer-layout");

    drawer.style.overflow = "auto";
</script>
</body>
</html>
