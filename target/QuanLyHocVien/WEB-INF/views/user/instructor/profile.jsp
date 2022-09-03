<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
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

    <!-- DateRangePicker -->
    <link type="text/css" href="<c:url value="/resources/assets/vendor/daterangepicker.css"/>" rel="stylesheet">

    <!-- Quill Theme -->
    <link type="text/css" href="<c:url value="/resources/assets/css/quill.css"/>" rel="stylesheet">

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

        <div class="page-section pb-0">
            <div class="container page__container d-flex flex-column flex-sm-row align-items-sm-center">
                <div class="flex">
                    <h1 class="h2 mb-0">Profile</h1>
                    <p class="text-breadcrumb">Profile's Management</p>
                </div>
                <p class="d-sm-none"></p>
                <a href="" class="btn btn-outline-secondary flex-column">
                    Need Help?
                    <span class="btn__secondary-text">Contact us</span>
                </a>
            </div>
        </div>

        <div class="container page__container page-section">
            <div class="page-separator">
                <div class="page-separator__text">Basic Information</div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <form action="/profile/instructor/basic" method="post">
                        <div class="form-group">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control" value="Alexander" placeholder="Your name ...">
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="phone">Phone</label>
                            <input id="phone" type="text" class="form-control" name="sdt"
                                   value="${giangVien!=null?giangVien.sdt:''}" placeholder="Phone: 0123456789"
                                   data-mask="0000000000">
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="date">Date Of Birth</label>
                            <input id="date" type="text" class="form-control" name="birth"
                                   value="${giangVien!=null?giangVien.ngaySinh:''}"
                                   placeholder="yyyy/mm/dd" data-toggle="daterangepicker"
                                   data-daterangepicker-drops="down" data-daterangepicker-single-date-picker="true">
                        </div>
                        <div class="form-group mb-32pt">
                            <label class="form-label" for="description">Bio</label>
                            <div class="ql-toolbar ql-snow">
                                    <span class="ql-formats">
                                        <span
                                                class="ql-header ql-picker"><span class="ql-picker-label" tabindex="0"
                                                                                  role="button" aria-expanded="false"
                                                                                  aria-controls="ql-picker-options-0"><svg
                                                viewBox="0 0 18 18"> <polygon class="ql-stroke"
                                                                              points="7 11 9 13 11 11 7 11"></polygon> <polygon
                                                class="ql-stroke"
                                                points="7 7 9 5 11 7 7 7"></polygon> </svg></span><span
                                                class="ql-picker-options" aria-hidden="true" tabindex="-1"
                                                id="ql-picker-options-0"><span tabindex="0" role="button"
                                                                               class="ql-picker-item"
                                                                               data-value="1"></span><span
                                                tabindex="0" role="button" class="ql-picker-item"
                                                data-value="2"></span><span tabindex="0" role="button"
                                                                            class="ql-picker-item"
                                                                            data-value="3"></span><span tabindex="0"
                                                                                                        role="button"
                                                                                                        class="ql-picker-item ql-selected"></span></span></span>
                                        <select
                                                class="ql-header" style="display: none;"><option value="1"></option><option
                                                value="2"></option><option value="3"></option><option
                                                selected="selected"></option></select></span><span class="ql-formats"><button
                                    type="button" class="ql-bold"><svg viewBox="0 0 18 18"> <path
                                    class="ql-stroke"
                                    d="M5,4H9.5A2.5,2.5,0,0,1,12,6.5v0A2.5,2.5,0,0,1,9.5,9H5A0,0,0,0,1,5,9V4A0,0,0,0,1,5,4Z"></path> <path
                                    class="ql-stroke"
                                    d="M5,9h5.5A2.5,2.5,0,0,1,13,11.5v0A2.5,2.5,0,0,1,10.5,14H5a0,0,0,0,1,0,0V9A0,0,0,0,1,5,9Z"></path> </svg></button><button
                                    type="button" class="ql-italic"><svg viewBox="0 0 18 18"> <line
                                    class="ql-stroke" x1="7" x2="13" y1="4" y2="4"></line> <line
                                    class="ql-stroke" x1="5" x2="11" y1="14" y2="14"></line> <line
                                    class="ql-stroke" x1="8" x2="10" y1="14" y2="4"></line> </svg></button><button
                                    type="button" class="ql-underline"><svg viewBox="0 0 18 18"> <path
                                    class="ql-stroke"
                                    d="M5,3V9a4.012,4.012,0,0,0,4,4H9a4.012,4.012,0,0,0,4-4V3"></path> <rect
                                    class="ql-fill" height="1" rx="0.5" ry="0.5" width="12" x="3"
                                    y="15"></rect> </svg></button><button
                                    type="button" class="ql-link"><svg viewBox="0 0 18 18"> <line
                                    class="ql-stroke" x1="7" x2="11" y1="7" y2="11"></line> <path
                                    class="ql-even ql-stroke"
                                    d="M8.9,4.577a3.476,3.476,0,0,1,.36,4.679A3.476,3.476,0,0,1,4.577,8.9C3.185,7.5,2.035,6.4,4.217,4.217S7.5,3.185,8.9,4.577Z"></path> <path
                                    class="ql-even ql-stroke"
                                    d="M13.423,9.1a3.476,3.476,0,0,0-4.679-.36,3.476,3.476,0,0,0,.36,4.679c1.392,1.392,2.5,2.542,4.679.36S14.815,10.5,13.423,9.1Z"></path> </svg></button></span><span
                                    class="ql-formats"><button type="button" class="ql-list" value="ordered"><svg
                                    viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="15" y1="4"
                                                               y2="4"></line> <line class="ql-stroke" x1="7"
                                                                                    x2="15" y1="9"
                                                                                    y2="9"></line> <line
                                    class="ql-stroke" x1="7" x2="15" y1="14" y2="14"></line> <line
                                    class="ql-stroke ql-thin" x1="2.5" x2="4.5" y1="5.5" y2="5.5"></line> <path
                                    class="ql-fill"
                                    d="M3.5,6A0.5,0.5,0,0,1,3,5.5V3.085l-0.276.138A0.5,0.5,0,0,1,2.053,3c-0.124-.247-0.023-0.324.224-0.447l1-.5A0.5,0.5,0,0,1,4,2.5v3A0.5,0.5,0,0,1,3.5,6Z"></path> <path
                                    class="ql-stroke ql-thin"
                                    d="M4.5,10.5h-2c0-.234,1.85-1.076,1.85-2.234A0.959,0.959,0,0,0,2.5,8.156"></path> <path
                                    class="ql-stroke ql-thin"
                                    d="M2.5,14.846a0.959,0.959,0,0,0,1.85-.109A0.7,0.7,0,0,0,3.75,14a0.688,0.688,0,0,0,.6-0.736,0.959,0.959,0,0,0-1.85-.109"></path> </svg></button><button
                                    type="button" class="ql-list" value="bullet"><svg viewBox="0 0 18 18"> <line
                                    class="ql-stroke" x1="6" x2="15" y1="4" y2="4"></line> <line
                                    class="ql-stroke" x1="6" x2="15" y1="9" y2="9"></line> <line
                                    class="ql-stroke" x1="6" x2="15" y1="14" y2="14"></line> <line
                                    class="ql-stroke" x1="3" x2="3" y1="4" y2="4"></line> <line
                                    class="ql-stroke" x1="3" x2="3" y1="9" y2="9"></line> <line
                                    class="ql-stroke" x1="3" x2="3" y1="14"
                                    y2="14"></line> </svg></button></span><span class="ql-formats"><button
                                    type="button" class="ql-clean"><svg class="" viewBox="0 0 18 18"> <line
                                    class="ql-stroke" x1="5" x2="13" y1="3" y2="3"></line> <line
                                    class="ql-stroke" x1="6" x2="9.35" y1="12" y2="3"></line> <line
                                    class="ql-stroke" x1="11" x2="15" y1="11" y2="15"></line> <line
                                    class="ql-stroke" x1="15" x2="11" y1="11" y2="15"></line> <rect
                                    class="ql-fill" height="1" rx="0.5" ry="0.5" width="7" x="2"
                                    y="14"></rect> </svg></button></span>
                            </div>
                            <textarea class="form-control" rows="5" id="description"
                                      placeholder="Write something here..."></textarea>
                            <small class="form-text text-muted">Shortly describe about you.</small>
                        </div>
                        <button class="btn btn-primary">Save changes</button>
                    </form>
                </div>
                <div class="col-md-4">
                    <div class="page-separator">
                        <div class="page-separator__text">Picture</div>
                    </div>

                    <div class="card">
                        <div class="embed-responsive embed-responsive-16by9">
                            <div class="d-flex align-items-center justify-content-center custom-file embed-responsive-item rounded-sm border-1 border-secondary">
                                <img id="photo"
                                     src="<c:url value="/resources/assets/images/256_rsz_nicolas-horn-689011-unsplash.jpg"/>"
                                     alt="Avatar"
                                     style="position: absolute; inset: 0px; width: 100%; height: 100%; object-fit: cover;">
                            </div>
                        </div>
                        <div class="card-body">
                            <label class="form-label">Username</label>
                            <input type="text" class="form-control disabled" readonly value="trungkien123lk"
                                   placeholder="Enter Video URL">
                        </div>
                        <div class="card-body">
                            <label class="form-label">Degree</label>
                            <input type="text" class="form-control disabled" readonly value="Thac Si"
                                   placeholder="Enter Video URL">
                        </div>
                        <div class="card-body">
                            <label class="form-label">Major</label>
                            <input type="text" class="form-control disabled" readonly value="Information Technology"
                                   placeholder="Enter Video URL">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page-section">
            <div class="container page__container">
                <div class="page-separator">
                    <div class="page-separator__text">Change Password</div>
                </div>
                <form action="/profile/account" class="col-md-8" style="margin: 0 -12px;">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-lg">
                                <label class="form-label" for="password">Password:</label>
                                <input id="password" type="password" class="form-control" placeholder="Type a new password ...">
                            </div>
                            <div class="col-lg">
                                <label class="form-label" for="password2">Confirm Password:</label>
                                <input id="password2" type="password" class="form-control"
                                       placeholder="Confirm your new password ...">
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Save password</button>
                </form>
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

<!-- DateRangePicker -->
<script src="<c:url value="/resources/assets/vendor/moment.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/daterangepicker.js"/>"></script>
<script src="<c:url value="/resources/assets/js/daterangepicker.js"/>"></script>

<!-- Quill -->
<script src="<c:url value="/resources/assets/vendor/quill.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/quill.js"/>"></script>

<script>
    var drawer = document.querySelector(".mdk-drawer-layout");

    drawer.style.overflow = "auto";
</script>
</body>
</html>

