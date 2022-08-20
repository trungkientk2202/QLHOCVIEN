<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title>Luma</title>

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

<body class="layout-sticky-subnav layout-default">
<%@include file="/WEB-INF/views/layouts/preloader.jsp" %>

<!-- Header Layout -->
<div class="mdk-header-layout js-mdk-header-layout">
    <!-- Header -->
    <%@include file="/WEB-INF/views/layouts/user/header.jsp" %>
    <!-- // END Header -->

    <!-- Header Layout Content -->
    <div class="mdk-header-layout__content page-content">
        <div class="bg-white border-bottom-2 py-16pt">
            <div class="container page__container">
                <div class="row align-items-center">
                    <div
                            class="d-flex col-md align-items-center border-bottom border-md-0 mb-16pt mb-md-0 pb-16pt pb-md-0"
                    >
                        <div
                                class="rounded-circle bg-primary w-64 h-64 d-inline-flex align-items-center justify-content-center mr-16pt"
                        >
                            <i class="material-icons text-white">subscriptions</i>
                        </div>
                        <div class="flex">
                            <div class="card-title mb-4pt">8,000+ Courses</div>
                            <p class="card-subtitle text-black-70">
                                Explore a wide range of skills.
                            </p>
                        </div>
                    </div>
                    <div
                            class="d-flex col-md align-items-center border-bottom border-md-0 mb-16pt mb-md-0 pb-16pt pb-md-0"
                    >
                        <div
                                class="rounded-circle bg-primary w-64 h-64 d-inline-flex align-items-center justify-content-center mr-16pt"
                        >
                            <i class="material-icons text-white">verified_user</i>
                        </div>
                        <div class="flex">
                            <div class="card-title mb-4pt">By Industry Experts</div>
                            <p class="card-subtitle text-black-70">
                                Professional development from the best people.
                            </p>
                        </div>
                    </div>
                    <div class="d-flex col-md align-items-center">
                        <div
                                class="rounded-circle bg-primary w-64 h-64 d-inline-flex align-items-center justify-content-center mr-16pt"
                        >
                            <i class="material-icons text-white">update</i>
                        </div>
                        <div class="flex">
                            <div class="card-title mb-4pt">Unlimited Access</div>
                            <p class="card-subtitle text-black-70">
                                Unlock Library and learn any topic with one subscription.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page-section">
            <div class="container page__container">
                <div class="page-headline text-center">
                    <h2>Our Center</h2>
                    <p class="lead measure-lead mx-auto text-black-70">
                        What other students turned professionals have to say about us
                        after learning with us and reaching their goals.
                    </p>
                </div>

                <div class="position-relative carousel-card col-lg-8 p-0 mx-auto">
                    <div class="row d-block js-mdk-carousel" id="carousel-introduction">
                        <p class="text-70 text-sm-center small mb-0">
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sed
                            doloribus minima modi nesciunt id placeat inventore quod
                            recusandae quas nobis delectus sint, consequatur quos
                            repudiandae dolorem, exercitationem alias quibusdam quaerat?.
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Distinctio rem, provident magnam adipisci excepturi, minus,
                            enim reiciendis repudiandae commodi dolorem ullam cumque
                            obcaecati impedit. Obcaecati recusandae officia necessitatibus
                            minus repudiandae.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="page-section border-bottom-2">
            <div class="container page__container">
                <div class="page-separator">
                    <div class="page-separator__text">About us</div>
                </div>

                <div class="row card-group-row">
                    <div class="col-md-6 col-lg-4 card-group-row__col">
                        <div class="card card--elevated posts-card-popular overlay card-group-row__card">
                            <img src="<c:url value="/resources/assets/images/center/tt1.jpg"/>" alt="" class="card-img"/>
                            <div class="posts-card-popular__content">
                                <div class="posts-card-popular__title card-body">
                                    <small class="text-muted text-uppercase">PTITHCM</small>
                                    <a class="card-title" href="https://ptithcm.edu.vn/"
                                    >Post and Telecommunications Institute of Technology</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 card-group-row__col">
                        <div
                                class="card card--elevated posts-card-popular overlay card-group-row__card"
                        >
                            <img
                                    src="<c:url value="/resources/assets/images/center/tt2.jpg"/>"
                                    alt=""
                                    class="card-img"
                            />
                            <div class="posts-card-popular__content">
                                <div class="posts-card-popular__title card-body">
                                    <small class="text-muted text-uppercase">center</small>
                                    <a class="card-title" href="/"
                                    >My Technology Center</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 card-group-row__col">
                        <div
                                class="card card--elevated posts-card-popular overlay card-group-row__card"
                        >
                            <img
                                    src="<c:url value="/resources/assets/images/center/tt3.jpg"/>"
                                    alt=""
                                    class="card-img"
                            />
                            <div class="posts-card-popular__content">
                                <div class="posts-card-popular__title card-body">
                                    <small class="text-muted text-uppercase">PTIT</small>
                                    <a class="card-title" href="https://portal.ptit.edu.vn/"
                                    >Post and Telecommunications Institute of Technology</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="page-section border-bottom-2">
            <div class="container page__container">
                <div class="page-separator">
                    <div class="page-separator__text">Talented Instructor</div>
                </div>

                <div class="row card-group-row">
                    <div class="col-md-6 col-lg-4 card-group-row__col">
                        <div
                                class="card card--elevated posts-card-popular overlay card-group-row__card"
                        >
                            <img
                                    src="<c:url value="/resources/assets/images/people/256/256_rsz_clem-onojeghuo-150467-unsplash.jpg"/>"
                                    alt=""
                                    class="card-img"
                            />
                            <div class="posts-card-popular__content">
                                <div class="posts-card-popular__title card-body">
                                    <small class="text-muted text-uppercase">Mr. Ryan</small>
                                    <a class="card-title" href="/"
                                    >Fullstack Developer</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 card-group-row__col">
                        <div
                                class="card card--elevated posts-card-popular overlay card-group-row__card"
                        >
                            <img
                                    src="<c:url value="/resources/assets/images/people/256/256_rsz_james-gillespie-714755-unsplash.jpg"/>"
                                    alt=""
                                    class="card-img"
                            />
                            <div class="posts-card-popular__content">
                                <div class="posts-card-popular__title card-body">
                                    <small class="text-muted text-uppercase">Mrs. Emma</small>
                                    <a class="card-title" href="/"
                                    >Business Analyst</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 card-group-row__col">
                        <div
                                class="card card--elevated posts-card-popular overlay card-group-row__card"
                        >
                            <img
                                    src="<c:url value="/resources/assets/images/people/256/256_rsz_nicolas-horn-689011-unsplash.jpg"/>"
                                    alt=""
                                    class="card-img"
                            />
                            <div class="posts-card-popular__content">
                                <div class="posts-card-popular__title card-body">
                                    <small class="text-muted text-uppercase">Mr. Jhon</small>
                                    <a class="card-title" href="/"
                                    >Data Engineer</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- // END Header Layout Content -->

    <!--    footer -->
    <%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
    <!--  end footer -->
</div>
<!-- // END Header Layout -->

<!-- drawer -->
<%@include file="/WEB-INF/views/layouts/user/drawer.jsp" %>
<!-- END drawer -->

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
    (function () {
        "use strict";
        var headerNode = document.querySelector(".mdk-header");
        var layoutNode = document.querySelector(".mdk-header-layout");
        var componentNode = layoutNode ? layoutNode : headerNode;

        componentNode.addEventListener(
            "domfactory-component-upgraded",
            function () {
                headerNode.mdkHeader.eventTarget.addEventListener(
                    "scroll",
                    function () {
                        var progress = headerNode.mdkHeader.getScrollState().progress;
                        var navbarNode = headerNode.querySelector("#default-navbar");
                        navbarNode.classList.toggle("bg-transparent", progress <= 0.2);
                    }
                );
            }
        );
    })();
</script>
</body>
</html>
