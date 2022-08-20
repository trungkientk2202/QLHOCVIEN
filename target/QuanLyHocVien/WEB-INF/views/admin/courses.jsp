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
            <div class="container page__container page-section pb-0">
                <h1 class="h2 mb-0">Tables</h1>
                <ol class="breadcrumb m-0 p-0">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Components</li>
                    <li class="breadcrumb-item active">Tables</li>
                </ol>
            </div>


            <div class="container page__container page-section">
                <div class="page-separator">
                    <div class="page-separator__text">Users</div>
                </div>

                <div class="card mb-lg-32pt">

                    <div class="table-responsive" data-toggle="lists" data-lists-sort-by="js-lists-values-employee-name"
                         data-lists-values='["js-lists-values-employee-name", "js-lists-values-employer-name", "js-lists-values-projects", "js-lists-values-activity", "js-lists-values-earnings"]'>

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
                                               data-target="#users" id="customCheckAllusers">
                                        <label class="custom-control-label" for="customCheckAllusers"><span
                                                class="text-hide">Toggle all</span></label>
                                    </div>
                                </th>

                                <th>
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-employee-name">Employee</a>
                                </th>

                                <th style="width: 150px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-employer-name">Employer</a>
                                </th>


                                <th class="text-center" style="width: 48px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-projects">Projects</a>
                                </th>


                                <th style="width: 37px;">Status</th>

                                <th style="width: 120px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-activity">Activity</a>
                                </th>
                                <th style="width: 51px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-earnings">Earnings</a>
                                </th>
                                <th style="width: 24px;" class="pl-0"></th>
                            </tr>
                            </thead>
                            <tbody class="list" id="users">

                            <tr class="selected">

                                <td class="pr-0">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input js-check-selected-row"
                                               checked="" id="customCheck1_users1">
                                        <label class="custom-control-label" for="customCheck1_users1"><span
                                                class="text-hide">Check</span></label>
                                    </div>
                                </td>

                                <td>

                                    <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                        <div class="avatar avatar-sm mr-8pt">

                                            <img src="<c:url value="/resources/assets/images/people/110/guy-1.jpg"/>" alt="Avatar"
                                                 class="avatar-img rounded-circle">


                                        </div>
                                        <div class="media-body">


                                            <div class="d-flex flex-column">
                                                <p class="mb-0"><strong class="js-lists-values-employee-name">Michael
                                                    Smith</strong></p>
                                                <small class="js-lists-values-employee-email text-50"></small>
                                            </div>


                                        </div>
                                    </div>

                                </td>

                                <td>
                                    <div class="d-flex align-items-center">
                                        <a href="#" class="text-warning"><i class="material-icons mr-8pt">star</i></a>
                                        <a href="" class="text-70"><span
                                                class="js-lists-values-employer-name">Black Ops</span></a>
                                    </div>
                                </td>

                                <td class="text-center js-lists-values-projects small">12</td>

                                <td>


                                    <a href="" class="chip chip-outline-secondary">Admin</a>


                                </td>

                                <td class="text-50 js-lists-values-activity small">3 days ago</td>
                                <td class="js-lists-values-earnings small">$12,402</td>
                                <td class="text-right pl-0">
                                    <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                </td>
                            </tr>

                            <tr>

                                <td class="pr-0">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input js-check-selected-row"
                                               id="customCheck1_users2">
                                        <label class="custom-control-label" for="customCheck1_users2"><span
                                                class="text-hide">Check</span></label>
                                    </div>
                                </td>

                                <td>

                                    <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                        <div class="avatar avatar-sm mr-8pt">


                                            <span class="avatar-title rounded-circle">CS</span>

                                        </div>
                                        <div class="media-body">


                                            <div class="d-flex flex-column">
                                                <p class="mb-0"><strong class="js-lists-values-employee-name">Connie
                                                    Smith</strong></p>
                                                <small class="js-lists-values-employee-email text-50"></small>
                                            </div>


                                        </div>
                                    </div>

                                </td>

                                <td>
                                    <div class="d-flex align-items-center">
                                        <a href="#" class="text-warning"><i class="material-icons mr-8pt">star</i></a>
                                        <a href="" class="text-70"><span class="js-lists-values-employer-name">Backend Ltd</span></a>
                                    </div>
                                </td>

                                <td class="text-center js-lists-values-projects small">42</td>

                                <td>


                                    <a href="" class="chip chip-outline-secondary">User</a>


                                </td>

                                <td class="text-50 js-lists-values-activity small">1 week ago</td>
                                <td class="js-lists-values-earnings small">$1,943</td>
                                <td class="text-right pl-0">
                                    <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                </td>
                            </tr>

                            <tr>

                                <td class="pr-0">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input js-check-selected-row"
                                               id="customCheck1_users3">
                                        <label class="custom-control-label" for="customCheck1_users3"><span
                                                class="text-hide">Check</span></label>
                                    </div>
                                </td>

                                <td>

                                    <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                        <div class="avatar avatar-sm mr-8pt">

                                            <img src="<c:url value="/resources/assets/images/people/110/guy-2.jpg"/>" alt="Avatar"
                                                 class="avatar-img rounded-circle">


                                        </div>
                                        <div class="media-body">


                                            <div class="d-flex flex-column">
                                                <p class="mb-0"><strong class="js-lists-values-employee-name">John
                                                    Connor</strong></p>
                                                <small class="js-lists-values-employee-email text-50"></small>
                                            </div>


                                        </div>
                                    </div>

                                </td>

                                <td>
                                    <div class="d-flex align-items-center">
                                        <a href="#" class="text-warning"><i class="material-icons mr-8pt">star</i></a>
                                        <a href="" class="text-70"><span
                                                class="js-lists-values-employer-name">Frontted</span></a>
                                    </div>
                                </td>

                                <td class="text-center js-lists-values-projects small">31</td>

                                <td>


                                    <a href="" class="chip chip-outline-secondary">Manager</a>


                                </td>

                                <td class="text-50 js-lists-values-activity small">2 weeks ago</td>
                                <td class="js-lists-values-earnings small">$1,401</td>
                                <td class="text-right pl-0">
                                    <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                </td>
                            </tr>

                            <tr class="selected">

                                <td class="pr-0">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input js-check-selected-row"
                                               checked="" id="customCheck1_users4">
                                        <label class="custom-control-label" for="customCheck1_users4"><span
                                                class="text-hide">Check</span></label>
                                    </div>
                                </td>

                                <td>

                                    <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                        <div class="avatar avatar-sm mr-8pt">


                                            <span class="avatar-title rounded-circle">LB</span>

                                        </div>
                                        <div class="media-body">


                                            <div class="d-flex flex-column">
                                                <p class="mb-0"><strong class="js-lists-values-employee-name">Laza
                                                    Bogdan</strong></p>
                                                <small class="js-lists-values-employee-email text-50"></small>
                                            </div>


                                        </div>
                                    </div>

                                </td>

                                <td>
                                    <div class="d-flex align-items-center">
                                        <a href="#" class="text-warning"><i class="material-icons mr-8pt">star</i></a>
                                        <a href="" class="text-70"><span
                                                class="js-lists-values-employer-name">Frontted</span></a>
                                    </div>
                                </td>

                                <td class="text-center js-lists-values-projects small">44</td>

                                <td>


                                    <a href="" class="chip chip-outline-secondary">Admin</a>


                                </td>

                                <td class="text-50 js-lists-values-activity small">3 weeks ago</td>
                                <td class="js-lists-values-earnings small">$22,402</td>
                                <td class="text-right pl-0">
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
