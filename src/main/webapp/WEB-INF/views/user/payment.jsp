<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
            href="https://fonts.googleapis.com/css?family=Lato:400,700%7CRoboto:400,500%7CExo+2:600&display=swap"
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
<%@include file="/WEB-INF/views/layouts/user/preloader.jsp" %>

<div
        class="mdk-drawer-layout js-mdk-drawer-layout"
        data-push
        data-responsive-width="992px"
>
    <!-- drawer-layout__content -->
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

        <div class="pt-32pt">
            <div class="container page__container d-flex flex-column flex-md-row align-items-center text-center text-sm-left">
                <div class="flex d-flex flex-column flex-sm-row align-items-center mb-24pt mb-md-0">

                    <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                        <h2 class="mb-0">Tuition Payment</h2>

                        <ol class="breadcrumb p-0 m-0">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                            <li class="breadcrumb-item active">

                                Payment

                            </li>

                        </ol>

                    </div>
                </div>


                <div class="row" role="tablist">
                    <div class="col-auto">
                        <a href="discussions-ask.html" class="btn btn-primary">Pay...</a>
                    </div>
                </div>

            </div>
        </div>


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

            <div class="card mb-0">
                <div class="card-header d-flex align-items-center">
                    <div class="flatpickr-wrapper flex">
                        <div id="recent_orders_date" data-toggle="flatpickr" data-flatpickr-wrap="true"
                             data-flatpickr-static="true" data-flatpickr-mode="range" data-flatpickr-alt-format="d/m/Y"
                             data-flatpickr-date-format="d/m/Y">
                            <strong class="card-title d-block">All courses</strong>
                            <a href="javascript:void(0)" class="link-date" data-toggle>13/03/2018 to 20/03/2018</a>
                            <input class="d-none" type="hidden" value="13/03/2018 to 20/03/2018" data-input>
                        </div>
                    </div>
                    <i class="material-icons text-20">help_outline</i>
                </div>
                <div class="table-responsive" data-toggle="lists" data-lists-sort-by="js-lists-values-orders-name"
                     data-lists-values='["js-lists-values-orders-name", "js-lists-values-orders-date", "js-lists-values-orders-amount"]'>
                    <table class="table mb-0 table-nowrap thead-border-top-0">
                        <thead>
                        <tr>
                            <th style="width: 18px;">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-toggle-check-all"
                                           data-target="#orders" id="customCheckAll">
                                    <label class="custom-control-label" for="customCheckAll"><span class="text-hide">Toggle all</span></label>
                                </div>
                            </th>
                            <th>
                                <a href="javascript:void(0)" class="sort"
                                   data-sort="js-lists-values-orders-name">Name</a>
                            </th>
                            <th style="width: 150px;">
                                <a href="javascript:void(0)" class="sort"
                                   data-sort="js-lists-values-orders-date">Date</a>
                            </th>
                            <th style="width: 100px;">
                                <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-orders-amount">Amount</a>
                            </th>
                            <th style="width: 24px;"></th>
                        </tr>
                        </thead>
                        <tbody class="list" id="orders">


                        <tr>
                            <td>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_1">
                                    <label class="custom-control-label" for="customCheck1_1"><span class="text-hide">Check</span></label>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="material-icons text-20 mr-8pt">contacts</i>
                                    <a class="js-lists-values-orders-name" href="">Jenell D. Matney</a>
                                </div>
                            </td>
                            <td class="js-lists-values-orders-date text-50">4 days ago</td>
                            <td>
                                <a class="js-lists-values-orders-amount" href="">&dollar;246</a>
                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_2">
                                    <label class="custom-control-label" for="customCheck1_2"><span class="text-hide">Check</span></label>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="material-icons text-20 mr-8pt">contacts</i>
                                    <a class="js-lists-values-orders-name" href="">Sherri J. Cardenas</a>
                                </div>
                            </td>
                            <td class="js-lists-values-orders-date text-50">3 days ago</td>
                            <td>
                                <a class="js-lists-values-orders-amount" href="">&dollar;369</a>
                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_3">
                                    <label class="custom-control-label" for="customCheck1_3"><span class="text-hide">Check</span></label>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="material-icons text-20 mr-8pt">contacts</i>
                                    <a class="js-lists-values-orders-name" href="">Joseph S. Ferland</a>
                                </div>
                            </td>
                            <td class="js-lists-values-orders-date text-50">2 days ago</td>
                            <td>
                                <a class="js-lists-values-orders-amount" href="">&dollar;492</a>
                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                        <tr class="selected">
                            <td>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row" checked=""
                                           id="customCheck1_4">
                                    <label class="custom-control-label" for="customCheck1_4"><span class="text-hide">Check</span></label>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="material-icons text-20 mr-8pt">contacts</i>
                                    <a class="js-lists-values-orders-name" href="">Bryan K. Davis</a>
                                </div>
                            </td>
                            <td class="js-lists-values-orders-date text-50">1 day ago</td>
                            <td>
                                <a class="js-lists-values-orders-amount" href="">&dollar;615</a>
                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                        <tr class="selected">
                            <td>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row" checked=""
                                           id="customCheck1_5">
                                    <label class="custom-control-label" for="customCheck1_5"><span class="text-hide">Check</span></label>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="material-icons text-20 mr-8pt">contacts</i>
                                    <a class="js-lists-values-orders-name" href="">Elizabeth J. Ohara</a>
                                </div>
                            </td>
                            <td class="js-lists-values-orders-date text-50">4 hours ago</td>
                            <td>
                                <a class="js-lists-values-orders-amount" href="">&dollar;738</a>
                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                    </table>
                </div>
                <div class="card-footer">
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

<!-- Tables -->
<script src="<c:url value="/resources/assets/js/toggle-check-all.js"/>"></script>
<script src="<c:url value="/resources/assets/js/check-selected-row.js"/>"></script>

<script>
    var drawer = document.querySelector(".mdk-drawer-layout");

    drawer.style.overflow = "auto";
</script>
</body>
</html>

