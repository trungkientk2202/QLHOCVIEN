<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Dashboard</title>

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

<body class="layout-app ">
<%@include file="/WEB-INF/views/layouts/preloader.jsp" %>

<div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
    <div class="mdk-drawer-layout__content page-content">
        <!-- Header -->
        <%@include file="/WEB-INF/views/layouts/user/ui-header.jsp" %>
        <!-- // END Header -->

        <div class="pt-32pt">
            <div class="container page__container d-flex flex-column flex-md-row align-items-center text-center text-sm-left">
                <div class="flex d-flex flex-column flex-sm-row align-items-center mb-24pt mb-md-0">

                    <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                        <h2 class="mb-0">Courses</h2>

                        <ol class="breadcrumb p-0 m-0">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>

                            <li class="breadcrumb-item active">

                                Courses

                            </li>

                        </ol>

                    </div>
                </div>


                <div class="row" role="tablist">
                    <div class="col-auto">
                        <a href="instructor-edit-course.html" class="btn btn-outline-secondary">Add Course</a>
                    </div>
                </div>

            </div>
        </div>


        <div class="container page__container page-section">
            <%@include file="/WEB-INF/views/layouts/filter-courses.jsp" %>

            <div class="page-separator">
                <div class="page-separator__text">Courses On Going</div>
            </div>


            <div class="row">
                <c:forEach var="hp" items="${listDangDay}">
                    <div class="col-sm-6 col-md-4 col-xl-3">
                            <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary js-overlay mdk-reveal js-mdk-reveal "
                                 data-overlay-onload-show data-popover-onload-show data-force-reveal data-partial-height="44"
                                 data-toggle="popover" data-trigger="click">
                                <a href="instructor-edit-course.html" class="js-image" data-position="">
                                    <img src="<c:url value="/resources/assets/images/courses/${hp.monHoc.anh.trim()}.png"/>" alt="course">
                                    <span class="overlay__content align-items-start justify-content-start">
                                        <span class="overlay__action card-body d-flex align-items-center">
                                            <i class="material-icons mr-4pt">view_list</i>
                                            <span class="card-title text-white">Students</span>
                                        </span>
                                    </span>
                                </a>
                                <div class="mdk-reveal__content">
                                    <div class="card-body">
                                        <div class="d-flex">
                                            <div class="flex">
                                                <a class="card-title mb-4pt" href="/">${hp.monHoc.tenMH}</a>
                                            </div>
                                            <a href="instructor-edit-course.html"
                                               class="ml-4pt material-icons text-black-20 card-course__icon-favorite">info</a>
                                        </div>
                                        <div class="d-flex">
                                            <div class="rating flex">
                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                <span class="rating__item"><span
                                                        class="material-icons">star_border</span></span>
                                            </div>
                                            <small class="text-black-50">Ngày bắt đầu:${hp.ngayBD}}</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="popoverContainer d-none">
                                <div class="media">
                                    <div class="media-left mr-12pt">
                                        <img src="<c:url value="/resources/assets/images/paths/angular_40x40@2x.png"/>"
                                             width="40" height="40" alt="Angular"
                                             class="rounded">
                                    </div>
                                    <div class="media-body">
                                        <div class="card-title mb-0">Learn ${hp.monHoc.tenMH} fundamentals</div>
                                        <p class="lh-1">
                                            <span class="text-black-50 small">with</span>
                                            <span class="text-black-50 small font-weight-bold">${gv.hoTen}</span>
                                        </p>
                                    </div>
                                </div>

                                <p class="my-16pt text-black-70">Learn the fundamentals of working with ${hp.monHoc.tenMH} and how to
                                    create basic applications.</p>

                                <div class="mb-16pt">
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Fundamentals of working with
                                                ${hp.monHoc.tenMH}</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Create complete ${hp.monHoc.tenMH}
                                            applications</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Working with the ${hp.monHoc.tenMH}</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Understanding Dependency
                                            Injection</small></p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                        <p class="flex text-black-50 lh-1 mb-0"><small>Testing with ${hp.monHoc.tenMH}</small></p>
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
                                        <a href="/instructor/course-detail/${hp.maHP}" class="btn btn-primary">Detail</a>
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

            <div class="page-separator">
                <div class="page-separator__text">Courses Finished</div>
            </div>


            <div class="row">

                <c:forEach var="hp" items="${listDaDay}">
                    <div class="col-sm-6 col-md-4 col-xl-3">
                        <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary js-overlay mdk-reveal js-mdk-reveal "
                             data-overlay-onload-show data-popover-onload-show data-force-reveal data-partial-height="44"
                             data-toggle="popover" data-trigger="click">
                            <a href="instructor-edit-course.html" class="js-image" data-position="">
                                <img src="<c:url value="/resources/assets/images/courses/${hp.monHoc.anh.trim()}.png"/>" alt="course">
                                <span class="overlay__content align-items-start justify-content-start">
                                        <span class="overlay__action card-body d-flex align-items-center">
                                            <i class="material-icons mr-4pt">view_list</i>
                                            <span class="card-title text-white">Students</span>
                                        </span>
                                    </span>
                            </a>
                            <div class="mdk-reveal__content">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <div class="flex">
                                            <a class="card-title mb-4pt" href="/">${hp.monHoc.tenMH}</a>
                                        </div>
                                        <a href="instructor-edit-course.html"
                                           class="ml-4pt material-icons text-black-20 card-course__icon-favorite">info</a>
                                    </div>
                                    <div class="d-flex">
                                        <div class="rating flex">
                                            <span class="rating__item"><span class="material-icons">star</span></span>
                                            <span class="rating__item"><span class="material-icons">star</span></span>
                                            <span class="rating__item"><span class="material-icons">star</span></span>
                                            <span class="rating__item"><span class="material-icons">star</span></span>
                                            <span class="rating__item"><span
                                                    class="material-icons">star_border</span></span>
                                        </div>
                                        <small class="text-black-50">Ngày bắt đầu:${hp.ngayBD}}</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="popoverContainer d-none">
                            <div class="media">
                                <div class="media-left mr-12pt">
                                    <img src="<c:url value="/resources/assets/images/paths/angular_40x40@2x.png"/>"
                                         width="40" height="40" alt="Angular"
                                         class="rounded">
                                </div>
                                <div class="media-body">
                                    <div class="card-title mb-0">Learn ${hp.monHoc.tenMH} fundamentals</div>
                                    <p class="lh-1">
                                        <span class="text-black-50 small">with</span>
                                        <span class="text-black-50 small font-weight-bold">${gv.hoTen}</span>
                                    </p>
                                </div>
                            </div>

                            <p class="my-16pt text-black-70">Learn the fundamentals of working with ${hp.monHoc.tenMH} and how to
                                create basic applications.</p>

                            <div class="mb-16pt">
                                <div class="d-flex align-items-center">
                                    <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                    <p class="flex text-black-50 lh-1 mb-0"><small>Fundamentals of working with
                                            ${hp.monHoc.tenMH}</small></p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                    <p class="flex text-black-50 lh-1 mb-0"><small>Create complete ${hp.monHoc.tenMH}
                                        applications</small></p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                    <p class="flex text-black-50 lh-1 mb-0"><small>Working with the ${hp.monHoc.tenMH}</small></p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                    <p class="flex text-black-50 lh-1 mb-0"><small>Understanding Dependency
                                        Injection</small></p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <span class="material-icons icon-16pt text-black-50 mr-8pt">check</span>
                                    <p class="flex text-black-50 lh-1 mb-0"><small>Testing with ${hp.monHoc.tenMH}</small></p>
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
                                    <a href="/instructor/course-detail/${hp.maHP}" class="btn btn-primary">Detail</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </c:forEach>

            </div>


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
