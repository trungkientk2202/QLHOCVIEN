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
                            <a href="" class="btn btn-outline-secondary">New Report</a>
                        </div>
                    </div>

                </div>
            </div>


            <div class="container page__container">
                <div class="page-section">

                    <div class="row mb-lg-8pt">
                        <div class="col-lg-8">

                            <div class="page-separator">
                                <div class="page-separator__text">Overview</div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">


                                    <div class="card ">
                                        <div class="card-header pb-0 border-0 d-flex">
                                            <div class="flex">
                                                <div class="h2 mb-0">130</div>
                                                <p class="card-title">Contacts</p>
                                            </div>
                                            <i class="material-icons text-50">more_horiz</i>
                                        </div>
                                        <div class="card-body">
                                            <div class="text-50 mb-16pt">

                                                <div class="mb-4pt">
                                                    <p class="d-flex align-items-center mb-0">
                                                        <small class="flex lh-24pt">Customers</small>
                                                        <small class="lh-24pt">70</small>
                                                    </p>
                                                    <div class="progress" style="height: 4px;">
                                                        <div class="progress-bar bg-primary" role="progressbar"
                                                             style="width: 53%;" aria-valuenow="53" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </div>

                                                <div class="mb-4pt">
                                                    <p class="d-flex align-items-center mb-0">
                                                        <small class="flex lh-24pt">Leads</small>
                                                        <small class="lh-24pt">21</small>
                                                    </p>
                                                    <div class="progress" style="height: 4px;">
                                                        <div class="progress-bar bg-primary" role="progressbar"
                                                             style="width: 16%;" aria-valuenow="16" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </div>

                                                <div class="mb-4pt">
                                                    <p class="d-flex align-items-center mb-0">
                                                        <small class="flex lh-24pt">Opportunities</small>
                                                        <small class="lh-24pt">12</small>
                                                    </p>
                                                    <div class="progress" style="height: 4px;">
                                                        <div class="progress-bar bg-primary" role="progressbar"
                                                             style="width: 9%;" aria-valuenow="9" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </div>

                                                <div>
                                                    <p class="d-flex align-items-center mb-0">
                                                        <small class="flex lh-24pt">Subscribers</small>
                                                        <small class="lh-24pt">27</small>
                                                    </p>
                                                    <div class="progress" style="height: 4px;">
                                                        <div class="progress-bar bg-primary" role="progressbar"
                                                             style="width: 20%;" aria-valuenow="20" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="text-center">
                                                <a href="" class="btn btn-sm btn-outline-secondary">View contacts</a>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <div class="col-md-6">


                                    <div class="card ">
                                        <div class="card-header pb-0 border-0 d-flex">
                                            <div class="flex">
                                                <div class="h2 mb-0">53</div>
                                                <p class="card-title">Companies</p>
                                            </div>
                                            <i class="material-icons text-50">more_horiz</i>
                                        </div>
                                        <div class="card-body">
                                            <div class="text-50 mb-16pt">

                                                <div class="mb-4pt">
                                                    <p class="d-flex align-items-center mb-0">
                                                        <small class="flex lh-24pt">Customers</small>
                                                        <small class="lh-24pt">20</small>
                                                    </p>
                                                    <div class="progress" style="height: 4px;">
                                                        <div class="progress-bar bg-primary" role="progressbar"
                                                             style="width: 37%;" aria-valuenow="37" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </div>

                                                <div class="mb-4pt">
                                                    <p class="d-flex align-items-center mb-0">
                                                        <small class="flex lh-24pt">Leads</small>
                                                        <small class="lh-24pt">12</small>
                                                    </p>
                                                    <div class="progress" style="height: 4px;">
                                                        <div class="progress-bar bg-primary" role="progressbar"
                                                             style="width: 22%;" aria-valuenow="22" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </div>

                                                <div class="mb-4pt">
                                                    <p class="d-flex align-items-center mb-0">
                                                        <small class="flex lh-24pt">Opportunities</small>
                                                        <small class="lh-24pt">7</small>
                                                    </p>
                                                    <div class="progress" style="height: 4px;">
                                                        <div class="progress-bar bg-primary" role="progressbar"
                                                             style="width: 13%;" aria-valuenow="13" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </div>

                                                <div>
                                                    <p class="d-flex align-items-center mb-0">
                                                        <small class="flex lh-24pt">Subscribers</small>
                                                        <small class="lh-24pt">14</small>
                                                    </p>
                                                    <div class="progress" style="height: 4px;">
                                                        <div class="progress-bar bg-primary" role="progressbar"
                                                             style="width: 26%;" aria-valuenow="26" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="text-center">
                                                <a href="" class="btn btn-sm btn-outline-secondary">View companies</a>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>

                            <div class="row card-group-row">
                                <div class="col-md-6 card-group-row__col">

                                    <div class="card card-group-row__card">
                                        <div class="card-header d-flex">
                                            <div class="flex d-flex align-items-center">
                                                <div class="h2 mb-0 mr-3">20%</div>
                                                <div class="flex d-flex flex-column">
                                                    <p class="card-title">Renewals</p>
                                                    <p class="card-subtitle text-50">This month</p>
                                                </div>
                                            </div>
                                            <a href="#"><i class="material-icons text-50">more_horiz</i></a>
                                        </div>
                                        <div class="card-body d-flex flex-column justify-content-center">


                                            <div class="mb-4pt">
                                                <p class="d-flex align-items-center mb-0">
                                                    <small class="flex lh-24pt"><strong>Rend A Car,
                                                        Frankfurt</strong></small>
                                                    <small class="text-50 lh-24pt">expires in 12 days</small>
                                                </p>
                                                <div class="progress" style="height: 4px;">
                                                    <div class="progress-bar bg-warning" role="progressbar"
                                                         style="width: 20%;" aria-valuenow="20" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </div>

                                            <div class="mb-4pt">
                                                <p class="d-flex align-items-center mb-0">
                                                    <small class="flex lh-24pt"><strong>Rend A Car,
                                                        Frankfurt</strong></small>
                                                    <small class="text-50 lh-24pt">expires in 30 days</small>
                                                </p>
                                                <div class="progress" style="height: 4px;">
                                                    <div class="progress-bar bg-accent" role="progressbar"
                                                         style="width: 100%;" aria-valuenow="100" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-6 card-group-row__col">

                                    <div class="card card-group-row__card">
                                        <div class="card-header p-0 nav border-0">
                                            <div class="row no-gutters flex" role="tablist">
                                                <div class="col-auto">
                                                    <div class="p-card-header d-flex align-items-center">
                                                        <div class="h2 mb-0 mr-3">20%</div>
                                                        <div class="flex">
                                                            <p class="card-title">Conversion rate</p>
                                                            <div class="d-flex align-items-center">
                                                                <p class="text-50 mb-0 d-flex align-items-center mr-16pt">
                                                                    <i class="indicator-line rounded bg-gray mr-8pt"></i>
                                                                    <small>Lead</small>
                                                                </p>
                                                                <p class="text-50 mb-0 d-flex align-items-center">
                                                                    <i class="indicator-line rounded bg-primary mr-8pt"></i>
                                                                    <small>Cust.</small>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-auto ml-sm-auto">
                                                    <div class="p-card-header pl-0"><a href="#"><i
                                                            class="material-icons text-50">more_horiz</i></a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body position-relative o-hidden p-0">
                                            <div class="chart z-0" style="height: 125px;">
                                                <canvas id="viewsChart"
                                                        class="chart-canvas js-update-chart-line js-update-chart-line-2nd-accent"
                                                        data-chart-line-border-color="primary,gray"
                                                        data-chart-suffix=" views" data-chart-hide-axes="true"></canvas>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                        <div class="col-lg-4">

                            <div class="page-separator">
                                <div class="page-separator__text">Schedule</div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <div class="d-flex align-items-center">
                                        <div class="flex">
                                            <strong class="card-title">Today</strong>
                                        </div>
                                        <i class="material-icons text-50">more_horiz</i>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="alert alert-soft-warning mb-0 p-8pt">
                                        <div class="d-flex align-items-start">
                                            <div class="mr-8pt">
                                                <i class="material-icons">error_outline</i>
                                            </div>
                                            <div class="flex">
                                                <small class="text-100">Nothing scheduled for today.</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="card">
                                <div class="card-header">
                                    <div class="d-flex align-items-center">
                                        <div class="flex">
                                            <strong class="card-title">Upcoming</strong>
                                            <span class="text-20">(2)</span>
                                        </div>
                                        <i class="material-icons text-50">more_horiz</i>
                                    </div>

                                </div>

                                <div class="list-group list-group-flush">

                                    <div class="list-group-item d-flex align-items-start p-16pt">
                                        <div class="d-flex flex-column mr-16pt">
                                            <small class="text-uppercase text-50">FEB</small>
                                            <strong class="border-bottom-2 border-bottom-accent">18</strong>
                                        </div>
                                        <div class="flex">
                                            <div><strong>Developers Meeting</strong></div>

                                            <div class="lh-1 mb-16pt"><small class="text-50">Tuesday 17:30 -
                                                18:30</small></div>


                                            <div class="avatar-group mb-16pt">

                                                <div class="avatar avatar-xs" data-toggle="tooltip" data-placement="top"
                                                     title="Janell D.">
                                                    <img src="<c:url value="/resources/assets/images/256_rsz_1andy-lee-642320-unsplash.jpg"/>"
                                                         alt="Avatar" class="avatar-img rounded-circle">
                                                </div>

                                                <div class="avatar avatar-xs" data-toggle="tooltip" data-placement="top"
                                                     title="Janell D.">
                                                    <img src="<c:url value="/resources/assets/images/256_michael-dam-258165-unsplash.jpg"/>"
                                                         alt="Avatar" class="avatar-img rounded-circle">
                                                </div>

                                                <div class="avatar avatar-xs" data-toggle="tooltip" data-placement="top"
                                                     title="Janell D.">
                                                    <img src="<c:url value="/resources/assets/images/256_luke-porter-261779-unsplash.jpg"/>"
                                                         alt="Avatar" class="avatar-img rounded-circle">
                                                </div>

                                            </div>


                                            <p class="mb-0 text-50">Moreover the striking, brilliant and vivid colors
                                                are the reason why we are attracted to the posters that we see.</p>


                                        </div>
                                    </div>

                                    <div class="list-group-item d-flex align-items-start p-16pt">
                                        <div class="d-flex flex-column mr-16pt">
                                            <small class="text-uppercase text-50">FEB</small>
                                            <strong class="border-bottom-2 border-bottom-accent">17</strong>
                                        </div>
                                        <div class="flex">
                                            <div><strong>Meeting with Jane B.</strong></div>

                                            <div class="lh-1"><small class="text-50">Tuesday 17:30 - 18:30</small></div>


                                        </div>
                                    </div>

                                </div>


                            </div>


                        </div>
                    </div>

                    <div class="page-separator">
                        <div class="page-separator__text">Recently added</div>
                    </div>

                    <div class="card mb-0">

                        <div class="table-responsive" data-toggle="lists" data-lists-sort-by="js-lists-values-date"
                             data-lists-sort-desc="true"
                             data-lists-values='["js-lists-values-name", "js-lists-values-company", "js-lists-values-phone", "js-lists-values-date"]'>


                            <table class="table mb-0 thead-border-top-0 table-nowrap">
                                <thead>
                                <tr>

                                    <th style="width: 18px;" class="pr-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-toggle-check-all"
                                                   data-target="#contacts" id="customCheckAll_contacts">
                                            <label class="custom-control-label" for="customCheckAll_contacts"><span
                                                    class="text-hide">Toggle all</span></label>
                                        </div>
                                    </th>

                                    <th>
                                        <a href="javascript:void(0)" class="sort"
                                           data-sort="js-lists-values-name">Name</a>
                                    </th>

                                    <th style="width: 150px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-company">Company</a>
                                    </th>


                                    <th style="width: 37px;">Tags</th>


                                    <th style="width: 48px;">
                                        <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-phone">Phone</a>
                                    </th>

                                    <th style="width: 120px;">
                                        <a href="javascript:void(0)" class="sort"
                                           data-sort="js-lists-values-date">Added</a>
                                    </th>
                                    <th style="width: 24px;"></th>
                                </tr>
                                </thead>
                                <tbody class="list" id="contacts">

                                <tr>

                                    <td class="pr-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row"
                                                   id="customCheck1_contacts_1">
                                            <label class="custom-control-label" for="customCheck1_contacts_1"><span
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
                                                   id="customCheck1_contacts_2">
                                            <label class="custom-control-label" for="customCheck1_contacts_2"><span
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
                                                    <p class="mb-0"><strong class="js-lists-values-name">Tony
                                                        Parks</strong></p>
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
                                                   checked="" id="customCheck1_contacts_3">
                                            <label class="custom-control-label" for="customCheck1_contacts_3"><span
                                                    class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">

                                                <img src="<c:url value="/resources/assets/images/people/110/guy-1.jpg"/>"
                                                     alt="Avatar" class="avatar-img rounded-circle">


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
                                                   checked="" id="customCheck1_contacts_4">
                                            <label class="custom-control-label" for="customCheck1_contacts_4"><span
                                                    class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="avatar avatar-sm mr-8pt">

                                                <img src="<c:url value="/resources/assets/images/people/110/guy-2.jpg"/>"
                                                     alt="Avatar" class="avatar-img rounded-circle">


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
