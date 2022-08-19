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
                            <h2 class="mb-0">Employees</h2>

                            <ol class="breadcrumb p-0 m-0">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                                <li class="breadcrumb-item active">

                                    Employees

                                </li>

                            </ol>

                        </div>
                    </div>


                    <div class="row" role="tablist">
                        <div class="col-auto">
                            <a href="" class="btn btn-outline-secondary">New Report</a>
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




                            <table class="table mb-0 thead-border-top-0 table-nowrap">
                                <thead>
                                <tr>

                                    <th style="width: 18px;" class="pr-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-toggle-check-all" data-target="#employees" id="customCheckAllemployees">
                                            <label class="custom-control-label" for="customCheckAllemployees"><span class="text-hide">Toggle all</span></label>
                                        </div>
                                    </th>

                                    <th>
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-name">Name</a>
                                    </th>

                                    <th style="width: 150px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-department">Department</a>
                                    </th>



                                    <th style="width: 48px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-status">Status</a>
                                    </th>


                                    <th style="width: 48px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-type">Type</a>
                                    </th>


                                    <th style="width: 48px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-phone">Phone</a>
                                    </th>

                                    <th style="width: 48px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-date">Hire date</a>
                                    </th>
                                    <th style="width: 24px;"></th>
                                </tr>
                                </thead>
                                <tbody class="list" id="employees">

                                <tr>

                                    <td class="pr-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row" id="customCheck1_employees1">
                                            <label class="custom-control-label" for="customCheck1_employees1"><span class="text-hide">Check</span></label>
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
                                                        <p class="mb-0"><strong class="js-lists-values-name">Billy Nunez</strong></p>
                                                        <small class="js-lists-values-email text-50">annabell.kris@yahoo.com</small>
                                                    </div>

                                                    <div class="d-flex align-items-center ml-24pt">
                                                        <i class="material-icons text-20 icon-16pt">link</i>
                                                        <small class="ml-4pt"><strong class="text-50">2</strong></small>
                                                    </div>

                                                </div>


                                            </div>
                                        </div>

                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">
                                                <span class="avatar-title rounded bg-light text-black-100">Ds</span>
                                            </div>
                                            <div class="media-body">
                                                <div class="d-flex flex-column">
                                                    <small class="js-lists-values-department"><strong>Design</strong></small>
                                                    <small class="js-lists-values-location text-50">UX Designer</small>
                                                </div>
                                            </div>
                                        </div>

                                    </td>



                                    <td>
                                        <div class="d-flex flex-column">
                                            <small class="js-lists-values-status text-50 mb-4pt">Probation</small>
                                            <span class="indicator-line rounded bg-warning"></span>
                                        </div>
                                    </td>


                                    <td>
                                        <small class="js-lists-values-type text-50">Temporary</small>
                                    </td>


                                    <td>
                                        <small class="js-lists-values-phone text-50">239-721-3649</small>
                                    </td>

                                    <td>
                                        <small class="js-lists-values-date text-50">19/02/2019</small>
                                    </td>
                                    <td class="text-right">
                                        <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                    </td>
                                </tr>

                                <tr>

                                    <td class="pr-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row" id="customCheck1_employees2">
                                            <label class="custom-control-label" for="customCheck1_employees2"><span class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">


                                                <span class="avatar-title rounded-circle">TP</span>

                                            </div>
                                            <div class="media-body">


                                                <div class="d-flex align-items-center">
                                                    <div class="flex d-flex flex-column">
                                                        <p class="mb-0"><strong class="js-lists-values-name">Tony Parks</strong></p>
                                                        <small class="js-lists-values-email text-50">vida_glover@gmail.com</small>
                                                    </div>

                                                    <div class="d-flex align-items-center ml-24pt">
                                                        <i class="material-icons text-20 icon-16pt">comment</i>
                                                        <small class="ml-4pt"><strong class="text-50">1</strong></small>
                                                    </div>

                                                </div>


                                            </div>
                                        </div>

                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">
                                                <span class="avatar-title rounded bg-light text-black-100">Dv</span>
                                            </div>
                                            <div class="media-body">
                                                <div class="d-flex flex-column">
                                                    <small class="js-lists-values-department"><strong>Development</strong></small>
                                                    <small class="js-lists-values-location text-50">Senior Frontend Developer</small>
                                                </div>
                                            </div>
                                        </div>

                                    </td>



                                    <td>
                                        <div class="d-flex flex-column">
                                            <small class="js-lists-values-status text-50 mb-4pt">Active</small>
                                            <span class="indicator-line rounded bg-primary"></span>
                                        </div>
                                    </td>


                                    <td>
                                        <small class="js-lists-values-type text-50">On Contract</small>
                                    </td>


                                    <td>
                                        <small class="js-lists-values-phone text-50">169-769-4821</small>
                                    </td>

                                    <td>
                                        <small class="js-lists-values-date text-50">18/02/2019</small>
                                    </td>
                                    <td class="text-right">
                                        <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                    </td>
                                </tr>

                                <tr>

                                    <td class="pr-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row" id="customCheck1_employees3">
                                            <label class="custom-control-label" for="customCheck1_employees3"><span class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">

                                                <img src="<c:url value="/resources/assets/images/people/110/guy-1.jpg"/>" alt="Avatar" class="avatar-img rounded-circle">


                                            </div>
                                            <div class="media-body">


                                                <div class="d-flex align-items-center">
                                                    <div class="flex d-flex flex-column">
                                                        <p class="mb-0"><strong class="js-lists-values-name">Gilbert Barrett</strong></p>
                                                        <small class="js-lists-values-email text-50">paolo.zieme@gmail.com</small>
                                                    </div>

                                                    <div class="d-flex align-items-center ml-24pt">
                                                        <i class="material-icons text-20 icon-16pt">comment</i>
                                                        <small class="ml-4pt"><strong class="text-50">1</strong></small>
                                                    </div>

                                                </div>


                                            </div>
                                        </div>

                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">
                                                <span class="avatar-title rounded bg-light text-black-100">CR</span>
                                            </div>
                                            <div class="media-body">
                                                <div class="d-flex flex-column">
                                                    <small class="js-lists-values-department"><strong>Customer Relationship</strong></small>
                                                    <small class="js-lists-values-location text-50">CRM Manager</small>
                                                </div>
                                            </div>
                                        </div>

                                    </td>



                                    <td>
                                        <div class="d-flex flex-column">
                                            <small class="js-lists-values-status text-50 mb-4pt">Active</small>
                                            <span class="indicator-line rounded bg-primary"></span>
                                        </div>
                                    </td>


                                    <td>
                                        <small class="js-lists-values-type text-50">On Contract</small>
                                    </td>


                                    <td>
                                        <small class="js-lists-values-phone text-50">462-060-7408</small>
                                    </td>

                                    <td>
                                        <small class="js-lists-values-date text-50">17/02/2019</small>
                                    </td>
                                    <td class="text-right">
                                        <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                    </td>
                                </tr>

                                <tr>

                                    <td class="pr-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row" id="customCheck1_employees4">
                                            <label class="custom-control-label" for="customCheck1_employees4"><span class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">

                                                <img src="<c:url value="/resources/assets/images/people/110/guy-2.jpg"/>" alt="Avatar" class="avatar-img rounded-circle">


                                            </div>
                                            <div class="media-body">


                                                <div class="d-flex align-items-center">
                                                    <div class="flex d-flex flex-column">
                                                        <p class="mb-0"><strong class="js-lists-values-name">Ollie Wallace</strong></p>
                                                        <small class="js-lists-values-email text-50">lorna_kirlin@nora.biz</small>
                                                    </div>

                                                </div>


                                            </div>
                                        </div>

                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">
                                                <span class="avatar-title rounded bg-light text-black-100">HR</span>
                                            </div>
                                            <div class="media-body">
                                                <div class="d-flex flex-column">
                                                    <small class="js-lists-values-department"><strong>HR</strong></small>
                                                    <small class="js-lists-values-location text-50">HR Manager</small>
                                                </div>
                                            </div>
                                        </div>

                                    </td>



                                    <td>
                                        <div class="d-flex flex-column">
                                            <small class="js-lists-values-status text-50 mb-4pt">Active</small>
                                            <span class="indicator-line rounded bg-primary"></span>
                                        </div>
                                    </td>


                                    <td>
                                        <small class="js-lists-values-type text-50">Full Time</small>
                                    </td>


                                    <td>
                                        <small class="js-lists-values-phone text-50">285-626-6050</small>
                                    </td>

                                    <td>
                                        <small class="js-lists-values-date text-50">16/02/2019</small>
                                    </td>
                                    <td class="text-right">
                                        <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                    </td>
                                </tr>

                                <tr class="selected">

                                    <td class="pr-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row" checked="" id="customCheck1_employees5">
                                            <label class="custom-control-label" for="customCheck1_employees5"><span class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">

                                                <img src="<c:url value="/resources/assets/images/people/110/guy-3.jpg"/>" alt="Avatar" class="avatar-img rounded-circle">


                                            </div>
                                            <div class="media-body">


                                                <div class="d-flex align-items-center">
                                                    <div class="flex d-flex flex-column">
                                                        <p class="mb-0"><strong class="js-lists-values-name">Ricardo Bell</strong></p>
                                                        <small class="js-lists-values-email text-50">smith_winfield@douglas.io</small>
                                                    </div>

                                                </div>


                                            </div>
                                        </div>

                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">
                                                <span class="avatar-title rounded bg-light text-black-100">Ds</span>
                                            </div>
                                            <div class="media-body">
                                                <div class="d-flex flex-column">
                                                    <small class="js-lists-values-department"><strong>Design</strong></small>
                                                    <small class="js-lists-values-location text-50">UX Designer</small>
                                                </div>
                                            </div>
                                        </div>

                                    </td>



                                    <td>
                                        <div class="d-flex flex-column">
                                            <small class="js-lists-values-status text-50 mb-4pt">Terminated</small>
                                            <span class="indicator-line rounded bg-danger"></span>
                                        </div>
                                    </td>


                                    <td>
                                        <small class="js-lists-values-type text-50">Temporary</small>
                                    </td>


                                    <td>
                                        <small class="js-lists-values-phone text-50">285-626-6050</small>
                                    </td>

                                    <td>
                                        <small class="js-lists-values-date text-50">01/12/2018</small>
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
                        <!-- <div class="card-body bordet-top text-right">
