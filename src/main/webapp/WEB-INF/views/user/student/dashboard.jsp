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
<%@include file="/WEB-INF/views/layouts/preloader.jsp" %>

<div
        class="mdk-drawer-layout js-mdk-drawer-layout"
        data-push
        data-responsive-width="992px"
>
    <!-- drawer-layout__content -->
    <div class="mdk-drawer-layout__content page-content">
        <!-- Header -->
        <%@include file="/WEB-INF/views/layouts/user/ui-header.jsp" %>
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

                <div class="mb-lg-8pt card-group-row">
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
                </div>

                <div class="page-separator">
                    <div class="page-separator__text">Featured Paths</div>
                </div>

                <div class="row card-group-row ">

                    <div class="col-sm-4 card-group-row__col">

                        <div class="card overlay--show card-lg overlay--primary-dodger-blue stack stack--1 card-group-row__card">

                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img src="<c:url value="/resources/assets/images/paths/angular_40x40@2x.png"/>" width="40" height="40" alt="Angular" class="rounded">
                                                    <span class="overlay__content overlay__content-transparent">
                                                        <span class="overlay__action d-flex flex-column text-center lh-1">
                                                            <small class="h6 small text-white mb-0" style="font-weight: 500;">80%</small>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">Angular</div>
                                                <p class="flex text-black-50 lh-1 mb-0"><small>18 courses</small></p>
                                            </div>
                                        </div>
                                    </div>

                                    <a href="undefinedstudent-path.html" data-toggle="tooltip" data-title="Remove Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite</a>

                                </div>



                                <div class="d-flex align-items-center mt-8pt">
                                    <small class="text-black-50 mr-8pt">Your rating</small>
                                    <div class="rating mr-8pt">
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star_border</span></span>
                                    </div>
                                    <small class="text-black-50">4/5</small>
                                </div>


                                <p class="mt-16pt text-black-70 flex">Angular is a platform for building mobile and desktop web applications.</p>

                                <div class="mb-16pt d-none">
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Fundamentals of working with Angular</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Create complete Angular applications</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Working with the Angular CLI</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Understanding Dependency Injection</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Testing with Angular</small></p>
                                    </div>
                                </div>


                                <div class="d-flex align-items-center mb-8pt justify-content-center">
                                    <div class="d-flex align-items-center mr-8pt">
                                        <span class="material-icons icon-16pt text-black-50 mr-4pt">access_time</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>50 minutes left</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-4pt">play_circle_outline</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>12 lessons</small></p>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-center">
                                    <a href="student-take-lesson.html" class="btn btn-primary">Resume</a>
                                </div>


                            </div>
                        </div>


                    </div>

                    <div class="col-sm-4 card-group-row__col">

                        <div class="card card-lg overlay--primary-dodger-blue stack stack--1 card-group-row__card">

                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img src="<c:url value="/resources/assets/images/paths/swift_40x40@2x.png"/>" width="40" height="40" alt="Angular" class="rounded">
                                                    <span class="overlay__content overlay__content-transparent">
                                                        <span class="overlay__action d-flex flex-column text-center lh-1">
                                                            <small class="h6 small text-white mb-0" style="font-weight: 500;">80%</small>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">Swift</div>
                                                <p class="flex text-black-50 lh-1 mb-0"><small>18 courses</small></p>
                                            </div>
                                        </div>
                                    </div>

                                    <a href="undefinedstudent-path.html" data-toggle="tooltip" data-title="Add Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>

                                </div>



                                <div class="rating mt-8pt">
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                </div>


                                <p class="mt-16pt text-black-70 flex">Swift is a powerful and intuitive programming language for macOS, iOS, watchOS, tvOS and beyond.</p>

                                <div class="mb-16pt d-none">
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Fundamentals of working with Swift</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Create complete Swift applications</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Working with the Swift CLI</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Understanding Dependency Injection</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Testing with Swift</small></p>
                                    </div>
                                </div>


                                <div class="row align-items-center">
                                    <div class="col-auto">
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">access_time</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>6 hours</small></p>
                                        </div>
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">play_circle_outline</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>12 lessons</small></p>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">assessment</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>Beginner</small></p>
                                        </div>
                                    </div>
                                    <div class="col text-right">
                                        <a href="undefinedstudent-path.html" class="btn btn-outline-secondary">Begin</a>
                                    </div>
                                </div>


                            </div>
                        </div>


                    </div>

                    <div class="col-sm-4 card-group-row__col">

                        <div class="card card-lg overlay--primary-dodger-blue stack stack--1 card-group-row__card">

                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img src="<c:url value="/resources/assets/images/paths/wordpress_40x40@2x.png"/>" width="40" height="40" alt="Angular" class="rounded">
                                                    <span class="overlay__content overlay__content-transparent">
                                                        <span class="overlay__action d-flex flex-column text-center lh-1">
                                                            <small class="h6 small text-white mb-0" style="font-weight: 500;">80%</small>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">WordPress</div>
                                                <p class="flex text-black-50 lh-1 mb-0"><small>18 courses</small></p>
                                            </div>
                                        </div>
                                    </div>

                                    <a href="undefinedstudent-path.html" data-toggle="tooltip" data-title="Add Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>

                                </div>



                                <div class="rating mt-8pt">
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                </div>


                                <p class="mt-16pt text-black-70 flex">WordPress is open source software you can use to create a beautiful website, blog, or app.</p>

                                <div class="mb-16pt d-none">
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Fundamentals of working with WordPress</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Create complete WordPress applications</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Working with the WordPress CLI</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Understanding Dependency Injection</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Testing with WordPress</small></p>
                                    </div>
                                </div>


                                <div class="row align-items-center">
                                    <div class="col-auto">
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">access_time</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>6 hours</small></p>
                                        </div>
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">play_circle_outline</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>12 lessons</small></p>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">assessment</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>Beginner</small></p>
                                        </div>
                                    </div>
                                    <div class="col text-right">
                                        <a href="undefinedstudent-path.html" class="btn btn-outline-secondary">Begin</a>
                                    </div>
                                </div>


                            </div>
                        </div>


                    </div>

                    <div class="col-sm-4 card-group-row__col">

                        <div class="card card-lg overlay--primary-dodger-blue stack stack--1 card-group-row__card">

                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img src="<c:url value="/resources/assets/images/paths/redis_40x40@2x.png"/>" width="40" height="40" alt="Angular" class="rounded">
                                                    <span class="overlay__content overlay__content-transparent">
                                                        <span class="overlay__action d-flex flex-column text-center lh-1">
                                                            <small class="h6 small text-white mb-0" style="font-weight: 500;">80%</small>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">Redis</div>
                                                <p class="flex text-black-50 lh-1 mb-0"><small>5 courses</small></p>
                                            </div>
                                        </div>
                                    </div>

                                    <a href="undefinedstudent-path.html" data-toggle="tooltip" data-title="Add Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>

                                </div>



                                <div class="rating mt-8pt">
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                </div>


                                <p class="mt-16pt text-black-70 flex">Swift is a powerful and intuitive programming language for macOS, iOS, watchOS, tvOS and beyond.</p>

                                <div class="mb-16pt d-none">
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Fundamentals of working with Swift</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Create complete Swift applications</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Working with the Swift CLI</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Understanding Dependency Injection</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Testing with Swift</small></p>
                                    </div>
                                </div>


                                <div class="row align-items-center">
                                    <div class="col-auto">
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">access_time</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>6 hours</small></p>
                                        </div>
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">play_circle_outline</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>12 lessons</small></p>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">assessment</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>Beginner</small></p>
                                        </div>
                                    </div>
                                    <div class="col text-right">
                                        <a href="undefinedstudent-path.html" class="btn btn-outline-secondary">Begin</a>
                                    </div>
                                </div>


                            </div>
                        </div>


                    </div>

                    <div class="col-sm-4 card-group-row__col">

                        <div class="card overlay--show card-lg overlay--primary-dodger-blue stack stack--1 card-group-row__card">

                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img src="<c:url value="/resources/assets/images/paths/photoshop_40x40@2x.png"/>" width="40" height="40" alt="Angular" class="rounded">
                                                    <span class="overlay__content overlay__content-transparent">
                                                        <span class="overlay__action d-flex flex-column text-center lh-1">
                                                            <small class="h6 small text-white mb-0" style="font-weight: 500;">80%</small>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">Photoshop</div>
                                                <p class="flex text-black-50 lh-1 mb-0"><small>10 courses</small></p>
                                            </div>
                                        </div>
                                    </div>

                                    <a href="undefinedstudent-path.html" data-toggle="tooltip" data-title="Remove Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite</a>

                                </div>



                                <div class="d-flex align-items-center mt-8pt">
                                    <small class="text-black-50 mr-8pt">Your rating</small>
                                    <div class="rating mr-8pt">
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star_border</span></span>
                                    </div>
                                    <small class="text-black-50">4/5</small>
                                </div>


                                <p class="mt-16pt text-black-70 flex">Angular is a platform for building mobile and desktop web applications.</p>

                                <div class="mb-16pt d-none">
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Fundamentals of working with Angular</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Create complete Angular applications</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Working with the Angular CLI</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Understanding Dependency Injection</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Testing with Angular</small></p>
                                    </div>
                                </div>


                                <div class="d-flex align-items-center mb-8pt justify-content-center">
                                    <div class="d-flex align-items-center mr-8pt">
                                        <span class="material-icons icon-16pt text-black-50 mr-4pt">access_time</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>50 minutes left</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-4pt">play_circle_outline</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>12 lessons</small></p>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center justify-content-center">
                                    <a href="student-take-lesson.html" class="btn btn-primary">Resume</a>
                                </div>


                            </div>
                        </div>


                    </div>

                    <div class="col-sm-4 card-group-row__col">

                        <div class="card card-lg overlay--primary-dodger-blue stack stack--1 card-group-row__card">

                            <div class="card-body d-flex flex-column">
                                <div class="d-flex align-items-center">
                                    <div class="flex">
                                        <div class="d-flex align-items-center">
                                            <div class="rounded mr-12pt z-0 o-hidden">
                                                <div class="overlay">
                                                    <img src="<c:url value="/resources/assets/images/paths/typescript_40x40@2x.png"/>" width="40" height="40" alt="Angular" class="rounded">
                                                    <span class="overlay__content overlay__content-transparent">
                                                        <span class="overlay__action d-flex flex-column text-center lh-1">
                                                            <small class="h6 small text-white mb-0" style="font-weight: 500;">80%</small>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <div class="card-title">TypeScript</div>
                                                <p class="flex text-black-50 lh-1 mb-0"><small>18 courses</small></p>
                                            </div>
                                        </div>
                                    </div>

                                    <a href="undefinedstudent-path.html" data-toggle="tooltip" data-title="Add Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>

                                </div>



                                <div class="rating mt-8pt">
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                </div>


                                <p class="mt-16pt text-black-70 flex">WordPress is open source software you can use to create a beautiful website, blog, or app.</p>

                                <div class="mb-16pt d-none">
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Fundamentals of working with WordPress</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Create complete WordPress applications</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Working with the WordPress CLI</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Understanding Dependency Injection</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Testing with WordPress</small></p>
                                    </div>
                                </div>


                                <div class="row align-items-center">
                                    <div class="col-auto">
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">access_time</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>6 hours</small></p>
                                        </div>
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">play_circle_outline</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>12 lessons</small></p>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">assessment</span>
                                            <p class="flex text-black-50 lh-1 mb-0"><small>Beginner</small></p>
                                        </div>
                                    </div>
                                    <div class="col text-right">
                                        <a href="undefinedstudent-path.html" class="btn btn-outline-secondary">Begin</a>
                                    </div>
                                </div>


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
