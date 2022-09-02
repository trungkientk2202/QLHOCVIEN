<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
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
                                    <img class="" src="<c:url value="/resources/assets/images/paths/angular_96x96.png"/>" alt="Angular">
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
                                <span class="text-70">Fundamentals of working with ${hocPhan.monHoc.tenMH}</span>
                            </li>
                            <li class="d-flex align-items-center">
                                <span class="material-icons text-50 mr-8pt">check</span>
                                <span class="text-70">Create complete ${hocPhan.monHoc.tenMH} applications</span>
                            </li>
                            <li class="d-flex align-items-center">
                                <span class="material-icons text-50 mr-8pt">check</span>
                                <span class="text-70">Working with the ${hocPhan.monHoc.tenMH}</span>
                            </li>
                            <li class="d-flex align-items-center">
                                <span class="material-icons text-50 mr-8pt">check</span>
                                <span class="text-70">Understanding Dependency Injection</span>
                            </li>
                            <li class="d-flex align-items-center">
                                <span class="material-icons text-50 mr-8pt">check</span>
                                <span class="text-70">Testing with ${hocPhan.monHoc.tenMH}</span>
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
            <c:forEach var="bg" items="${list}">
                <div class="border-left-2 page-section pl-32pt pb-8pt">
                    <div class="d-flex align-items-center page-num-container">
                        <div class="page-num">1</div>
                        <h4>${bg.tieuDe}</h4>
                    </div>
                    <p class="text-70 mb-lg-32pt">${bg.noiDung}</p>
                    <div class="js-player embed-responsive embed-responsive-16by9 mb-32pt">
                        <div class="player embed-responsive-item">
                            <div class="player__content">
                                <div class="player__image" style="--player-image: url(<c:url value="/resources/assets/images/illustration/player.svg"/>)"></div>
                                <a href="" class="player__play bg-primary">
                                    <span class="material-icons">play_arrow</span>
                                </a>
                            </div>
                            <div class="player__embed d-none">
                                <iframe class="embed-responsive-item" src="${bg.duongDan.trim()}?title=0&amp;byline=0&amp;portrait=0" allowfullscreen=""></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>


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