15 <span class="text-50">of 1,430</span> <a href="#" class="text-50"><i class="material-icons ml-1">arrow_forward</i></a>
</div> -->


                    </div>

                    <div class="page-separator">
                        <div class="page-separator__text">Shift distribution</div>
                    </div>

                    <div class="d-flex align-items-center mb-24pt mb-lg-32pt">
                        <div class="position-relative">
                            <a class="d-flex flex-column border-1 rounded bg-alt px-16pt py-8pt lh-1" href="">
                                <small><strong>Day</strong></small>
                                <small class="text-50">07:30 - 20:00</small>
                            </a>
                            <a href="" class="position-close-4pt">
                                <i class="material-icons text-50 icon-16pt">close</i>
                            </a>
                        </div>
                        <div class="position-relative ml-8pt">
                            <a class="d-flex flex-column border-1 rounded bg-alt px-16pt py-8pt lh-1" href="">
                                <small><strong>Night</strong></small>
                                <small class="text-50">20:00 - 08:00</small>
                            </a>
                            <a href="" class="position-close-4pt">
                                <i class="material-icons text-50 icon-16pt">close</i>
                            </a>
                        </div>
                        <a class="d-flex flex-column border-1 rounded bg-alt px-16pt py-8pt lh-1 text-center ml-8pt" href="">
                            <i class="material-icons text-50 icon-16pt">add</i>
                            <small><strong>New Shift</strong></small>
                        </a>
                    </div>

                    <div class="page-separator">
                        <div class="page-separator__text">Shift distribution</div>
                    </div>

                    <div class="card mb-0">

                        <div class="table-responsive" data-toggle="lists" data-lists-values='["js-lists-values-name"]'>




                            <table class="table table-bordered table-flush mb-0 thead-border-top-0 table-nowrap">
                                <thead>
                                <tr>

                                    <th style="width: 18px;" class="pr-0 border-right-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-toggle-check-all" data-target="#contacts" id="customCheckAll_contacts">
                                            <label class="custom-control-label" for="customCheckAll_contacts"><span class="text-hide">Toggle all</span></label>
                                        </div>
                                    </th>

                                    <th class="border-left-0">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-name">Name</a>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Monday <small>25/02/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Tuesday <small>26/02/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Wednesday <small>27/02/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Thursday <small>28/02/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Friday <small>01/03/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Saturday <small>02/03/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Sunday <small>03/03/2019</small>
                                        </div>
                                    </th>
                                    <th style="width: 24px;"></th>
                                </tr>
                                </thead>
                                <tbody class="list" id="contacts">

                                <tr>

                                    <td class="pr-0 border-right-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row" id="customCheck1_contacts_1">
                                            <label class="custom-control-label" for="customCheck1_contacts_1"><span class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td class="border-left-0">

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">


                                                <span class="avatar-title rounded-circle bg-white border text-100">BN</span>

                                            </div>
                                            <div class="media-body ml-4pt">


                                                <p class="mb-0"><strong class="js-lists-values-name">Billy Nunez</strong></p>


                                            </div>
                                        </div>

                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                            <small class="text-black-50">20:00 - 08:00</small>
                                        </a>


                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                            <small class="text-black-50">20:00 - 08:00</small>
                                        </a>


                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                            <small class="text-black-50">07:30 - 20:00</small>
                                        </a>


                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                            <small class="text-black-50">07:30 - 20:00</small>
                                        </a>


                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                            <small class="text-black-50">07:30 - 20:00</small>
                                        </a>


                                    </td>
                                    <td class="text-right">
                                        <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                    </td>
                                </tr>

                                <tr>

                                    <td class="pr-0 border-right-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row" id="customCheck1_contacts_2">
                                            <label class="custom-control-label" for="customCheck1_contacts_2"><span class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td class="border-left-0">

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">


                                                <span class="avatar-title rounded-circle bg-white border text-100">TP</span>

                                            </div>
                                            <div class="media-body ml-4pt">


                                                <p class="mb-0"><strong class="js-lists-values-name">Tony Parks</strong></p>


                                            </div>
                                        </div>

                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                            <small class="text-black-50">20:00 - 08:00</small>
                                        </a>


                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                            <small class="text-black-50">20:00 - 08:00</small>
                                        </a>


                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    <td class="text-right">
                                        <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                    </td>
                                </tr>

                                <tr class="selected">

                                    <td class="pr-0 border-right-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row" checked="" id="customCheck1_contacts_3">
                                            <label class="custom-control-label" for="customCheck1_contacts_3"><span class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td class="border-left-0">

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">

                                                <img src="<c:url value="/resources/assets/images/people/110/guy-1.jpg"/>" alt="Avatar" class="avatar-img rounded-circle">


                                            </div>
                                            <div class="media-body ml-4pt">


                                                <p class="mb-0"><strong class="js-lists-values-name">Gilbert Barrett</strong></p>


                                            </div>
                                        </div>

                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                            <small class="text-black-50">07:30 - 20:00</small>
                                        </a>


                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                            <small class="text-black-50">07:30 - 20:00</small>
                                        </a>


                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                            <small class="text-black-50">20:00 - 08:00</small>
                                        </a>


                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                            <small class="text-black-50">20:00 - 08:00</small>
                                        </a>


                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                            <small class="text-black-50">20:00 - 08:00</small>
                                        </a>


                                    </td>
                                    <td class="text-right">
                                        <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                    </td>
                                </tr>

                                <tr>

                                    <td class="pr-0 border-right-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row" id="customCheck1_contacts_4">
                                            <label class="custom-control-label" for="customCheck1_contacts_4"><span class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td class="border-left-0">

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">

                                                <img src="<c:url value="/resources/assets/images/people/110/guy-2.jpg"/>" alt="Avatar" class="avatar-img rounded-circle">


                                            </div>
                                            <div class="media-body ml-4pt">


                                                <p class="mb-0"><strong class="js-lists-values-name">Ollie Wallace</strong></p>


                                            </div>
                                        </div>

                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                            <small class="text-black-50">07:30 - 20:00</small>
                                        </a>


                                    </td>
                                    <td>


                                        <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                            <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                            <small class="text-black-50">07:30 - 20:00</small>
                                        </a>


                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                    <td class="text-right">
                                        <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>

                        <div class="card-footer border-0 p-8pt">

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
