<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
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
            href="<c:url value="/resources/https://fonts.googleapis.com/css?family=Lato:400,700%7CRoboto:400,500%7CExo+2:600&display=swap"/>"
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
            <div
                    class="container page__container d-flex flex-column flex-md-row align-items-center text-center text-sm-left"
            >
                <div
                        class="flex d-flex flex-column flex-sm-row align-items-center mb-24pt mb-md-0"
                >
                    <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                        <h2 class="mb-0">Courses</h2>

                        <ol class="breadcrumb p-0 m-0">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                            <li class="breadcrumb-item active">Courses</li>
                        </ol>
                    </div>
                </div>

                <div class="row" role="tablist">
                    <div class="d-flex align-items-center navbar-height">
                        <form
                                action="index.html"
                                class="search-form mx-16pt pr-0 pl-16pt"
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
                </div>
            </div>
        </div>

        <div class="page-section border-bottom-2">
            <div class="container page__container">
                <div class="card">
                    <img
                            src="<c:url value="/resources/assets/images/paths/typescript_892x286.png"/>"
                            alt="TypeScript"
                            class="card-img"
                            style="max-height: 100%; width: initial"
                    />
                    <div class="fullbleed bg-primary" style="opacity: 0.5"></div>
                    <img
                            src="<c:url value="/resources/assets/images/paths/typescript_64x64.svg"/>"
                            width="64"
                            alt="Instruduction to TypeScript"
                            class="rounded position-absolute"
                            style="right: 1rem; top: 1rem"
                    />
                    <div
                            class="card-body d-flex align-items-center justify-content-center fullbleed"
                    >
                        <div>
                            <h2 class="text-white mb-16pt">Introduction to TypeScript</h2>
                            <div
                                    class="d-flex align-items-center mb-16pt justify-content-center"
                            >
                                <div class="d-flex align-items-center mr-16pt">
                      <span
                              class="material-icons icon-16pt text-white-50 mr-4pt"
                      >access_time</span
                      >
                                    <p class="flex text-white-50 lh-1 mb-0">
                                        50 minutes left
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-white-50 mr-4pt"
                      >play_circle_outline</span
                      >
                                    <p class="flex text-white-50 lh-1 mb-0">12 lessons</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center justify-content-center">
                                <a
                                        href="student-take-lesson.html"
                                        class="btn btn-white mr-8pt"
                                >Resume</a
                                >
                                <a
                                        href="student-take-course.html"
                                        class="btn btn-outline-white ml-0"
                                >Start over</a
                                >
                            </div>
                        </div>
                    </div>
                </div>

                <div class="d-flex flex-wrap align-items-start">
                    <div class="d-flex align-items-center mr-24pt">
                        <a href="student-take-course.html" class="mr-12pt">
                            <img
                                    src="<c:url value="/resources/assets/images/paths/angular_64x64.svg"/>"
                                    width="40"
                                    alt="Angular"
                                    class="rounded"
                            />
                        </a>
                        <div class="flex">
                            <a class="card-title" href="student-take-course.html"
                            >Angular Fundamentals</a
                            >
                            <p class="lh-1 mb-0">
                                <span class="text-50 small">with</span>
                                <span class="text-50 small">Elijah Murray</span>
                            </p>
                        </div>
                    </div>
                    <div
                            class="d-flex align-items-center py-4pt"
                            style="white-space: nowrap"
                    >
                        <small class="text-50 mr-8pt">Your rating</small>
                        <div class="rating mr-8pt">
                  <span class="rating__item"
                  ><span class="material-icons text-primary">star</span></span
                  >
                            <span class="rating__item"
                            ><span class="material-icons text-primary">star</span></span
                            >
                            <span class="rating__item"
                            ><span class="material-icons text-primary">star</span></span
                            >
                            <span class="rating__item"
                            ><span class="material-icons text-primary">star</span></span
                            >
                            <span class="rating__item"
                            ><span class="material-icons text-primary"
                            >star_border</span
                            ></span
                            >
                        </div>
                        <small class="text-50">4/5</small>
                    </div>
                </div>
            </div>
        </div>
        <div class="container page__container">
            <div class="page-section">
                <div class="page-separator">
                    <div class="page-separator__text">Learning Paths</div>
                </div>

                <div class="mb-lg-8pt">
                    <div class="col-sm-4 card-group-row__col">
                        <div
                                class="card js-overlay card-sm overlay--primary-dodger-blue stack stack--1 card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img
                                                            src="<c:url value="/resources/assets/images/paths/angular_40x40@2x.png"/>"
                                                            width="40"
                                                            height="40"
                                                            alt="Angular"
                                                            class="rounded"
                                                    />
                                                    <span
                                                            class="overlay__content overlay__content-transparent"
                                                    >
                                <span
                                        class="overlay__action d-flex flex-column text-center lh-1"
                                >
                                  <small
                                          class="h6 small text-white mb-0"
                                          style="font-weight: 500"
                                  >80%</small
                                  >
                                </span>
                              </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">Angular</div>
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>18 courses</small>
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <a
                                            href="undefinedstudent-path.html"
                                            class="ml-4pt btn btn-sm btn-link text-secondary border-1 border-secondary"
                                    >Resume</a
                                    >
                                </div>
                            </div>
                        </div>

                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/angular_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title">Angular</div>
                                    <p class="text-black-50 d-flex lh-1 mb-0 small">
                                        18 courses
                                    </p>
                                </div>
                            </div>

                            <p class="mt-16pt text-black-70">
                                Angular is a platform for building mobile and desktop web
                                applications.
                            </p>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 card-group-row__col">
                        <div
                                class="card js-overlay card-sm overlay--primary-dodger-blue stack stack--1 card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img
                                                            src="<c:url value="/resources/assets/images/paths/swift_40x40@2x.png"/>"
                                                            width="40"
                                                            height="40"
                                                            alt="Angular"
                                                            class="rounded"
                                                    />
                                                    <span
                                                            class="overlay__content overlay__content-transparent"
                                                    >
                                <span
                                        class="overlay__action d-flex flex-column text-center lh-1"
                                >
                                  <small
                                          class="h6 small text-white mb-0"
                                          style="font-weight: 500"
                                  >80%</small
                                  >
                                </span>
                              </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">Swift</div>
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>18 courses</small>
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <a
                                            href="undefinedstudent-path.html"
                                            class="ml-4pt btn btn-sm btn-link text-secondary"
                                    >Resume</a
                                    >
                                </div>
                            </div>
                        </div>

                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/swift_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title">Swift</div>
                                    <p class="text-black-50 d-flex lh-1 mb-0 small">
                                        18 courses
                                    </p>
                                </div>
                            </div>

                            <p class="mt-16pt text-black-70">
                                Swift is a powerful and intuitive programming language for
                                macOS, iOS, watchOS, tvOS and beyond.
                            </p>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 card-group-row__col">
                        <div
                                class="card js-overlay card-sm overlay--primary-dodger-blue stack stack--1 card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img
                                                            src="<c:url value="/resources/assets/images/paths/react_40x40@2x.png"/>"
                                                            width="40"
                                                            height="40"
                                                            alt="Angular"
                                                            class="rounded"
                                                    />
                                                    <span
                                                            class="overlay__content overlay__content-transparent"
                                                    >
                                <span
                                        class="overlay__action d-flex flex-column text-center lh-1"
                                >
                                  <small
                                          class="h6 small text-white mb-0"
                                          style="font-weight: 500"
                                  >80%</small
                                  >
                                </span>
                              </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">React Native</div>
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>18 courses</small>
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <a
                                            href="undefinedstudent-path.html"
                                            class="ml-4pt btn btn-sm btn-link text-secondary"
                                    >Resume</a
                                    >
                                </div>
                            </div>
                        </div>

                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/react_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title">React Native</div>
                                    <p class="text-black-50 d-flex lh-1 mb-0 small">
                                        18 courses
                                    </p>
                                </div>
                            </div>

                            <p class="mt-16pt text-black-70">
                                Learn the fundamentals of working with React Native and how
                                to create basic applications.
                            </p>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 card-group-row__col">
                        <div
                                class="card js-overlay card-sm overlay--primary-dodger-blue stack stack--1 card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img
                                                            src="<c:url value="/resources/assets/images/paths/wordpress_40x40@2x.png"/>"
                                                            width="40"
                                                            height="40"
                                                            alt="Angular"
                                                            class="rounded"
                                                    />
                                                    <span
                                                            class="overlay__content overlay__content-transparent"
                                                    >
                                <span
                                        class="overlay__action d-flex flex-column text-center lh-1"
                                >
                                  <small
                                          class="h6 small text-white mb-0"
                                          style="font-weight: 500"
                                  >80%</small
                                  >
                                </span>
                              </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">WordPress</div>
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>18 courses</small>
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <a
                                            href="undefinedstudent-path.html"
                                            class="ml-4pt btn btn-sm btn-link text-secondary"
                                    >Resume</a
                                    >
                                </div>
                            </div>
                        </div>

                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/wordpress_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title">WordPress</div>
                                    <p class="text-black-50 d-flex lh-1 mb-0 small">
                                        18 courses
                                    </p>
                                </div>
                            </div>

                            <p class="mt-16pt text-black-70">
                                WordPress is open source software you can use to create a
                                beautiful website, blog, or app.
                            </p>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 card-group-row__col">
                        <div
                                class="card js-overlay card-sm overlay--primary-dodger-blue stack stack--1 card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img
                                                            src="<c:url value="/resources/assets/images/paths/devops_40x40@2x.png"/>"
                                                            width="40"
                                                            height="40"
                                                            alt="Angular"
                                                            class="rounded"
                                                    />
                                                    <span
                                                            class="overlay__content overlay__content-transparent"
                                                    >
                                <span
                                        class="overlay__action d-flex flex-column text-center lh-1"
                                >
                                  <small
                                          class="h6 small text-white mb-0"
                                          style="font-weight: 500"
                                  >80%</small
                                  >
                                </span>
                              </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">Dev Ops</div>
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>18 courses</small>
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <a
                                            href="undefinedstudent-path.html"
                                            class="ml-4pt btn btn-sm btn-link text-secondary"
                                    >Resume</a
                                    >
                                </div>
                            </div>
                        </div>

                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/devops_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title">Dev Ops</div>
                                    <p class="text-black-50 d-flex lh-1 mb-0 small">
                                        18 courses
                                    </p>
                                </div>
                            </div>

                            <p class="mt-16pt text-black-70">
                                Learn the fundamentals of working with Dev Ops and how to
                                create basic applications.
                            </p>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 card-group-row__col">
                        <div
                                class="card js-overlay card-sm overlay--primary-dodger-blue stack stack--1 card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img
                                                            src="<c:url value="/resources/assets/images/paths/redis_40x40@2x.png"/>"
                                                            width="40"
                                                            height="40"
                                                            alt="Angular"
                                                            class="rounded"
                                                    />
                                                    <span
                                                            class="overlay__content overlay__content-transparent"
                                                    >
                                <span
                                        class="overlay__action d-flex flex-column text-center lh-1"
                                >
                                  <small
                                          class="h6 small text-white mb-0"
                                          style="font-weight: 500"
                                  >80%</small
                                  >
                                </span>
                              </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">Redis</div>
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>18 courses</small>
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <a
                                            href="undefinedstudent-path.html"
                                            class="ml-4pt btn btn-sm btn-link text-secondary"
                                    >Resume</a
                                    >
                                </div>
                            </div>
                        </div>

                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/redis_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title">Redis</div>
                                    <p class="text-black-50 d-flex lh-1 mb-0 small">
                                        18 courses
                                    </p>
                                </div>
                            </div>

                            <p class="mt-16pt text-black-70">
                                Learn the fundamentals of working with Redis and how to
                                create basic applications.
                            </p>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="undefinedstudent-path.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>
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
                    <div class="page-separator__text">Development Courses</div>
                </div>

                <div class="row card-group-row">
                    <div class="col-lg-3 card-group-row__col">
                        <div
                                class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <a
                                    href="student-take-course.html"
                                    class="card-img-top js-image"
                                    data-position=""
                                    data-height="140"
                            >
                                <img
                                        src="<c:url value="/resources/assets/images/paths/angular_430x168.png"/>"
                                        alt="course"
                                />
                                <span class="overlay__content">
                      <span
                              class="overlay__action d-flex flex-column text-center"
                      >
                        <i class="material-icons icon-32pt"
                        >play_circle_outline</i
                        >
                        <span class="card-title text-white">Resume</span>
                      </span>
                    </span>
                            </a>

                            <span
                                    class="corner-ribbon corner-ribbon--default-right-top corner-ribbon--shadow bg-accent text-white"
                            >NEW</span
                            >

                            <div class="card-body flex">
                                <div class="d-flex">
                                    <div class="flex">
                                        <a class="card-title" href="student-take-course.html"
                                        >Learn Angular fundamentals</a
                                        >
                                        <small class="text-50 font-weight-bold mb-4pt"
                                        >Elijah Murray</small
                                        >
                                    </div>
                                    <a
                                            href="student-take-course.html"
                                            data-toggle="tooltip"
                                            data-title="Add Favorite"
                                            data-placement="top"
                                            data-boundary="window"
                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                    >favorite_border</a
                                    >
                                </div>
                                <div class="d-flex">
                                    <div class="rating flex">
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
                                        ><span class="material-icons">star</span></span
                                        >
                                        <span class="rating__item"
                                        ><span class="material-icons">star_border</span></span
                                        >
                                    </div>
                                    <!-- <small class="text-50">6 hours</small> -->
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-between">
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>6 hours</small>
                                        </p>
                                    </div>
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/angular_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title mb-0">
                                        Learn Angular fundamentals
                                    </div>
                                    <p class="lh-1 mb-0">
                                        <span class="text-black-50 small">with</span>
                                        <span class="text-black-50 small font-weight-bold"
                                        >Elijah Murray</span
                                        >
                                    </p>
                                </div>
                            </div>

                            <p class="my-16pt text-black-70">
                                Learn the fundamentals of working with Angular and how to
                                create basic applications.
                            </p>

                            <div class="mb-16pt">
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Fundamentals of working with Angular</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Create complete Angular applications</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Working with the Angular CLI</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Understanding Dependency Injection</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Testing with Angular</small>
                                    </p>
                                </div>
                            </div>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="student-take-lesson.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="student-take-course.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 card-group-row__col">
                        <div
                                class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <a
                                    href="student-take-course.html"
                                    class="card-img-top js-image"
                                    data-position=""
                                    data-height="140"
                            >
                                <img
                                        src="<c:url value="/resources/assets/images/paths/swift_430x168.png"/>"
                                        alt="course"
                                />
                                <span class="overlay__content">
                      <span
                              class="overlay__action d-flex flex-column text-center"
                      >
                        <i class="material-icons icon-32pt"
                        >play_circle_outline</i
                        >
                        <span class="card-title text-white">Resume</span>
                      </span>
                    </span>
                            </a>

                            <div class="card-body flex">
                                <div class="d-flex">
                                    <div class="flex">
                                        <a class="card-title" href="student-take-course.html"
                                        >Build an iOS Application in Swift</a
                                        >
                                        <small class="text-50 font-weight-bold mb-4pt"
                                        >Elijah Murray</small
                                        >
                                    </div>
                                    <a
                                            href="student-take-course.html"
                                            data-toggle="tooltip"
                                            data-title="Remove Favorite"
                                            data-placement="top"
                                            data-boundary="window"
                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                    >favorite</a
                                    >
                                </div>
                                <div class="d-flex">
                                    <div class="rating flex">
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
                                        ><span class="material-icons">star</span></span
                                        >
                                        <span class="rating__item"
                                        ><span class="material-icons">star_border</span></span
                                        >
                                    </div>
                                    <!-- <small class="text-50">6 hours</small> -->
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-between">
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>6 hours</small>
                                        </p>
                                    </div>
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/swift_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title mb-0">
                                        Build an iOS Application in Swift
                                    </div>
                                    <p class="lh-1 mb-0">
                                        <span class="text-black-50 small">with</span>
                                        <span class="text-black-50 small font-weight-bold"
                                        >Elijah Murray</span
                                        >
                                    </p>
                                </div>
                            </div>

                            <p class="my-16pt text-black-70">
                                Learn the fundamentals of working with Angular and how to
                                create basic applications.
                            </p>

                            <div class="mb-16pt">
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Fundamentals of working with Angular</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Create complete Angular applications</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Working with the Angular CLI</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Understanding Dependency Injection</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Testing with Angular</small>
                                    </p>
                                </div>
                            </div>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="student-take-lesson.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="student-take-course.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 card-group-row__col">
                        <div
                                class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <a
                                    href="student-take-course.html"
                                    class="card-img-top js-image"
                                    data-position=""
                                    data-height="140"
                            >
                                <img
                                        src="<c:url value="/resources/assets/images/paths/wordpress_430x168.png"/>"
                                        alt="course"
                                />
                                <span class="overlay__content">
                      <span
                              class="overlay__action d-flex flex-column text-center"
                      >
                        <i class="material-icons icon-32pt"
                        >play_circle_outline</i
                        >
                        <span class="card-title text-white">Resume</span>
                      </span>
                    </span>
                            </a>

                            <div class="card-body flex">
                                <div class="d-flex">
                                    <div class="flex">
                                        <a class="card-title" href="student-take-course.html"
                                        >Build a WordPress Website</a
                                        >
                                        <small class="text-50 font-weight-bold mb-4pt"
                                        >Elijah Murray</small
                                        >
                                    </div>
                                    <a
                                            href="student-take-course.html"
                                            data-toggle="tooltip"
                                            data-title="Add Favorite"
                                            data-placement="top"
                                            data-boundary="window"
                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                    >favorite_border</a
                                    >
                                </div>
                                <div class="d-flex">
                                    <div class="rating flex">
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
                                        ><span class="material-icons">star</span></span
                                        >
                                        <span class="rating__item"
                                        ><span class="material-icons">star_border</span></span
                                        >
                                    </div>
                                    <!-- <small class="text-50">6 hours</small> -->
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-between">
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>6 hours</small>
                                        </p>
                                    </div>
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/wordpress_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title mb-0">
                                        Build a WordPress Website
                                    </div>
                                    <p class="lh-1 mb-0">
                                        <span class="text-black-50 small">with</span>
                                        <span class="text-black-50 small font-weight-bold"
                                        >Elijah Murray</span
                                        >
                                    </p>
                                </div>
                            </div>

                            <p class="my-16pt text-black-70">
                                Learn the fundamentals of working with Angular and how to
                                create basic applications.
                            </p>

                            <div class="mb-16pt">
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Fundamentals of working with Angular</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Create complete Angular applications</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Working with the Angular CLI</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Understanding Dependency Injection</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Testing with Angular</small>
                                    </p>
                                </div>
                            </div>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="student-take-lesson.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="student-take-course.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 card-group-row__col">
                        <div
                                class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <a
                                    href="student-take-course.html"
                                    class="card-img-top js-image"
                                    data-position="left"
                                    data-height="140"
                            >
                                <img
                                        src="<c:url value="/resources/assets/images/paths/react_430x168.png"/>"
                                        alt="course"
                                />
                                <span class="overlay__content">
                      <span
                              class="overlay__action d-flex flex-column text-center"
                      >
                        <i class="material-icons icon-32pt"
                        >play_circle_outline</i
                        >
                        <span class="card-title text-white">Resume</span>
                      </span>
                    </span>
                            </a>

                            <div class="card-body flex">
                                <div class="d-flex">
                                    <div class="flex">
                                        <a class="card-title" href="student-take-course.html"
                                        >Become a React Native Developer</a
                                        >
                                        <small class="text-50 font-weight-bold mb-4pt"
                                        >Elijah Murray</small
                                        >
                                    </div>
                                    <a
                                            href="student-take-course.html"
                                            data-toggle="tooltip"
                                            data-title="Add Favorite"
                                            data-placement="top"
                                            data-boundary="window"
                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                    >favorite_border</a
                                    >
                                </div>
                                <div class="d-flex">
                                    <div class="rating flex">
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
                                        ><span class="material-icons">star</span></span
                                        >
                                        <span class="rating__item"
                                        ><span class="material-icons">star_border</span></span
                                        >
                                    </div>
                                    <!-- <small class="text-50">6 hours</small> -->
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-between">
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>6 hours</small>
                                        </p>
                                    </div>
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/react_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title mb-0">
                                        Become a React Native Developer
                                    </div>
                                    <p class="lh-1 mb-0">
                                        <span class="text-black-50 small">with</span>
                                        <span class="text-black-50 small font-weight-bold"
                                        >Elijah Murray</span
                                        >
                                    </p>
                                </div>
                            </div>

                            <p class="my-16pt text-black-70">
                                Learn the fundamentals of working with Angular and how to
                                create basic applications.
                            </p>

                            <div class="mb-16pt">
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Fundamentals of working with Angular</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Create complete Angular applications</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Working with the Angular CLI</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Understanding Dependency Injection</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Testing with Angular</small>
                                    </p>
                                </div>
                            </div>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="student-take-lesson.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="student-take-course.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>
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
                    <div class="page-separator__text">Design Courses</div>
                </div>

                <div class="row card-group-row">
                    <div class="col-lg-3 card-group-row__col">
                        <div
                                class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay card-group-row__card"
                                data-overlay-onload-show
                                data-popover-onload-show
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <a
                                    href="student-take-course.html"
                                    class="card-img-top js-image"
                                    data-position=""
                                    data-height="140"
                            >
                                <img
                                        src="<c:url value="/resources/assets/images/paths/sketch_430x168.png"/>"
                                        alt="course"
                                />
                                <span class="overlay__content">
                      <span
                              class="overlay__action d-flex flex-column text-center"
                      >
                        <i class="material-icons icon-32pt"
                        >play_circle_outline</i
                        >
                        <span class="card-title text-white">Resume</span>
                      </span>
                    </span>
                            </a>

                            <div class="card-body flex">
                                <div class="d-flex">
                                    <div class="flex">
                                        <a class="card-title" href="student-take-course.html"
                                        >Learn Sketch</a
                                        >
                                        <small class="text-50 font-weight-bold mb-4pt"
                                        >Elijah Murray</small
                                        >
                                    </div>
                                    <a
                                            href="student-take-course.html"
                                            data-toggle="tooltip"
                                            data-title="Add Favorite"
                                            data-placement="top"
                                            data-boundary="window"
                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                    >favorite_border</a
                                    >
                                </div>
                                <div class="d-flex">
                                    <div class="rating flex">
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
                                        ><span class="material-icons">star</span></span
                                        >
                                        <span class="rating__item"
                                        ><span class="material-icons">star_border</span></span
                                        >
                                    </div>
                                    <!-- <small class="text-50">6 hours</small> -->
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-between">
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>6 hours</small>
                                        </p>
                                    </div>
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/sketch_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title mb-0">Learn Sketch</div>
                                    <p class="lh-1 mb-0">
                                        <span class="text-black-50 small">with</span>
                                        <span class="text-black-50 small font-weight-bold"
                                        >Elijah Murray</span
                                        >
                                    </p>
                                </div>
                            </div>

                            <p class="my-16pt text-black-70">
                                Learn the fundamentals of working with Angular and how to
                                create basic applications.
                            </p>

                            <div class="mb-16pt">
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Fundamentals of working with Angular</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Create complete Angular applications</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Working with the Angular CLI</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Understanding Dependency Injection</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Testing with Angular</small>
                                    </p>
                                </div>
                            </div>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="student-take-lesson.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="student-take-course.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 card-group-row__col">
                        <div
                                class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <a
                                    href="student-take-course.html"
                                    class="card-img-top js-image"
                                    data-position=""
                                    data-height="140"
                            >
                                <img
                                        src="<c:url value="/resources/assets/images/paths/flinto_430x168.png"/>"
                                        alt="course"
                                />
                                <span class="overlay__content">
                      <span
                              class="overlay__action d-flex flex-column text-center"
                      >
                        <i class="material-icons icon-32pt"
                        >play_circle_outline</i
                        >
                        <span class="card-title text-white">Resume</span>
                      </span>
                    </span>
                            </a>

                            <div class="card-body flex">
                                <div class="d-flex">
                                    <div class="flex">
                                        <a class="card-title" href="student-take-course.html"
                                        >Learn Flinto</a
                                        >
                                        <small class="text-50 font-weight-bold mb-4pt"
                                        >Elijah Murray</small
                                        >
                                    </div>
                                    <a
                                            href="student-take-course.html"
                                            data-toggle="tooltip"
                                            data-title="Add Favorite"
                                            data-placement="top"
                                            data-boundary="window"
                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                    >favorite_border</a
                                    >
                                </div>
                                <div class="d-flex">
                                    <div class="rating flex">
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
                                        ><span class="material-icons">star</span></span
                                        >
                                        <span class="rating__item"
                                        ><span class="material-icons">star_border</span></span
                                        >
                                    </div>
                                    <!-- <small class="text-50">6 hours</small> -->
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-between">
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>6 hours</small>
                                        </p>
                                    </div>
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/flinto_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title mb-0">Learn Flinto</div>
                                    <p class="lh-1 mb-0">
                                        <span class="text-black-50 small">with</span>
                                        <span class="text-black-50 small font-weight-bold"
                                        >Elijah Murray</span
                                        >
                                    </p>
                                </div>
                            </div>

                            <p class="my-16pt text-black-70">
                                Learn the fundamentals of working with Angular and how to
                                create basic applications.
                            </p>

                            <div class="mb-16pt">
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Fundamentals of working with Angular</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Create complete Angular applications</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Working with the Angular CLI</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Understanding Dependency Injection</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Testing with Angular</small>
                                    </p>
                                </div>
                            </div>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="student-take-lesson.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="student-take-course.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 card-group-row__col">
                        <div
                                class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <a
                                    href="student-take-course.html"
                                    class="card-img-top js-image"
                                    data-position=""
                                    data-height="140"
                            >
                                <img
                                        src="<c:url value="/resources/assets/images/paths/photoshop_430x168.png"/>"
                                        alt="course"
                                />
                                <span class="overlay__content">
                      <span
                              class="overlay__action d-flex flex-column text-center"
                      >
                        <i class="material-icons icon-32pt"
                        >play_circle_outline</i
                        >
                        <span class="card-title text-white">Resume</span>
                      </span>
                    </span>
                            </a>

                            <div class="card-body flex">
                                <div class="d-flex">
                                    <div class="flex">
                                        <a class="card-title" href="student-take-course.html"
                                        >Learn Photoshop</a
                                        >
                                        <small class="text-50 font-weight-bold mb-4pt"
                                        >Elijah Murray</small
                                        >
                                    </div>
                                    <a
                                            href="student-take-course.html"
                                            data-toggle="tooltip"
                                            data-title="Add Favorite"
                                            data-placement="top"
                                            data-boundary="window"
                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                    >favorite_border</a
                                    >
                                </div>
                                <div class="d-flex">
                                    <div class="rating flex">
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
                                        ><span class="material-icons">star</span></span
                                        >
                                        <span class="rating__item"
                                        ><span class="material-icons">star_border</span></span
                                        >
                                    </div>
                                    <!-- <small class="text-50">6 hours</small> -->
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-between">
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>6 hours</small>
                                        </p>
                                    </div>
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/photoshop_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title mb-0">Learn Photoshop</div>
                                    <p class="lh-1 mb-0">
                                        <span class="text-black-50 small">with</span>
                                        <span class="text-black-50 small font-weight-bold"
                                        >Elijah Murray</span
                                        >
                                    </p>
                                </div>
                            </div>

                            <p class="my-16pt text-black-70">
                                Learn the fundamentals of working with Angular and how to
                                create basic applications.
                            </p>

                            <div class="mb-16pt">
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Fundamentals of working with Angular</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Create complete Angular applications</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Working with the Angular CLI</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Understanding Dependency Injection</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Testing with Angular</small>
                                    </p>
                                </div>
                            </div>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="student-take-lesson.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="student-take-course.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 card-group-row__col">
                        <div
                                class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay card-group-row__card"
                                data-toggle="popover"
                                data-trigger="click"
                        >
                            <a
                                    href="student-take-course.html"
                                    class="card-img-top js-image"
                                    data-position=""
                                    data-height="140"
                            >
                                <img
                                        src="<c:url value="/resources/assets/images/paths/mailchimp_430x168.png"/>"
                                        alt="course"
                                />
                                <span class="overlay__content">
                      <span
                              class="overlay__action d-flex flex-column text-center"
                      >
                        <i class="material-icons icon-32pt"
                        >play_circle_outline</i
                        >
                        <span class="card-title text-white">Resume</span>
                      </span>
                    </span>
                            </a>

                            <div class="card-body flex">
                                <div class="d-flex">
                                    <div class="flex">
                                        <a class="card-title" href="student-take-course.html"
                                        >Newsletter Design</a
                                        >
                                        <small class="text-50 font-weight-bold mb-4pt"
                                        >Elijah Murray</small
                                        >
                                    </div>
                                    <a
                                            href="student-take-course.html"
                                            data-toggle="tooltip"
                                            data-title="Add Favorite"
                                            data-placement="top"
                                            data-boundary="window"
                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                    >favorite_border</a
                                    >
                                </div>
                                <div class="d-flex">
                                    <div class="rating flex">
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
                                        ><span class="material-icons">star</span></span
                                        >
                                        <span class="rating__item"
                                        ><span class="material-icons">star_border</span></span
                                        >
                                    </div>
                                    <!-- <small class="text-50">6 hours</small> -->
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-between">
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>6 hours</small>
                                        </p>
                                    </div>
                                    <div class="col-auto d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img
                                            src="<c:url value="/resources/assets/images/paths/mailchimp_40x40@2x.png"/>"
                                            width="40"
                                            height="40"
                                            alt="Angular"
                                            class="rounded"
                                    />
                                </div>
                                <div class="media-body">
                                    <div class="card-title mb-0">Newsletter Design</div>
                                    <p class="lh-1 mb-0">
                                        <span class="text-black-50 small">with</span>
                                        <span class="text-black-50 small font-weight-bold"
                                        >Elijah Murray</span
                                        >
                                    </p>
                                </div>
                            </div>

                            <p class="my-16pt text-black-70">
                                Learn the fundamentals of working with Angular and how to
                                create basic applications.
                            </p>

                            <div class="mb-16pt">
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Fundamentals of working with Angular</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Create complete Angular applications</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Working with the Angular CLI</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Understanding Dependency Injection</small>
                                    </p>
                                </div>
                                <div class="d-flex align-items-center">
                      <span
                              class="material-icons icon-16pt text-black-50 mr-8pt"
                      >check</span
                      >
                                    <p class="flex text-black-50 lh-1 mb-0">
                                        <small>Testing with Angular</small>
                                    </p>
                                </div>
                            </div>

                            <div class="my-32pt">
                                <div
                                        class="d-flex align-items-center mb-8pt justify-content-center"
                                >
                                    <div class="d-flex align-items-center mr-8pt">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >access_time</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>50 minutes left</small>
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center">
                        <span
                                class="material-icons icon-16pt text-black-50 mr-4pt"
                        >play_circle_outline</span
                        >
                                        <p class="flex text-black-50 lh-1 mb-0">
                                            <small>12 lessons</small>
                                        </p>
                                    </div>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-center"
                                >
                                    <a
                                            href="student-take-lesson.html"
                                            class="btn btn-primary mr-8pt"
                                    >Resume</a
                                    >
                                    <a
                                            href="student-take-course.html"
                                            class="btn btn-outline-secondary ml-0"
                                    >Start over</a
                                    >
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <small class="text-black-50 mr-8pt">Your rating</small>
                                <div class="rating mr-8pt">
                      <span class="rating__item"
                      ><span class="material-icons text-primary"
                      >star</span
                      ></span
                      >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star</span
                                    ></span
                                    >
                                    <span class="rating__item"
                                    ><span class="material-icons text-primary"
                                    >star_border</span
                                    ></span
                                    >
                                </div>
                                <small class="text-black-50">4/5</small>
                            </div>
                        </div>
                    </div>
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
                    <div class="page-separator__text">Lessons</div>
                </div>

                <div class="mb-lg-8pt">
                    <div class="position-relative carousel-card">
                        <div class="js-mdk-carousel row d-block" id="carousel-courses1">
                            <a
                                    class="carousel-control-next js-mdk-carousel-control mt-n24pt"
                                    href="#carousel-courses1"
                                    role="button"
                                    data-slide="next"
                            >
                    <span
                            class="carousel-control-icon material-icons"
                            aria-hidden="true"
                    >keyboard_arrow_right</span
                    >
                                <span class="sr-only">Next</span>
                            </a>

                            <div class="mdk-carousel__content">
                                <div class="col-12 col-sm-6 col-md-4 col-xl-3">
                                    <div
                                            class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal"
                                            data-partial-height="44"
                                            data-toggle="popover"
                                            data-trigger="click"
                                    >
                                        <a
                                                href="student-take-course.html"
                                                class="js-image"
                                                data-position="left"
                                        >
                                            <img
                                                    src="<c:url value="/resources/assets/images/paths/angular_testing_430x168.png"/>"
                                                    alt="course"
                                            />
                                            <span
                                                    class="overlay__content align-items-start justify-content-start"
                                            >
                            <span
                                    class="overlay__action card-body d-flex align-items-center"
                            >
                              <i class="material-icons mr-4pt"
                              >play_circle_outline</i
                              >
                              <span class="card-title text-white">Resume</span>
                            </span>
                          </span>
                                        </a>

                                        <div class="mdk-reveal__content">
                                            <div class="card-body">
                                                <div class="d-flex">
                                                    <div class="flex">
                                                        <a
                                                                class="card-title"
                                                                href="student-take-course.html"
                                                        >Angular Unit Testing</a
                                                        >
                                                        <small class="text-50 font-weight-bold mb-4pt"
                                                        >Elijah Murray</small
                                                        >
                                                    </div>
                                                    <a
                                                            href="student-take-course.html"
                                                            data-toggle="tooltip"
                                                            data-title="Add Favorite"
                                                            data-placement="top"
                                                            data-boundary="window"
                                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                                    >favorite_border</a
                                                    >
                                                </div>
                                                <div class="d-flex">
                                                    <div class="rating flex">
                                <span class="rating__item"
                                ><span class="material-icons"
                                >star</span
                                ></span
                                >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star_border</span
                                                        ></span
                                                        >
                                                    </div>
                                                    <small class="text-50">6 hours</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="popoverContainer d-none">
                                        <div class="media">
                                            <div class="media-left mr-12pt">
                                                <img
                                                        src="<c:url value="/resources/assets/images/paths/angular_40x40@2x.png"/>"
                                                        width="40"
                                                        height="40"
                                                        alt="Angular"
                                                        class="rounded"
                                                />
                                            </div>
                                            <div class="media-body">
                                                <div class="card-title mb-0">
                                                    Angular Unit Testing
                                                </div>
                                                <p class="lh-1 mb-0">
                                                    <span class="text-black-50 small">with</span>
                                                    <span class="text-black-50 small font-weight-bold"
                                                    >Elijah Murray</span
                                                    >
                                                </p>
                                            </div>
                                        </div>

                                        <p class="my-16pt text-black-70">
                                            Learn the fundamentals of working with Angular and how
                                            to create basic applications.
                                        </p>

                                        <div class="mb-16pt">
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small
                                                    >Fundamentals of working with Angular</small
                                                    >
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small
                                                    >Create complete Angular applications</small
                                                    >
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Working with the Angular CLI</small>
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Understanding Dependency Injection</small>
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Testing with Angular</small>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="my-32pt">
                                            <div
                                                    class="d-flex align-items-center mb-8pt justify-content-center"
                                            >
                                                <div class="d-flex align-items-center mr-8pt">
                              <span
                                      class="material-icons icon-16pt text-black-50 mr-4pt"
                              >access_time</span
                              >
                                                    <p class="flex text-black-50 lh-1 mb-0">
                                                        <small>50 minutes left</small>
                                                    </p>
                                                </div>
                                                <div class="d-flex align-items-center">
                              <span
                                      class="material-icons icon-16pt text-black-50 mr-4pt"
                              >play_circle_outline</span
                              >
                                                    <p class="flex text-black-50 lh-1 mb-0">
                                                        <small>12 lessons</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div
                                                    class="d-flex align-items-center justify-content-center"
                                            >
                                                <a
                                                        href="student-take-lesson.html"
                                                        class="btn btn-primary mr-8pt"
                                                >Resume</a
                                                >
                                                <a
                                                        href="student-take-course.html"
                                                        class="btn btn-outline-secondary ml-0"
                                                >Start over</a
                                                >
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center">
                                            <small class="text-black-50 mr-8pt"
                                            >Your rating</small
                                            >
                                            <div class="rating mr-8pt">
                            <span class="rating__item"
                            ><span class="material-icons text-primary"
                            >star</span
                            ></span
                            >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star_border</span
                                                ></span
                                                >
                                            </div>
                                            <small class="text-black-50">4/5</small>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12 col-sm-6 col-md-4 col-xl-3">
                                    <div
                                            class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal"
                                            data-partial-height="44"
                                            data-toggle="popover"
                                            data-trigger="click"
                                    >
                                        <a
                                                href="student-take-course.html"
                                                class="js-image"
                                                data-position="left"
                                        >
                                            <img
                                                    src="<c:url value="/resources/assets/images/paths/angular_routing_430x168.png"/>"
                                                    alt="course"
                                            />
                                            <span
                                                    class="overlay__content align-items-start justify-content-start"
                                            >
                            <span
                                    class="overlay__action card-body d-flex align-items-center"
                            >
                              <i class="material-icons mr-4pt"
                              >play_circle_outline</i
                              >
                              <span class="card-title text-white">Resume</span>
                            </span>
                          </span>
                                        </a>

                                        <div class="mdk-reveal__content">
                                            <div class="card-body">
                                                <div class="d-flex">
                                                    <div class="flex">
                                                        <a
                                                                class="card-title"
                                                                href="student-take-course.html"
                                                        >Angular Routing In-Depth</a
                                                        >
                                                        <small class="text-50 font-weight-bold mb-4pt"
                                                        >Elijah Murray</small
                                                        >
                                                    </div>
                                                    <a
                                                            href="student-take-course.html"
                                                            data-toggle="tooltip"
                                                            data-title="Add Favorite"
                                                            data-placement="top"
                                                            data-boundary="window"
                                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                                    >favorite_border</a
                                                    >
                                                </div>
                                                <div class="d-flex">
                                                    <div class="rating flex">
                                <span class="rating__item"
                                ><span class="material-icons"
                                >star</span
                                ></span
                                >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star_border</span
                                                        ></span
                                                        >
                                                    </div>
                                                    <small class="text-50">6 hours</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="popoverContainer d-none">
                                        <div class="media">
                                            <div class="media-left mr-12pt">
                                                <img
                                                        src="<c:url value="/resources/assets/images/paths/angular_40x40@2x.png"/>"
                                                        width="40"
                                                        height="40"
                                                        alt="Angular"
                                                        class="rounded"
                                                />
                                            </div>
                                            <div class="media-body">
                                                <div class="card-title mb-0">
                                                    Angular Routing In-Depth
                                                </div>
                                                <p class="lh-1 mb-0">
                                                    <span class="text-black-50 small">with</span>
                                                    <span class="text-black-50 small font-weight-bold"
                                                    >Elijah Murray</span
                                                    >
                                                </p>
                                            </div>
                                        </div>

                                        <p class="my-16pt text-black-70">
                                            Learn the fundamentals of working with Angular and how
                                            to create basic applications.
                                        </p>

                                        <div class="mb-16pt">
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small
                                                    >Fundamentals of working with Angular</small
                                                    >
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small
                                                    >Create complete Angular applications</small
                                                    >
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Working with the Angular CLI</small>
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Understanding Dependency Injection</small>
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Testing with Angular</small>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="my-32pt">
                                            <div
                                                    class="d-flex align-items-center mb-8pt justify-content-center"
                                            >
                                                <div class="d-flex align-items-center mr-8pt">
                              <span
                                      class="material-icons icon-16pt text-black-50 mr-4pt"
                              >access_time</span
                              >
                                                    <p class="flex text-black-50 lh-1 mb-0">
                                                        <small>50 minutes left</small>
                                                    </p>
                                                </div>
                                                <div class="d-flex align-items-center">
                              <span
                                      class="material-icons icon-16pt text-black-50 mr-4pt"
                              >play_circle_outline</span
                              >
                                                    <p class="flex text-black-50 lh-1 mb-0">
                                                        <small>12 lessons</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div
                                                    class="d-flex align-items-center justify-content-center"
                                            >
                                                <a
                                                        href="student-take-lesson.html"
                                                        class="btn btn-primary mr-8pt"
                                                >Resume</a
                                                >
                                                <a
                                                        href="student-take-course.html"
                                                        class="btn btn-outline-secondary ml-0"
                                                >Start over</a
                                                >
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center">
                                            <small class="text-black-50 mr-8pt"
                                            >Your rating</small
                                            >
                                            <div class="rating mr-8pt">
                            <span class="rating__item"
                            ><span class="material-icons text-primary"
                            >star</span
                            ></span
                            >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star_border</span
                                                ></span
                                                >
                                            </div>
                                            <small class="text-black-50">4/5</small>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12 col-sm-6 col-md-4 col-xl-3">
                                    <div
                                            class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal"
                                            data-partial-height="44"
                                            data-toggle="popover"
                                            data-trigger="click"
                                    >
                                        <a
                                                href="student-take-course.html"
                                                class="js-image"
                                                data-position="left"
                                        >
                                            <img
                                                    src="<c:url value="/resources/assets/images/paths/angular_services_430x168.png"/>"
                                                    alt="course"
                                            />
                                            <span
                                                    class="overlay__content align-items-start justify-content-start"
                                            >
                            <span
                                    class="overlay__action card-body d-flex align-items-center"
                            >
                              <i class="material-icons mr-4pt"
                              >play_circle_outline</i
                              >
                              <span class="card-title text-white">Resume</span>
                            </span>
                          </span>
                                        </a>

                                        <div class="mdk-reveal__content">
                                            <div class="card-body">
                                                <div class="d-flex">
                                                    <div class="flex">
                                                        <a
                                                                class="card-title"
                                                                href="student-take-course.html"
                                                        >Angular Services</a
                                                        >
                                                        <small class="text-50 font-weight-bold mb-4pt"
                                                        >Elijah Murray</small
                                                        >
                                                    </div>
                                                    <a
                                                            href="student-take-course.html"
                                                            data-toggle="tooltip"
                                                            data-title="Add Favorite"
                                                            data-placement="top"
                                                            data-boundary="window"
                                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                                    >favorite_border</a
                                                    >
                                                </div>
                                                <div class="d-flex">
                                                    <div class="rating flex">
                                <span class="rating__item"
                                ><span class="material-icons"
                                >star</span
                                ></span
                                >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star_border</span
                                                        ></span
                                                        >
                                                    </div>
                                                    <small class="text-50">6 hours</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="popoverContainer d-none">
                                        <div class="media">
                                            <div class="media-left mr-12pt">
                                                <img
                                                        src="<c:url value="/resources/assets/images/paths/angular_40x40@2x.png"/>"
                                                        width="40"
                                                        height="40"
                                                        alt="Angular"
                                                        class="rounded"
                                                />
                                            </div>
                                            <div class="media-body">
                                                <div class="card-title mb-0">Angular Services</div>
                                                <p class="lh-1 mb-0">
                                                    <span class="text-black-50 small">with</span>
                                                    <span class="text-black-50 small font-weight-bold"
                                                    >Elijah Murray</span
                                                    >
                                                </p>
                                            </div>
                                        </div>

                                        <p class="my-16pt text-black-70">
                                            Learn the fundamentals of working with Angular and how
                                            to create basic applications.
                                        </p>

                                        <div class="mb-16pt">
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small
                                                    >Fundamentals of working with Angular</small
                                                    >
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small
                                                    >Create complete Angular applications</small
                                                    >
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Working with the Angular CLI</small>
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Understanding Dependency Injection</small>
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Testing with Angular</small>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="my-32pt">
                                            <div
                                                    class="d-flex align-items-center mb-8pt justify-content-center"
                                            >
                                                <div class="d-flex align-items-center mr-8pt">
                              <span
                                      class="material-icons icon-16pt text-black-50 mr-4pt"
                              >access_time</span
                              >
                                                    <p class="flex text-black-50 lh-1 mb-0">
                                                        <small>50 minutes left</small>
                                                    </p>
                                                </div>
                                                <div class="d-flex align-items-center">
                              <span
                                      class="material-icons icon-16pt text-black-50 mr-4pt"
                              >play_circle_outline</span
                              >
                                                    <p class="flex text-black-50 lh-1 mb-0">
                                                        <small>12 lessons</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div
                                                    class="d-flex align-items-center justify-content-center"
                                            >
                                                <a
                                                        href="student-take-lesson.html"
                                                        class="btn btn-primary mr-8pt"
                                                >Resume</a
                                                >
                                                <a
                                                        href="student-take-course.html"
                                                        class="btn btn-outline-secondary ml-0"
                                                >Start over</a
                                                >
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center">
                                            <small class="text-black-50 mr-8pt"
                                            >Your rating</small
                                            >
                                            <div class="rating mr-8pt">
                            <span class="rating__item"
                            ><span class="material-icons text-primary"
                            >star</span
                            ></span
                            >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star_border</span
                                                ></span
                                                >
                                            </div>
                                            <small class="text-black-50">4/5</small>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12 col-sm-6 col-md-4 col-xl-3">
                                    <div
                                            class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal"
                                            data-partial-height="44"
                                            data-toggle="popover"
                                            data-trigger="click"
                                    >
                                        <a
                                                href="student-take-course.html"
                                                class="js-image"
                                                data-position=""
                                        >
                                            <img
                                                    src="<c:url value="/resources/assets/images/paths/angular_patterns_430x168.png"/>"
                                                    alt="course"
                                            />
                                            <span
                                                    class="overlay__content align-items-start justify-content-start"
                                            >
                            <span
                                    class="overlay__action card-body d-flex align-items-center"
                            >
                              <i class="material-icons mr-4pt"
                              >play_circle_outline</i
                              >
                              <span class="card-title text-white">Resume</span>
                            </span>
                          </span>
                                        </a>

                                        <div class="mdk-reveal__content">
                                            <div class="card-body">
                                                <div class="d-flex">
                                                    <div class="flex">
                                                        <a
                                                                class="card-title"
                                                                href="student-take-course.html"
                                                        >Angular Patterns</a
                                                        >
                                                        <small class="text-50 font-weight-bold mb-4pt"
                                                        >Elijah Murray</small
                                                        >
                                                    </div>
                                                    <a
                                                            href="student-take-course.html"
                                                            data-toggle="tooltip"
                                                            data-title="Add Favorite"
                                                            data-placement="top"
                                                            data-boundary="window"
                                                            class="ml-4pt material-icons text-20 card-course__icon-favorite"
                                                    >favorite_border</a
                                                    >
                                                </div>
                                                <div class="d-flex">
                                                    <div class="rating flex">
                                <span class="rating__item"
                                ><span class="material-icons"
                                >star</span
                                ></span
                                >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star</span
                                                        ></span
                                                        >
                                                        <span class="rating__item"
                                                        ><span class="material-icons"
                                                        >star_border</span
                                                        ></span
                                                        >
                                                    </div>
                                                    <small class="text-50">6 hours</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="popoverContainer d-none">
                                        <div class="media">
                                            <div class="media-left mr-12pt">
                                                <img
                                                        src="<c:url value="/resources/assets/images/paths/angular_40x40@2x.png"/>"
                                                        width="40"
                                                        height="40"
                                                        alt="Angular"
                                                        class="rounded"
                                                />
                                            </div>
                                            <div class="media-body">
                                                <div class="card-title mb-0">Angular Patterns</div>
                                                <p class="lh-1 mb-0">
                                                    <span class="text-black-50 small">with</span>
                                                    <span class="text-black-50 small font-weight-bold"
                                                    >Elijah Murray</span
                                                    >
                                                </p>
                                            </div>
                                        </div>

                                        <p class="my-16pt text-black-70">
                                            Learn the fundamentals of working with Angular and how
                                            to create basic applications.
                                        </p>

                                        <div class="mb-16pt">
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small
                                                    >Fundamentals of working with Angular</small
                                                    >
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small
                                                    >Create complete Angular applications</small
                                                    >
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Working with the Angular CLI</small>
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Understanding Dependency Injection</small>
                                                </p>
                                            </div>
                                            <div class="d-flex align-items-center">
                            <span
                                    class="material-icons icon-16pt text-black-50 mr-8pt"
                            >check</span
                            >
                                                <p class="flex text-black-50 lh-1 mb-0">
                                                    <small>Testing with Angular</small>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="my-32pt">
                                            <div
                                                    class="d-flex align-items-center mb-8pt justify-content-center"
                                            >
                                                <div class="d-flex align-items-center mr-8pt">
                              <span
                                      class="material-icons icon-16pt text-black-50 mr-4pt"
                              >access_time</span
                              >
                                                    <p class="flex text-black-50 lh-1 mb-0">
                                                        <small>50 minutes left</small>
                                                    </p>
                                                </div>
                                                <div class="d-flex align-items-center">
                              <span
                                      class="material-icons icon-16pt text-black-50 mr-4pt"
                              >play_circle_outline</span
                              >
                                                    <p class="flex text-black-50 lh-1 mb-0">
                                                        <small>12 lessons</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div
                                                    class="d-flex align-items-center justify-content-center"
                                            >
                                                <a
                                                        href="student-take-lesson.html"
                                                        class="btn btn-primary mr-8pt"
                                                >Resume</a
                                                >
                                                <a
                                                        href="student-take-course.html"
                                                        class="btn btn-outline-secondary ml-0"
                                                >Start over</a
                                                >
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center">
                                            <small class="text-black-50 mr-8pt"
                                            >Your rating</small
                                            >
                                            <div class="rating mr-8pt">
                            <span class="rating__item"
                            ><span class="material-icons text-primary"
                            >star</span
                            ></span
                            >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star</span
                                                ></span
                                                >
                                                <span class="rating__item"
                                                ><span class="material-icons text-primary"
                                                >star_border</span
                                                ></span
                                                >
                                            </div>
                                            <small class="text-black-50">4/5</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="page-separator">
                    <div class="page-separator__text">Achievements</div>
                </div>

                <div class="position-relative carousel-card">
                    <div
                            class="js-mdk-carousel row d-block"
                            id="carousel-achievements"
                    >
                        <a
                                class="carousel-control-next js-mdk-carousel-control"
                                href="#carousel-achievements"
                                role="button"
                                data-slide="next"
                        >
                  <span
                          class="carousel-control-icon material-icons"
                          aria-hidden="true"
                  >keyboard_arrow_right</span
                  >
                            <span class="sr-only">Next</span>
                        </a>

                        <div class="mdk-carousel__content">
                            <div class="col-12 col-sm-6">
                                <a class="card border-0 mb-0" href="">
                                    <img
                                            src="<c:url value="/resources/assets/images/achievements/flinto.png"/>"
                                            alt="Flinto"
                                            class="card-img"
                                            style="max-height: 100%; width: initial"
                                    />
                                    <div
                                            class="fullbleed bg-primary"
                                            style="opacity: 0.5"
                                    ></div>
                                    <span
                                            class="card-body d-flex flex-column align-items-center justify-content-center fullbleed"
                                    >
                        <span class="row flex-nowrap">
                          <span
                                  class="col-auto text-center d-flex flex-column justify-content-center align-items-center"
                          >
                            <span
                                    class="h5 text-white text-uppercase font-weight-normal m-0 d-block"
                            >Achievement</span
                            >
                            <span class="text-white-60 d-block mb-24pt"
                            >Jun 5, 2018</span
                            >
                          </span>
                          <span class="col d-flex flex-column">
                            <span class="text-right flex mb-16pt">
                              <img
                                      src="<c:url value="/resources/assets/images/paths/flinto_40x40@2x.png"/>"
                                      width="64"
                                      alt="Flinto"
                                      class="rounded"
                              />
                            </span>
                          </span>
                        </span>
                        <span class="row flex-nowrap">
                          <span
                                  class="col-auto text-center d-flex flex-column justify-content-center align-items-center"
                          >
                            <img
                                    src="<c:url value="/resources/assets/images/illustration/achievement/128/white.png"/>"
                                    width="64"
                                    alt="achievement"
                            />
                          </span>
                          <span class="col d-flex flex-column">
                            <span>
                              <span class="card-title text-white mb-4pt d-block"
                              >Flinto</span
                              >
                              <span class="text-white-60"
                              >Introduction to The App Design
                                Application</span
                              >
                            </span>
                          </span>
                        </span>
                      </span>
                                </a>
                            </div>

                            <div class="col-12 col-sm-6">
                                <a class="card border-0 mb-0" href="">
                                    <img
                                            src="<c:url value="/resources/assets/images/achievements/angular.png"/>"
                                            alt="Angular fundamentals"
                                            class="card-img"
                                            style="max-height: 100%; width: initial"
                                    />
                                    <div
                                            class="fullbleed bg-primary"
                                            style="opacity: 0.5"
                                    ></div>
                                    <span
                                            class="card-body d-flex flex-column align-items-center justify-content-center fullbleed"
                                    >
                        <span class="row flex-nowrap">
                          <span
                                  class="col-auto text-center d-flex flex-column justify-content-center align-items-center"
                          >
                            <span
                                    class="h5 text-white text-uppercase font-weight-normal m-0 d-block"
                            >Achievement</span
                            >
                            <span class="text-white-60 d-block mb-24pt"
                            >Jun 5, 2018</span
                            >
                          </span>
                          <span class="col d-flex flex-column">
                            <span class="text-right flex mb-16pt">
                              <img
                                      src="<c:url value="/resources/assets/images/paths/angular_64x64.png"/>"
                                      width="64"
                                      alt="Angular fundamentals"
                                      class="rounded"
                              />
                            </span>
                          </span>
                        </span>
                        <span class="row flex-nowrap">
                          <span
                                  class="col-auto text-center d-flex flex-column justify-content-center align-items-center"
                          >
                            <img
                                    src="<c:url value="/resources/assets/images/illustration/achievement/128/white.png"/>"
                                    width="64"
                                    alt="achievement"
                            />
                          </span>
                          <span class="col d-flex flex-column">
                            <span>
                              <span class="card-title text-white mb-4pt d-block"
                              >Angular fundamentals</span
                              >
                              <span class="text-white-60"
                              >Creating and Communicating Between Angular
                                Components</span
                              >
                            </span>
                          </span>
                        </span>
                      </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--    footer -->
        <%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
        <!--  end footer -->
    </div>
    <!-- // END drawer-layout__content -->

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
