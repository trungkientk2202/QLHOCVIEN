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
    <title>Courses Detail</title>

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

        <div class="mdk-box bg-primary mdk-box--bg-primary js-mdk-box mb-0" data-effects="blend-background">
            <div class="mdk-box__content">
                <div class="hero py-64pt text-center text-sm-left">
                    <div class="container page__container">
                        <div class="d-flex flex-column flex-sm-row">
                            <div class="order-1 order-sm-0">
                                <h1 class="text-white">${hocPhan.monHoc.tenMH}</h1>
                                <p class="lead text-white-50 measure-hero-lead mb-24pt">${hocPhan.monHoc.moTa}</p>
                                <a href="student-path-assessment.html" class="btn btn-outline-white">Get started</a>
                            </div>
                            <div class="ml-sm-auto order-sm-1">
                                <div class="position-relative overflow-hidden rounded border-4 border-light mb-16pt mb-sm-0">
                                    <div class="bg-primary fullbleed" style="opacity: .5;"></div>
                                    <img class="" src="assets/images/paths/angular_96x96.png" alt="Angular">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="navbar navbar-expand-sm navbar-light bg-white border-bottom-2 navbar-list p-0 m-0 align-items-center">
                    <div class="container page__container">
                        <ul class="nav navbar-nav flex align-items-sm-center">
                            <li class="nav-item navbar-list__item">28 Lessons</li>
                            <li class="nav-item navbar-list__item">
                                <i class="material-icons text-muted icon--left">schedule</i>
                                2h 46m
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="page-section border-bottom-2">


            <div class="container page__container">
                <div class="row ">
                    <div class="col-md-7">
                        <div class="page-separator">
                            <div class="page-separator__text">${hocPhan.giangVien.hoTen}</div>
                        </div>
                        <p class="text-70">${hocPhan.giangVien.moTa}</p>
                    </div>
                    <div class="col-md-5">
                        <div class="page-separator">
                            <div class="page-separator__text ">What you’ll learn</div>
                        </div>
                        <ul class="list-unstyled">
                            <li class="d-flex align-items-center">
                                <span class="material-icons text-50 mr-8pt">check</span>
                                <span class="text-70">Fundamentals of working with Angular</span>
                            </li>
                            <li class="d-flex align-items-center">
                                <span class="material-icons text-50 mr-8pt">check</span>
                                <span class="text-70">Create complete Angular applications</span>
                            </li>
                            <li class="d-flex align-items-center">
                                <span class="material-icons text-50 mr-8pt">check</span>
                                <span class="text-70">Working with the Angular CLI</span>
                            </li>
                            <li class="d-flex align-items-center">
                                <span class="material-icons text-50 mr-8pt">check</span>
                                <span class="text-70">Understanding Dependency Injection</span>
                            </li>
                            <li class="d-flex align-items-center">
                                <span class="material-icons text-50 mr-8pt">check</span>
                                <span class="text-70">Testing with Angular</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>

        <div class="page-section bg-white border-bottom-2">
            <div class="container page__container">
                <div class="row">
                    <div class="col-lg-5 mb-24pt mb-lg-0">
                        <div class="border-left-3 border-left-primary pl-24pt pl-md-32pt">
                            <h4 class="mb-8pt">Skill Assessment</h4>
                            <p class="text-70 mb-24pt">Measure your skill to find our where to start.</p>
                            <a href="student-path-assessment.html" class="btn btn-primary">Start assessment</a>
                        </div>
                    </div>
                    <div class="col-lg-7 d-flex align-items-center">
                        <div class="page-num-timeline d-flex flex-column flex-sm-row align-items-center justify-content-center flex">
                            <a href="" data-toggle="tooltip" data-placement="top" data-title="Your current level: Unknown" class="page-num-timeline__item page-num-timeline__item-current">
                                <span class="page-num-timeline__item-tip"></span>
                                <span class="page-num"><i class="material-icons">person</i></span>
                            </a>
                            <a href="" data-toggle="tooltip" data-placement="top" data-title="Beginner" class="page-num-timeline__item">
                                <span class="page-num-timeline__item-tip"></span>
                                <span class="page-num">1</span>
                            </a>
                            <a href="" data-toggle="tooltip" data-placement="top" data-title="Intermediate" class="page-num-timeline__item">
                                <span class="page-num-timeline__item-tip"></span>
                                <span class="page-num">2</span>
                            </a>
                            <a href="" data-toggle="tooltip" data-placement="top" data-title="Advanced" class="page-num-timeline__item">
                                <span class="page-num-timeline__item-tip"></span>
                                <span class="page-num">3</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="container page__container">
            <div class="border-left-2 page-section pl-32pt pb-8pt">
                <div class="d-flex align-items-center page-num-container">
                    <div class="page-num">1</div>
                    <h4>Beginner</h4>
                </div>
                <p class="text-70 mb-lg-32pt">Throughout these Angular courses for beginner*s you will learn core concepts*, common patterns using Angular and, finally, some of the best practices to build fully-functioning web applications using the Angular framework.</p>

                <div class="position-relative carousel-card">
                    <div class="js-mdk-carousel row d-block" id="carousel-courses1">

                        <a class="carousel-control-next js-mdk-carousel-control mt-n24pt" href="#carousel-courses1" role="button" data-slide="next">
                            <span class="carousel-control-icon material-icons" aria-hidden="true">keyboard_arrow_right</span>
                            <span class="sr-only">Next</span>
                        </a>

                        <div class="mdk-carousel__content">

                            <div class="col-12 col-sm-6 col-md-4 col-xl-3">

                                <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal " data-partial-height="44" data-toggle="popover" data-trigger="click">


                                    <a href="student-course.html" class="js-image" data-position="">
                                        <img src="assets/images/paths/angular_430x168.png" alt="course">
                                        <span class="overlay__content align-items-start justify-content-start">
                                                <span class="overlay__action card-body d-flex align-items-center">
                                                    <i class="material-icons mr-4pt">play_circle_outline</i>
                                                    <span class="card-title text-white">Preview</span>
                                                </span>
                                            </span>
                                    </a>

                                    <span class="corner-ribbon corner-ribbon--default-right-top corner-ribbon--shadow bg-accent text-white">NEW</span>

                                    <div class="mdk-reveal__content">
                                        <div class="card-body">
                                            <div class="d-flex">
                                                <div class="flex">
                                                    <a class="card-title" href="student-course.html">Learn Angular fundamentals</a>
                                                    <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                </div>
                                                <a href="student-course.html" data-toggle="tooltip" data-title="Add Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>
                                            </div>
                                            <div class="d-flex">
                                                <div class="rating flex">
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                </div>
                                                <small class="text-50">6 hours</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="popoverContainer d-none">
                                    <div class="media">
                                        <div class="media-left mr-12pt">
                                            <img src="assets/images/paths/angular_40x40@2x.png" width="40" height="40" alt="Angular" class="rounded">
                                        </div>
                                        <div class="media-body">
                                            <div class="card-title mb-0">Learn Angular fundamentals</div>
                                            <p class="lh-1 mb-0">
                                                <span class="text-black-50 small">with</span>
                                                <span class="text-black-50 small font-weight-bold">Elijah Murray</span>
                                            </p>
                                        </div>
                                    </div>

                                    <p class="my-16pt text-black-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                    <div class="mb-16pt">
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
                                            <a href="student-course.html" class="btn btn-primary">Watch trailer</a>
                                        </div>
                                    </div>



                                </div>

                            </div>

                            <div class="col-12 col-sm-6 col-md-4 col-xl-3">

                                <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal " data-partial-height="44" data-toggle="popover" data-trigger="click">


                                    <a href="student-course.html" class="js-image" data-position="">
                                        <img src="assets/images/paths/swift_430x168.png" alt="course">
                                        <span class="overlay__content align-items-start justify-content-start">
                                                <span class="overlay__action card-body d-flex align-items-center">
                                                    <i class="material-icons mr-4pt">play_circle_outline</i>
                                                    <span class="card-title text-white">Preview</span>
                                                </span>
                                            </span>
                                    </a>

                                    <div class="mdk-reveal__content">
                                        <div class="card-body">
                                            <div class="d-flex">
                                                <div class="flex">
                                                    <a class="card-title" href="student-course.html">Build an iOS Application in Swift</a>
                                                    <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                </div>
                                                <a href="student-course.html" data-toggle="tooltip" data-title="Remove Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite</a>
                                            </div>
                                            <div class="d-flex">
                                                <div class="rating flex">
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                </div>
                                                <small class="text-50">6 hours</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="popoverContainer d-none">
                                    <div class="media">
                                        <div class="media-left mr-12pt">
                                            <img src="assets/images/paths/swift_40x40@2x.png" width="40" height="40" alt="Angular" class="rounded">
                                        </div>
                                        <div class="media-body">
                                            <div class="card-title mb-0">Build an iOS Application in Swift</div>
                                            <p class="lh-1 mb-0">
                                                <span class="text-black-50 small">with</span>
                                                <span class="text-black-50 small font-weight-bold">Elijah Murray</span>
                                            </p>
                                        </div>
                                    </div>

                                    <p class="my-16pt text-black-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                    <div class="mb-16pt">
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
                                            <a href="student-course.html" class="btn btn-primary">Watch trailer</a>
                                        </div>
                                    </div>



                                </div>

                            </div>

                            <div class="col-12 col-sm-6 col-md-4 col-xl-3">

                                <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal " data-partial-height="44" data-toggle="popover" data-trigger="click">


                                    <a href="student-course.html" class="js-image" data-position="">
                                        <img src="assets/images/paths/wordpress_430x168.png" alt="course">
                                        <span class="overlay__content align-items-start justify-content-start">
                                                <span class="overlay__action card-body d-flex align-items-center">
                                                    <i class="material-icons mr-4pt">play_circle_outline</i>
                                                    <span class="card-title text-white">Preview</span>
                                                </span>
                                            </span>
                                    </a>

                                    <div class="mdk-reveal__content">
                                        <div class="card-body">
                                            <div class="d-flex">
                                                <div class="flex">
                                                    <a class="card-title" href="student-course.html">Build a WordPress Website</a>
                                                    <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                </div>
                                                <a href="student-course.html" data-toggle="tooltip" data-title="Add Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>
                                            </div>
                                            <div class="d-flex">
                                                <div class="rating flex">
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                </div>
                                                <small class="text-50">6 hours</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="popoverContainer d-none">
                                    <div class="media">
                                        <div class="media-left mr-12pt">
                                            <img src="assets/images/paths/wordpress_40x40@2x.png" width="40" height="40" alt="Angular" class="rounded">
                                        </div>
                                        <div class="media-body">
                                            <div class="card-title mb-0">Build a WordPress Website</div>
                                            <p class="lh-1 mb-0">
                                                <span class="text-black-50 small">with</span>
                                                <span class="text-black-50 small font-weight-bold">Elijah Murray</span>
                                            </p>
                                        </div>
                                    </div>

                                    <p class="my-16pt text-black-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                    <div class="mb-16pt">
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
                                            <a href="student-course.html" class="btn btn-primary">Watch trailer</a>
                                        </div>
                                    </div>



                                </div>

                            </div>

                            <div class="col-12 col-sm-6 col-md-4 col-xl-3">

                                <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal " data-partial-height="44" data-toggle="popover" data-trigger="click">


                                    <a href="student-course.html" class="js-image" data-position="left">
                                        <img src="assets/images/paths/react_430x168.png" alt="course">
                                        <span class="overlay__content align-items-start justify-content-start">
                                                <span class="overlay__action card-body d-flex align-items-center">
                                                    <i class="material-icons mr-4pt">play_circle_outline</i>
                                                    <span class="card-title text-white">Preview</span>
                                                </span>
                                            </span>
                                    </a>

                                    <div class="mdk-reveal__content">
                                        <div class="card-body">
                                            <div class="d-flex">
                                                <div class="flex">
                                                    <a class="card-title" href="student-course.html">Become a React Native Developer</a>
                                                    <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                </div>
                                                <a href="student-course.html" data-toggle="tooltip" data-title="Add Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>
                                            </div>
                                            <div class="d-flex">
                                                <div class="rating flex">
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                </div>
                                                <small class="text-50">6 hours</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="popoverContainer d-none">
                                    <div class="media">
                                        <div class="media-left mr-12pt">
                                            <img src="assets/images/paths/react_40x40@2x.png" width="40" height="40" alt="Angular" class="rounded">
                                        </div>
                                        <div class="media-body">
                                            <div class="card-title mb-0">Become a React Native Developer</div>
                                            <p class="lh-1 mb-0">
                                                <span class="text-black-50 small">with</span>
                                                <span class="text-black-50 small font-weight-bold">Elijah Murray</span>
                                            </p>
                                        </div>
                                    </div>

                                    <p class="my-16pt text-black-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                    <div class="mb-16pt">
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
                                            <a href="student-course.html" class="btn btn-primary">Watch trailer</a>
                                        </div>
                                    </div>



                                </div>

                            </div>

                        </div>
                    </div>
                </div>


            </div>
            <div class="border-left py-32pt pb-lg-64pt pl-32pt">
                <div class="d-flex align-items-center page-num-container">
                    <div class="page-num">2</div>
                    <h4>Intermediate</h4>
                </div>
                <p class="text-70 mb-lg-32pt">Once you have the basics using the Angular framework, you will continue to build on your existing knowledge and, with these intermediate courses you will have a deeper understanding into features like services, routing and testing.</p>

                <div class="position-relative carousel-card">
                    <div class="js-mdk-carousel row d-block" id="carousel-courses2">

                        <a class="carousel-control-next js-mdk-carousel-control mt-n24pt" href="#carousel-courses2" role="button" data-slide="next">
                            <span class="carousel-control-icon material-icons" aria-hidden="true">keyboard_arrow_right</span>
                            <span class="sr-only">Next</span>
                        </a>

                        <div class="mdk-carousel__content">

                            <div class="col-12 col-sm-6 col-md-4 col-xl-3">

                                <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal " data-partial-height="44" data-toggle="popover" data-trigger="click">


                                    <a href="student-course.html" class="js-image" data-position="left">
                                        <img src="assets/images/paths/angular_testing_430x168.png" alt="course">
                                        <span class="overlay__content align-items-start justify-content-start">
                                                <span class="overlay__action card-body d-flex align-items-center">
                                                    <i class="material-icons mr-4pt">play_circle_outline</i>
                                                    <span class="card-title text-white">Preview</span>
                                                </span>
                                            </span>
                                    </a>

                                    <div class="mdk-reveal__content">
                                        <div class="card-body">
                                            <div class="d-flex">
                                                <div class="flex">
                                                    <a class="card-title" href="student-course.html">Angular Unit Testing</a>
                                                    <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                </div>
                                                <a href="student-course.html" data-toggle="tooltip" data-title="Add Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>
                                            </div>
                                            <div class="d-flex">
                                                <div class="rating flex">
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                </div>
                                                <small class="text-50">6 hours</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="popoverContainer d-none">
                                    <div class="media">
                                        <div class="media-left mr-12pt">
                                            <img src="assets/images/paths/angular_40x40@2x.png" width="40" height="40" alt="Angular" class="rounded">
                                        </div>
                                        <div class="media-body">
                                            <div class="card-title mb-0">Angular Unit Testing</div>
                                            <p class="lh-1 mb-0">
                                                <span class="text-black-50 small">with</span>
                                                <span class="text-black-50 small font-weight-bold">Elijah Murray</span>
                                            </p>
                                        </div>
                                    </div>

                                    <p class="my-16pt text-black-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                    <div class="mb-16pt">
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
                                            <a href="student-course.html" class="btn btn-primary">Watch trailer</a>
                                        </div>
                                    </div>



                                </div>

                            </div>

                            <div class="col-12 col-sm-6 col-md-4 col-xl-3">

                                <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal " data-partial-height="44" data-toggle="popover" data-trigger="click">


                                    <a href="student-course.html" class="js-image" data-position="left">
                                        <img src="assets/images/paths/angular_routing_430x168.png" alt="course">
                                        <span class="overlay__content align-items-start justify-content-start">
                                                <span class="overlay__action card-body d-flex align-items-center">
                                                    <i class="material-icons mr-4pt">play_circle_outline</i>
                                                    <span class="card-title text-white">Preview</span>
                                                </span>
                                            </span>
                                    </a>

                                    <div class="mdk-reveal__content">
                                        <div class="card-body">
                                            <div class="d-flex">
                                                <div class="flex">
                                                    <a class="card-title" href="student-course.html">Angular Routing In-Depth</a>
                                                    <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                </div>
                                                <a href="student-course.html" data-toggle="tooltip" data-title="Add Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>
                                            </div>
                                            <div class="d-flex">
                                                <div class="rating flex">
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                </div>
                                                <small class="text-50">6 hours</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="popoverContainer d-none">
                                    <div class="media">
                                        <div class="media-left mr-12pt">
                                            <img src="assets/images/paths/angular_40x40@2x.png" width="40" height="40" alt="Angular" class="rounded">
                                        </div>
                                        <div class="media-body">
                                            <div class="card-title mb-0">Angular Routing In-Depth</div>
                                            <p class="lh-1 mb-0">
                                                <span class="text-black-50 small">with</span>
                                                <span class="text-black-50 small font-weight-bold">Elijah Murray</span>
                                            </p>
                                        </div>
                                    </div>

                                    <p class="my-16pt text-black-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                    <div class="mb-16pt">
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
                                            <a href="student-course.html" class="btn btn-primary">Watch trailer</a>
                                        </div>
                                    </div>



                                </div>

                            </div>

                            <div class="col-12 col-sm-6 col-md-4 col-xl-3">

                                <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal " data-partial-height="44" data-toggle="popover" data-trigger="click">


                                    <a href="student-course.html" class="js-image" data-position="left">
                                        <img src="assets/images/paths/angular_services_430x168.png" alt="course">
                                        <span class="overlay__content align-items-start justify-content-start">
                                                <span class="overlay__action card-body d-flex align-items-center">
                                                    <i class="material-icons mr-4pt">play_circle_outline</i>
                                                    <span class="card-title text-white">Preview</span>
                                                </span>
                                            </span>
                                    </a>

                                    <div class="mdk-reveal__content">
                                        <div class="card-body">
                                            <div class="d-flex">
                                                <div class="flex">
                                                    <a class="card-title" href="student-course.html">Angular Services</a>
                                                    <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                </div>
                                                <a href="student-course.html" data-toggle="tooltip" data-title="Add Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>
                                            </div>
                                            <div class="d-flex">
                                                <div class="rating flex">
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                </div>
                                                <small class="text-50">6 hours</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="popoverContainer d-none">
                                    <div class="media">
                                        <div class="media-left mr-12pt">
                                            <img src="assets/images/paths/angular_40x40@2x.png" width="40" height="40" alt="Angular" class="rounded">
                                        </div>
                                        <div class="media-body">
                                            <div class="card-title mb-0">Angular Services</div>
                                            <p class="lh-1 mb-0">
                                                <span class="text-black-50 small">with</span>
                                                <span class="text-black-50 small font-weight-bold">Elijah Murray</span>
                                            </p>
                                        </div>
                                    </div>

                                    <p class="my-16pt text-black-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                    <div class="mb-16pt">
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
                                            <a href="student-course.html" class="btn btn-primary">Watch trailer</a>
                                        </div>
                                    </div>



                                </div>

                            </div>

                            <div class="col-12 col-sm-6 col-md-4 col-xl-3">

                                <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal " data-partial-height="44" data-toggle="popover" data-trigger="click">


                                    <a href="student-course.html" class="js-image" data-position="">
                                        <img src="assets/images/paths/angular_patterns_430x168.png" alt="course">
                                        <span class="overlay__content align-items-start justify-content-start">
                                                <span class="overlay__action card-body d-flex align-items-center">
                                                    <i class="material-icons mr-4pt">play_circle_outline</i>
                                                    <span class="card-title text-white">Preview</span>
                                                </span>
                                            </span>
                                    </a>

                                    <div class="mdk-reveal__content">
                                        <div class="card-body">
                                            <div class="d-flex">
                                                <div class="flex">
                                                    <a class="card-title" href="student-course.html">Angular Patterns</a>
                                                    <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                </div>
                                                <a href="student-course.html" data-toggle="tooltip" data-title="Add Favorite" data-placement="top" data-boundary="window" class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>
                                            </div>
                                            <div class="d-flex">
                                                <div class="rating flex">
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star</span></span>
                                                    <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                </div>
                                                <small class="text-50">6 hours</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="popoverContainer d-none">
                                    <div class="media">
                                        <div class="media-left mr-12pt">
                                            <img src="assets/images/paths/angular_40x40@2x.png" width="40" height="40" alt="Angular" class="rounded">
                                        </div>
                                        <div class="media-body">
                                            <div class="card-title mb-0">Angular Patterns</div>
                                            <p class="lh-1 mb-0">
                                                <span class="text-black-50 small">with</span>
                                                <span class="text-black-50 small font-weight-bold">Elijah Murray</span>
                                            </p>
                                        </div>
                                    </div>

                                    <p class="my-16pt text-black-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                    <div class="mb-16pt">
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
                                            <a href="student-course.html" class="btn btn-primary">Watch trailer</a>
                                        </div>
                                    </div>



                                </div>

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
