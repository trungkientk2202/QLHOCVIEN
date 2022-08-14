<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
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

        <div class="page-section">
            <div class="container page__container">
                <div class="d-flex align-items-center navbar-height">
                    <form
                            action="index.html"
                            class="search-form mx-16pt pr-0 pl-16pt flex"
                    >
                        <input
                                type="text"
                                class="form-control pl-0"
                                placeholder="Search"
                        />
                        <button class="btn" type="submit">
                            <i class="material-icons">search</i>
                        </button>
                    </form>
                </div>

                <div
                        class="d-flex flex-column flex-sm-row align-items-sm-center mb-24pt"
                        style="white-space: nowrap"
                >
                    <small
                            class="flex text-muted text-headings text-uppercase mr-3 mb-2 mb-sm-0"
                    >Displaying 4 out of 10 courses</small
                    >
                    <div
                            class="w-auto ml-sm-auto table d-flex align-items-center mb-2 mb-sm-0"
                    >
                        <div>
                            <div class="d-flex">
                                <div>
                                    <select
                                            id="expire_month"
                                            class="form-control custom-select"
                                            style="width: 140px"
                                    >
                                        <option value="1">January</option>
                                        <option value="2">February</option>
                                        <option value="3">March</option>
                                        <option value="4">April</option>
                                        <option value="5">May</option>
                                        <option value="6">June</option>
                                        <option value="7">July</option>
                                        <option value="8">August</option>
                                        <option value="9">September</option>
                                        <option value="10">October</option>
                                        <option value="11">November</option>
                                        <option value="12">December</option>
                                    </select>
                                </div>
                                <div class="ml-8pt">
                                    <select
                                            id="expire_year"
                                            class="form-control custom-select"
                                            style="width: 100px"
                                    >
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option value="2022">2022</option>
                                        <option value="2023">2023</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <a
                            href="#"
                            data-target="#library-drawer"
                            data-toggle="sidebar"
                            class="btn btn-sm btn-white ml-sm-16pt"
                    >
                        <i class="material-icons icon--left">tune</i> Filters
                    </a>
                </div>

                <div class="page-separator">
                    <div class="page-separator__text">My Courses</div>
                </div>

                <div class="row card-group-row">
                    <c:forEach var="dk" items="${listDK}">

                        <div class="col-md-6 col-lg-4 col-xl-3 card-group-row__col">
                            <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal card-group-row__card"
                                 data-partial-height="44"
                                 data-toggle="popover"
                                 data-trigger="click">
                                <a href="/courses/${dk.hocPhan.maHP}"
                                   class="js-image"
                                   data-position="">
                                    <img src="<c:url value="/resources/assets/images/paths/xd_430x168.png"/>"
                                         alt="course"/>
                                    <span class="overlay__content align-items-start justify-content-start" >
                                    <span class="overlay__action card-body d-flex align-items-center">
                                    <i class="material-icons mr-4pt">play_circle_outline</i>
                                    <span class="card-title text-white">Preview</span>  </span>
                                    </span>
                                </a>

                                <div class="mdk-reveal__content">
                                    <div class="card-body">
                                        <div class="d-flex">
                                            <div class="flex">
                                                <a class="card-title" href="/courses/${dk.hocPhan.maHP}">${dk.hocPhan.monHoc.tenMH}</a>
                                                <small class="text-50 font-weight-bold mb-4pt">${dk.hocPhan.giangVien.hoTen}</small>
                                            </div>
                                            <a href="/courses/${dk.hocPhan.maHP}" data-toggle="tooltip" data-title="Add Favorite" data-placement="top"
                                               data-boundary="window"
                                               class="ml-4pt material-icons text-20 card-course__icon-favorite" >favorite_border</a>
                                        </div>
                                        <div class="d-flex">
                                            <div class="rating flex">
                                                <span class="rating__item" ><span class="material-icons">star</span></span>
                                                <span class="rating__item"
                                                ><span class="material-icons">star</span></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons">star</span></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons">star</span></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons"
                                                >star_border</span
                                                ></span
                                                >
                                            </div>
                                            <small class="text-50">Beginner</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="popoverContainer d-none">
                                <div class="media">
                                    <div class="media-left mr-12pt">
                                        <img src="<c:url value="/resources/assets/images/paths/xd_40x40@2x.png"/>"
                                             width="40" height="40" alt="Angular" class="rounded"/>
                                    </div>
                                    <div class="media-body">
                                        <div class="card-title mb-0">${dk.hocPhan.monHoc.tenMH}</div>
                                        <p class="lh-1 mb-0">
                                            <span class="text-black-50 small">with</span>
                                            <span class="text-black-50 small font-weight-bold"
                                            >${dk.hocPhan.giangVien.hoTen}</span
                                            >
                                        </p>
                                    </div>
                                </div>

                                <p class="my-16pt text-black-70">
                                    ${dk.ghiChu}
                                </p>

                                <div class="mb-16pt">
                                    <div class="d-flex align-items-center">
                                        <span  class="material-icons icon-16pt text-black-50 mr-8pt" >check</span>
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>Fundamentals of working with Angular</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                <span
                                        class="material-icons icon-16pt text-black-50 mr-8pt" >check</span>
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>Create complete Angular applications</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>Working with the Angular CLI</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>Understanding Dependency Injection</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>Testing with Angular</small>
                                        </p>
                                    </div>
                                </div>

                                <div class="row align-items-center">
                                    <div class="col-auto">
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">access_time</span>
                                            <p class="flex text-black-50 lh-1 mb-0">
                                                <small>Ngày bắt đầu:${dk.hocPhan.ngayBD}</small>
                                            </p>
                                        </div>
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">play_circle_outline</span>
                                            <p class="flex text-black-50 lh-1 mb-0">
                                                <small>Ngày kết thúc:${dk.hocPhan.ngayKT}</small>
                                            </p>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">assessment</span>
                                            <p class="flex text-black-50 lh-1 mb-0">
                                                <small>In progress</small>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col text-right">
                                        <a href="/courses/${dk.hocPhan.maHP}" class="btn btn-primary"
                                        >Course Detail</a
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="mb-32pt">
                    <ul class="pagination justify-content-start pagination-xsm m-0">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true" class="material-icons"
                    >chevron_left</span
                    >
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
                                <span aria-hidden="true" class="material-icons"
                                >chevron_right</span
                                >
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="page-separator">
                    <div class="page-separator__text">Popular Courses</div>
                </div>

                <div class="row card-group-row">
                    <c:forEach var="course" items="${list}">
                        <div class="col-md-6 col-lg-4 col-xl-3 card-group-row__col">
                            <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay card-group-row__card"
                                 data-toggle="popover" data-trigger="click" >
                                <a href="/courses/${course.maHP}"
                                   class="card-img-top js-image" data-position="" data-height="140" >
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/angular_430x168.png"/>"
                                            alt="course"
                                    />
                                    <span class="overlay__content">
                          <span class="overlay__action d-flex flex-column text-center" >
                            <i class="material-icons icon-32pt" >play_circle_outline</i >
                            <span class="card-title text-white">Preview</span>
                          </span>
                        </span>
                                </a>

                                <div class="card-body flex">
                                    <div class="d-flex">
                                        <div class="flex">
                                            <a class="card-title" href="/courses/${course.maHP}" >${course.monHoc.tenMH}</a >
                                            <small class="text-50 font-weight-bold mb-4pt" >${course.giangVien.hoTen}</small >
                                        </div>
                                        <a href="/courses/${course.maHP}" data-toggle="tooltip" data-title="Add Favorite" data-placement="top"
                                           data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite" >favorite_border</a >
                                    </div>
                                    <div class="d-flex">
                                        <div class="rating flex">
                                            <span class="rating__item" ><span class="material-icons">star</span></span>
                                            <span class="rating__item"><span class="material-icons">star</span></span>
                                            <span class="rating__item"><span class="material-icons">star</span></span>
                                            <span class="rating__item"><span class="material-icons">star</span></span>
                                            <span class="rating__item"><span class="material-icons">star_border</span></span>
                                        </div>
                                        <!-- <small class="text-50">6 hours</small> -->
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row justify-content-between">
                                        <div class="col-auto d-flex align-items-center">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">access_time</span>
                                            <p class="flex text-black-50 lh-1 mb-0">
                                                <small>${course.ngayBD}</small>
                                            </p>
                                        </div>
                                        <div class="col-auto d-flex align-items-center">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">play_circle_outline</span>
                                            <p class="flex text-black-50 lh-1 mb-0">
                                                <small>${course.ngayKT}</small>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="popoverContainer d-none">
                                <div class="media">
                                    <div class="media-left mr-12pt">
                                        <img src="<c:url value="/resources/assets/images/paths/angular_40x40@2x.png"/>"
                                             width="40" height="40" alt="Angular" class="rounded"/>
                                    </div>
                                    <div class="media-body">
                                        <div class="card-title mb-0">${course.monHoc.tenMH}
                                        </div>
                                        <p class="lh-1 mb-0">
                                            <span class="text-black-50 small">with</span>
                                            <span class="text-black-50 small font-weight-bold">${course.giangVien.hoTen}</span>
                                        </p>
                                    </div>
                                </div>

                                <p class="my-16pt text-black-70">
                                    Learn the fundamentals of working with Angular and how to
                                    create basic applications.
                                </p>

                                <div class="mb-16pt">
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>Fundamentals of working with Angular</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>Create complete Angular applications</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>Working with the Angular CLI</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt" >check</span>
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>Understanding Dependency Injection</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>Testing with Angular</small>
                                        </p>
                                    </div>
                                </div>

                                <div class="row align-items-center">
                                    <div class="col-auto">
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">access_time</span>
                                            <p class="flex text-black-50 lh-1 mb-0">
                                                <small>${course.ngayBD}</small>
                                            </p>
                                        </div>
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">play_circle_outline</span>
                                            <p class="flex text-black-50 lh-1 mb-0">
                                                <small>${course.ngayKT}</small>
                                            </p>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">assessment</span>
                                            <p class="flex text-black-50 lh-1 mb-0">
                                                <small>Register</small>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col text-right">
                                        <a href="/courses/${course.maHP}" class="btn btn-primary"
                                        >Register the course</a
                                        >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="mb-32pt">
                    <ul class="pagination justify-content-start pagination-xsm m-0">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true" class="material-icons"
                    >chevron_left</span
                    >
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
                                <span aria-hidden="true" class="material-icons"
                                >chevron_right</span
                                >
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

<script>
    var drawer = document.querySelector(".mdk-drawer-layout");

    drawer.style.overflow = "auto";
</script>
</body>
</html>
