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

        <div class="page-section">
            <div class="container page__container">
                <%@include file="/WEB-INF/views/layouts/filter-courses.jsp" %>

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
                                                <small>Started date:${dk.hocPhan.ngayBD}</small>
                                            </p>
                                        </div>
                                        <div class="d-flex align-items-center mb-4pt">
                                            <span class="material-icons icon-16pt text-black-50 mr-4pt">play_circle_outline</span>
                                            <p class="flex text-black-50 lh-1 mb-0">
                                                <small>Ended date:${dk.hocPhan.ngayKT}</small>
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
                                        <a href="/course/${dk.hocPhan.maHP}" class="btn btn-primary"
                                        >Details</a
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
                                        <a href="/course/register/${course.maHP}" class="btn btn-primary"
                                        >Register</a
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
