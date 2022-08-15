<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Tables</title>

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
<body class="layout-app ui ">
<%@include file="/WEB-INF/views/layouts/user/preloader.jsp" %>
<div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
    <div class="mdk-drawer-layout__content page-content">
        <!-- Header -->
        <div
                class="navbar navbar-expand pr-0 navbar-light border-bottom-2"
                id="default-navbar"
                data-primary
        >
            <!-- Navbar toggler -->
            <button
                    class="navbar-toggler w-auto mr-16pt d-block d-lg-none rounded-0"
                    type="button"
                    data-toggle="sidebar"
            >
                <span class="material-icons">short_text</span>
            </button>

            <!-- Navbar Brand -->
            <a href="index.html" class="navbar-brand mr-16pt d-lg-none">
            <span class="avatar avatar-sm navbar-brand-icon mr-0 mr-lg-8pt">
              <span class="avatar-title rounded bg-primary"
              ><img
                      src="<c:url value="/resources/assets/images/illustration/student/128/white.svg"/>"
                      alt="logo"
                      class="img-fluid"
              /></span>
            </span>

                <span class="d-none d-lg-block">Luma</span>
            </a>

            <span class="d-none d-md-flex align-items-center mr-16pt">
            <span class="avatar avatar-sm mr-12pt">
              <span class="avatar-title rounded navbar-avatar"
              ><i class="material-icons">opacity</i></span
              >
            </span>

            <small class="flex d-flex flex-column">
              <strong class="navbar-text-100">Experience IQ</strong>
              <span class="navbar-text-50">2,300 points</span>
            </small>
          </span>

            <div class="flex"></div>

            <!-- Toggler -->
            <a
                    href="compact-student-my-courses.html"
                    class="navbar-toggler navbar-toggler-custom align-items-center justify-content-center d-none d-lg-flex"
                    data-toggle="tooltip"
                    data-title="Switch to Compact Layout"
                    data-placement="bottom"
                    data-boundary="window"
            >
                <span class="material-icons">swap_horiz</span>
            </a>

            <div class="nav navbar-nav flex-nowrap d-flex mr-16pt">
                <!-- Notifications dropdown -->
                <div
                        class="nav-item dropdown dropdown-notifications dropdown-xs-down-full"
                        data-toggle="tooltip"
                        data-title="Messages"
                        data-placement="bottom"
                        data-boundary="window"
                >
                    <button
                            class="nav-link btn-flush dropdown-toggle"
                            type="button"
                            data-toggle="dropdown"
                            data-caret="false"
                    >
                        <i class="material-icons icon-24pt">mail_outline</i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div data-perfect-scrollbar class="position-relative">
                            <div class="dropdown-header"><strong>Messages</strong></div>
                            <div class="list-group list-group-flush mb-0">
                                <a
                                        href="javascript:void(0);"
                                        class="list-group-item list-group-item-action unread"
                                >
                      <span class="d-flex align-items-center mb-1">
                        <small class="text-black-50">5 minutes ago</small>

                        <span class="ml-auto unread-indicator bg-accent"></span>
                      </span>
                                    <span class="d-flex">
                        <span class="avatar avatar-xs mr-2">
                          <img
                                  src="<c:url value="/resources/assets/images/people/110/woman-5.jpg"/>"
                                  alt="people"
                                  class="avatar-img rounded-circle"
                          />
                        </span>
                        <span class="flex d-flex flex-column">
                          <strong class="text-black-100">Michelle</strong>
                          <span class="text-black-70"
                          >Clients loved the new design.</span
                          >
                        </span>
                      </span>
                                </a>

                                <a
                                        href="javascript:void(0);"
                                        class="list-group-item list-group-item-action"
                                >
                      <span class="d-flex align-items-center mb-1">
                        <small class="text-black-50">5 minutes ago</small>
                      </span>
                                    <span class="d-flex">
                        <span class="avatar avatar-xs mr-2">
                          <img
                                  src="<c:url value="/resources/assets/images/people/110/woman-5.jpg"/>"
                                  alt="people"
                                  class="avatar-img rounded-circle"
                          />
                        </span>
                        <span class="flex d-flex flex-column">
                          <strong class="text-black-100">Michelle</strong>
                          <span class="text-black-70">🔥 Superb job..</span>
                        </span>
                      </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- // END Notifications dropdown -->

                <!-- Notifications dropdown -->
                <div
                        class="nav-item ml-16pt dropdown dropdown-notifications dropdown-xs-down-full"
                        data-toggle="tooltip"
                        data-title="Notifications"
                        data-placement="bottom"
                        data-boundary="window"
                >
                    <button
                            class="nav-link btn-flush dropdown-toggle"
                            type="button"
                            data-toggle="dropdown"
                            data-caret="false"
                    >
                        <i class="material-icons">notifications_none</i>
                        <span class="badge badge-notifications badge-accent">2</span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div data-perfect-scrollbar class="position-relative">
                            <div class="dropdown-header">
                                <strong>System notifications</strong>
                            </div>
                            <div class="list-group list-group-flush mb-0">
                                <a
                                        href="javascript:void(0);"
                                        class="list-group-item list-group-item-action unread"
                                >
                      <span class="d-flex align-items-center mb-1">
                        <small class="text-black-50">3 minutes ago</small>

                        <span class="ml-auto unread-indicator bg-accent"></span>
                      </span>
                                    <span class="d-flex">
                        <span class="avatar avatar-xs mr-2">
                          <span class="avatar-title rounded-circle bg-light">
                            <i class="material-icons font-size-16pt text-accent"
                            >account_circle</i
                            >
                          </span>
                        </span>
                        <span class="flex d-flex flex-column">
                          <span class="text-black-70"
                          >Your profile information has not been synced
                            correctly.</span
                          >
                        </span>
                      </span>
                                </a>

                                <a
                                        href="javascript:void(0);"
                                        class="list-group-item list-group-item-action"
                                >
                      <span class="d-flex align-items-center mb-1">
                        <small class="text-black-50">5 hours ago</small>
                      </span>
                                    <span class="d-flex">
                        <span class="avatar avatar-xs mr-2">
                          <span class="avatar-title rounded-circle bg-light">
                            <i
                                    class="material-icons font-size-16pt text-primary"
                            >group_add</i
                            >
                          </span>
                        </span>
                        <span class="flex d-flex flex-column">
                          <strong class="text-black-100">Adrian. D</strong>
                          <span class="text-black-70"
                          >Wants to join your private group.</span
                          >
                        </span>
                      </span>
                                </a>

                                <a
                                        href="javascript:void(0);"
                                        class="list-group-item list-group-item-action"
                                >
                      <span class="d-flex align-items-center mb-1">
                        <small class="text-black-50">1 day ago</small>
                      </span>
                                    <span class="d-flex">
                        <span class="avatar avatar-xs mr-2">
                          <span class="avatar-title rounded-circle bg-light">
                            <i
                                    class="material-icons font-size-16pt text-warning"
                            >storage</i
                            >
                          </span>
                        </span>
                        <span class="flex d-flex flex-column">
                          <span class="text-black-70"
                          >Your deploy was successful.</span
                          >
                        </span>
                      </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- // END Notifications dropdown -->

                <div class="nav-item dropdown">
                    <a
                            href="#"
                            class="nav-link d-flex align-items-center dropdown-toggle"
                            data-toggle="dropdown"
                            data-caret="false"
                    >
                <span class="avatar avatar-sm mr-8pt2">
                  <span class="avatar-title rounded-circle bg-primary"
                  ><i class="material-icons">account_box</i></span
                  >
                </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-header"><strong>Account</strong></div>
                        <a class="dropdown-item" href="edit-account.html"
                        >Edit Account</a
                        >
                        <a class="dropdown-item" href="billing.html">Billing</a>
                        <a class="dropdown-item" href="billing-history.html"
                        >Payments</a
                        >
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- // END Header -->


        <div class="container page__container page-section">
            <div class="flex search-form form-control-rounded search-form--light mb-16pt" style="min-width: 200px;">
                <input type="text" class="form-control" placeholder="Search courses..." id="searchSample02">
                <button class="btn pr-3" type="button" role="button"><i class="material-icons">search</i></button>
            </div>
            <div class="mb-32pt d-flex align-items-center">
                <small class="text-black-70 text-headings text-uppercase mr-3">Displaying 10 out of 5,234
                    articles</small>
                <div class="dropdown ml-auto">
                    <a href="" data-toggle="dropdown" class="dropdown-toggle text-black-70">All Topics</a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="" class="dropdown-item active">All Topics</a>
                        <a href="" class="dropdown-item">General</a>
                        <a href="" class="dropdown-item">Lessons</a>
                        <a href="" class="dropdown-item">Customer Support</a>
                    </div>
                </div>
            </div>

            <div class="page-separator">
                <div class="page-separator__text">Shift distribution</div>
            </div>

            <div class="card mb-lg-32pt">

                <div class="table-responsive" data-toggle="lists" data-lists-values='["js-lists-values-name"]'>


                    <table class="table table-bordered table-flush mb-0 thead-border-top-0 table-nowrap">
                        <thead>
                        <tr>

                            <th style="width: 18px;" class="pr-0 border-right-0">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-toggle-check-all"
                                           data-target="#contacts" id="customCheckAll_contacts">
                                    <label class="custom-control-label" for="customCheckAll_contacts"><span
                                            class="text-hide">Toggle all</span></label>
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
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_contacts_1">
                                    <label class="custom-control-label" for="customCheck1_contacts_1"><span
                                            class="text-hide">Check</span></label>
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
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_contacts_2">
                                    <label class="custom-control-label" for="customCheck1_contacts_2"><span
                                            class="text-hide">Check</span></label>
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
                                    <input type="checkbox" class="custom-control-input js-check-selected-row" checked=""
                                           id="customCheck1_contacts_3">
                                    <label class="custom-control-label" for="customCheck1_contacts_3"><span
                                            class="text-hide">Check</span></label>
                                </div>
                            </td>

                            <td class="border-left-0">

                                <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                    <div class="avatar avatar-sm mr-8pt">

                                        <img src="<c:url value="/resources/assets/images/people/110/guy-1.jpg"/>" alt="Avatar"
                                             class="avatar-img rounded-circle">


                                    </div>
                                    <div class="media-body ml-4pt">


                                        <p class="mb-0"><strong class="js-lists-values-name">Gilbert Barrett</strong>
                                        </p>


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
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_contacts_4">
                                    <label class="custom-control-label" for="customCheck1_contacts_4"><span
                                            class="text-hide">Check</span></label>
                                </div>
                            </td>

                            <td class="border-left-0">

                                <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                    <div class="avatar avatar-sm mr-8pt">

                                        <img src="<c:url value="/resources/assets/images/people/110/guy-2.jpg"/>" alt="Avatar"
                                             class="avatar-img rounded-circle">


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
