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
                            <h2 class="mb-0">CRM Dashboard</h2>

                            <ol class="breadcrumb p-0 m-0">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                                <li class="breadcrumb-item active">

                                    CRM Dashboard

                                </li>

                            </ol>

                        </div>
                    </div>


                    <div class="row" role="tablist">
                        <div class="col-auto">
                            <a href="" class="btn btn-outline-secondary"><span
                                    class="icon--left material-icons icon-16pt">add</span> New Course</a>
                        </div>
                    </div>

                </div>
            </div>


            <div class="container page__container page-section">
                <div class="page-separator">
                    <div class="page-separator__text">Users</div>
                </div>

                <div class="card mb-lg-32pt">

                    <div class="table-responsive" data-toggle="lists" data-lists-sort-by="js-lists-values-date"
                         data-lists-sort-desc="true"
                         data-lists-values='["js-lists-values-name", "js-lists-values-company", "js-lists-values-phone", "js-lists-values-date"]'>


                        <table class="table mb-0 thead-border-top-0 table-nowrap">
                            <thead>
                            <tr>

                                <th style="width: 18px;" class="pr-0">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input js-toggle-check-all"
                                               data-target="#clients" id="customCheckAll_clients">
                                        <label class="custom-control-label" for="customCheckAll_clients"><span
                                                class="text-hide">Toggle all</span></label>
                                    </div>
                                </th>

                                <th>
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-name">Name</a>
                                </th>

                                <th style="width: 150px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-company">Company</a>
                                </th>


                                <th style="width: 37px;">Tags</th>


                                <th style="width: 48px;">
                                    <a href="javascript:void(0)" class="sort"
                                       data-sort="js-lists-values-phone">Phone</a>
                                </th>

                                <th style="width: 120px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-date">Added</a>
                                </th>
                                <th style="width: 24px;"></th>
                            </tr>
                            </thead>
                            <tbody class="list" id="clients">

                            <tr>

                                <td class="pr-0">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input js-check-selected-row"
                                               id="customCheck1_clients_1">
                                        <label class="custom-control-label" for="customCheck1_clients_1"><span
                                                class="text-hide">Check</span></label>
                                    </div>
                                </td>

                                <td>

                                    <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                        <div class="avatar avatar-sm mr-8pt">


                                            <span class="avatar-title rounded-circle">BN</span>

                                        </div>
                                        <div class="media-body">


                                            <div class="d-flex flex-column">
                                                <p class="mb-0"><strong class="js-lists-values-name">Billy
                                                    Nunez</strong></p>
                                                <small class="js-lists-values-email text-50">annabell.kris@yahoo.com</small>
                                            </div>


                                        </div>
                                    </div>

                                </td>

                                <td>

                                    <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                        <div class="avatar avatar-sm mr-8pt">
                                            <span class="avatar-title rounded bg-warning">FM</span>
                                        </div>
                                        <div class="media-body">
                                            <div class="d-flex flex-column">
                                                <small class="js-lists-values-company"><strong>Frontend Matter
                                                    Inc.</strong></small>
                                                <small class="js-lists-values-location text-50">Leuschkefurt</small>
                                            </div>
                                        </div>
                                    </div>

                                </td>


                                <td>


                                    <a href="" class="chip chip-outline-secondary">User</a>


                                </td>


                                <td>
                                    <small class="js-lists-values-phone text-50">239-721-3649</small>
                                </td>

                                <td>
                                    <small class="js-lists-values-date text-50">19 February 2019</small>
                                </td>
                                <td class="text-right">
                                    <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                </td>
                            </tr>

                            <tr>

                                <td class="pr-0">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input js-check-selected-row"
                                               id="customCheck1_clients_2">
                                        <label class="custom-control-label" for="customCheck1_clients_2"><span
                                                class="text-hide">Check</span></label>
                                    </div>
                                </td>

                                <td>

                                    <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                        <div class="avatar avatar-sm mr-8pt">


                                            <span class="avatar-title rounded-circle">TP</span>

                                        </div>
                                        <div class="media-body">


                                            <div class="d-flex flex-column">
                                                <p class="mb-0"><strong class="js-lists-values-name">Tony Parks</strong>
                                                </p>
                                                <small class="js-lists-values-email text-50">vida_glover@gmail.com</small>
                                            </div>


                                        </div>
                                    </div>

                                </td>

                                <td>

                                    <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                        <div class="avatar avatar-sm mr-8pt">
                                            <span class="avatar-title rounded bg-accent">HH</span>
                                        </div>
                                        <div class="media-body">
                                            <div class="d-flex flex-column">
                                                <small class="js-lists-values-company"><strong>Huma Huma
                                                    Inc.</strong></small>
                                                <small class="js-lists-values-location text-50">Mayerberg</small>
                                            </div>
                                        </div>
                                    </div>

                                </td>


                                <td>


                                    <a href="" class="chip chip-outline-secondary">Admin</a>


                                </td>


                                <td>
                                    <small class="js-lists-values-phone text-50">169-769-4821</small>
                                </td>

                                <td>
                                    <small class="js-lists-values-date text-50">18 February 2019</small>
                                </td>
                                <td class="text-right">
                                    <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                </td>
                            </tr>

                            <tr class="selected">

                                <td class="pr-0">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input js-check-selected-row"
                                               checked="" id="customCheck1_clients_3">
                                        <label class="custom-control-label" for="customCheck1_clients_3"><span
                                                class="text-hide">Check</span></label>
                                    </div>
                                </td>

                                <td>

                                    <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                        <div class="avatar avatar-sm mr-8pt">

                                            <img src="assets/images/people/110/guy-1.jpg" alt="Avatar"
                                                 class="avatar-img rounded-circle">


                                        </div>
                                        <div class="media-body">


                                            <div class="d-flex flex-column">
                                                <p class="mb-0"><strong class="js-lists-values-name">Gilbert
                                                    Barrett</strong></p>
                                                <small class="js-lists-values-email text-50">paolo.zieme@gmail.com</small>
                                            </div>


                                        </div>
                                    </div>

                                </td>

                                <td>

                                </td>


                                <td>


                                    <a href="" class="chip chip-outline-secondary">Admin</a>


                                </td>


                                <td>
                                    <small class="js-lists-values-phone text-50">462-060-7408</small>
                                </td>

                                <td>
                                    <small class="js-lists-values-date text-50">17 February 2019</small>
                                </td>
                                <td class="text-right">
                                    <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                </td>
                            </tr>

                            <tr class="selected">

                                <td class="pr-0">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input js-check-selected-row"
                                               checked="" id="customCheck1_clients_4">
                                        <label class="custom-control-label" for="customCheck1_clients_4"><span
                                                class="text-hide">Check</span></label>
                                    </div>
                                </td>

                                <td>

                                    <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                        <div class="avatar avatar-sm mr-8pt">

                                            <img src="assets/images/people/110/guy-2.jpg" alt="Avatar"
                                                 class="avatar-img rounded-circle">


                                        </div>
                                        <div class="media-body">


                                            <div class="d-flex flex-column">
                                                <p class="mb-0"><strong class="js-lists-values-name">Ollie
                                                    Wallace</strong></p>
                                                <small class="js-lists-values-email text-50">lorna_kirlin@nora.biz</small>
                                            </div>


                                        </div>
                                    </div>

                                </td>

                                <td>

                                </td>


                                <td>


                                    <a href="" class="chip chip-outline-secondary">Manager</a>


                                </td>


                                <td>
                                    <small class="js-lists-values-phone text-50">285-626-6050</small>
                                </td>

                                <td>
                                    <small class="js-lists-values-date text-50">16 February 2019</small>
                                </td>
                                <td class="text-right">
                                    <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
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
<script src="<c:url value="/resources/assets/js/page.crm-dashboard.js"/>"></script>

<!-- List.js -->
<script src="<c:url value="/resources/assets/vendor/list.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/list.js"/>"></script>

<!-- Tables -->
<script src="<c:url value="/resources/assets/js/toggle-check-all.js"/>"></script>
<script src="<c:url value="/resources/assets/js/check-selected-row.js"/>"></script>


<script>
    var drawer = document.querySelector(".mdk-drawer-layout");

    drawer.style.overflow = "auto";
</script>
</body>
</html>
