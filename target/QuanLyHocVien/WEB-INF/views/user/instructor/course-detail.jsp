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

    <!-- Quill Theme -->
    <link type="text/css" href="<c:url value="/resources/assets/css/quill.css"/>" rel="stylesheet">

    <!-- Select2 -->
    <link type="text/css" href="<c:url value="/resources/assets/css/select2.css"/>" rel="stylesheet">

    <link type="text/css" href="<c:url value="/resources/assets/vendor/select2/select2.min.css"/>" rel="stylesheet">


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
                <div class="flex d-flex flex-column flex-sm-row align-items-center">

                    <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                        <h2 class="mb-0">Course Detail</h2>

                        <ol class="breadcrumb p-0 m-0">
                            <li class="breadcrumb-item"><a href="/instructor/dashboard">Dashboard</a></li>

                            <li class="breadcrumb-item">

                                Course

                            </li>
                            <li class="breadcrumb-item active">

                                Course Detail

                            </li>

                        </ol>

                    </div>
                </div>
            </div>
        </div>

        <div class="page-section border-bottom-2">
            <div class="container page__container">

                <div class="row">
                    <div class="col-md-8">

                        <div class="page-separator">
                            <div class="page-separator__text">Edit Course's Content</div>
                        </div>

                        <label class="form-label">Content Title</label>
                        <div class="form-group mb-24pt">
                            <input type="text" class="form-control form-control-lg" placeholder="Course title" value="Angular Fundamentals">
                            <small class="form-text text-muted">Please see our <a href="">course title guideline</a></small>
                        </div>

                        <div class="form-group mb-32pt">
                            <label class="form-label">Description</label>
                            <!-- <textarea class="form-control" rows="3" placeholder="Course description"></textarea> -->
                            <div style="height: 150px;" class="mb-0" data-toggle="quill" data-quill-placeholder="Course description">
                                <h1>Hello World!</h1>
                                <p>Some initial <strong>bold</strong> text</p>
                                <p><br></p>
                            </div>
                            <small class="form-text text-muted">Shortly describe this content.</small>
                        </div>

                        <div class="page-separator">
                            <div class="page-separator__text">Sections</div>
                        </div>

                        <div class="accordion js-accordion accordion--boxed mb-24pt" id="parent">
                            <div class="accordion__item">
                                <a href="#" class="accordion__toggle collapsed" data-toggle="collapse" data-target="#course-toc-1" data-parent="#parent">
                                    <span class="flex">Course Overview</span>
                                    <span class="accordion__toggle-icon material-icons">keyboard_arrow_down</span>
                                </a>
                                <div class="accordion__menu collapse" id="course-toc-1">
                                    <div class="accordion__menu-link active">
                                        <i class="material-icons text-70 icon-16pt icon--left">play_circle_outline</i>
                                        <a class="flex" href="student-lesson.html">Video</a>
                                        <span class="text-muted">1m 10s</span>
                                    </div>
                                    <div class="accordion__menu-link align-items-start">
                                        <i class="material-icons text-70 icon-16pt icon--left mt-1">vertical_split</i>
                                        <a class="flex" href="student-lesson.html">Content: It’s not every day that one of the most important front-end libraries in web development gets a complete overhaul. Keep your skills relevant and up-to-date with this comprehensive introduction to Google’s popular community project.</a>
                                    </div>
                                    <div class="accordion__menu-link">
                                        <i class="material-icons text-70 icon-16pt icon--left">drag_handle</i>
                                        <a class="flex" href="student-lesson.html">Note: Introduction to TypeScript</a>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion__item open">
                                <a href="#" class="accordion__toggle" data-toggle="collapse" data-target="#course-toc-2" data-parent="#parent">
                                    <span class="flex">Getting Started with Angular</span>
                                    <span class="accordion__toggle-icon material-icons">keyboard_arrow_down</span>
                                </a>
                                <div class="accordion__menu collapse show" id="course-toc-2">
                                    <div class="accordion__menu-link">
                                        <i class="material-icons text-70 icon-16pt icon--left">play_circle_outline</i>
                                        <a class="flex" href="student-lesson.html">Video</a>
                                        <span class="text-muted">8m 42s</span>
                                    </div>
                                    <div class="accordion__menu-link align-items-start">
                                        <i class="material-icons text-70 icon-16pt icon--left mt-1">vertical_split</i>
                                        <a class="flex" href="student-lesson.html">Content: It’s not every day that one of the most important front-end libraries in web development gets a complete overhaul. Keep your skills relevant and up-to-date with this comprehensive introduction to Google’s popular community project.</a>
                                    </div>
                                    <div class="accordion__menu-link">
                                        <i class="material-icons text-70 icon-16pt icon--left">drag_handle</i>
                                        <a class="flex" href="student-lesson.html">Note: Introduction</a>
                                    </div>
                                </div>
                            </div>
                            <button class="btn btn-success">Finish Lesson</button>
                        </div>
                    </div>
                    <div class="col-md-4">

                        <div class="page-separator">
                            <div class="page-separator__text">Video</div>
                        </div>

                        <div class="card">
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item" src="https://player.vimeo.com/video/97243285?title=0&amp;byline=0&amp;portrait=0" allowfullscreen=""></iframe>
                            </div>
                            <div class="card-body">
                                <label class="form-label">URL</label>
                                <input type="text" class="form-control" value="https://player.vimeo.com/video/97243285?title=0&amp;byline=0&amp;portrait=0" placeholder="Enter Video URL">
                                <small class="form-text text-muted">Enter a valid video URL.</small>
                            </div>
                        </div>

                        <div class="page-separator" style="margin-top: 8.1rem;"></div>

                        <div class="card">
                            <div class="card-header text-center">
                                <a href="#" class="btn btn-accent">Add Sections</a>
                            </div>
                            <div class="list-group list-group-flush">
                                <div class="list-group-item d-flex">
                                    <a class="flex" href="#"><strong>Save Draft</strong></a>
                                    <i class="material-icons text-muted">check</i>
                                </div>
                                <div class="list-group-item">
                                    <a href="#" class="text-danger"><strong>
                                        <span class="material-icons">undo</span>
                                        Reset
                                    </strong></a>
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

<!-- Quill -->
<script src="<c:url value="/resources/assets/vendor/quill.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/quill.js"/>"></script>
<!-- Select2 -->
<script src="<c:url value="/resources/assets/vendor/select2/select2.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/select2.js"/>"></script>

</body>
</html>
