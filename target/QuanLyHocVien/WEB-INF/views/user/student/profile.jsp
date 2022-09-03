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

    <!-- Toastr -->
    <link type="text/css" href="<c:url value="/resources/assets/vendor/toastr.min.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/resources/assets/css/toastr.css"/>" rel="stylesheet">

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
        <form action="/profile/basic" method="post">
        <div class="container page__container page-section">
            <div class="page-separator">
                <div class="page-separator__text">Basic Information</div>
            </div>
            <div class="row">

                <div class="col-md-8">

                        <div class="form-group">
                            <label class="form-label">Full Name</label>
                            <input name="name" type="text" class="form-control" value="${sessionScope.user.hoTen}" placeholder="Your name ...">
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="phone">Phone</label>
                            <input id="phone" type="text" class="form-control" name="phone" value="${sessionScope.user.sdt}"
                                   placeholder="Phone: 0123456789" data-mask="0000000000">
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="address">Address</label>
                            <input id="address" type="text" name="address" value="${sessionScope.user.diaChi}" class="form-control"
                                   placeholder="...">
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="male">Sex</label>
                            <div role="group" aria-labelledby="label-type">
                                <div role="group" class="btn-group btn-group-toggle" data-toggle="buttons">
                                    <label class="btn btn-outline-secondary">
                                        <input type="radio" id="male" name="sex" value="true" aria-checked="true" ${sessionScope.user.phai == true? "checked" : ""}/>Male
                                    </label>
                                    <label class="btn btn-outline-secondary">
                                        <input type="radio" id="female" name="sex" value="false" aria-checked="true" ${sessionScope.user.phai == false? "checked" : ""}/>Female
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="date">Date Of Birth</label>
                            <c:set var="date" value="${sessionScope.user.ngaySinh.toString().split('-')}"/>
                            <input id="date" type="text" name="date"
                                   data-daterangepicker-start-date="${date[0]}/${date[1]}/${date[2]}"
                                   class="form-control" placeholder="yyyy/mm/dd" data-toggle="daterangepicker"
                                   data-daterangepicker-drops="down" data-daterangepicker-single-date-picker="true">
                        </div>
                        <button type="submit" class="btn btn-primary">Save changes</button>

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
                            <input type="text" class="form-control disabled" readonly value="${sessionScope.user.taiKhoan.tenTK}"
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
                <form action="/profile/account" method="post" class="col-md-8" style="margin: 0 -12px">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-lg">
                                <label class="form-label" for="password">Password:</label>
                                <input id="password" required name="password" type="password" class="form-control" placeholder="Type a new password ...">
                            </div>
                            <div class="col-lg">
                                <label class="form-label" for="confirmPassword">Confirm Password:</label>
                                <input id="confirmPassword" required name="confirmPassword" type="password" class="form-control"
                                       placeholder="Confirm your new password ...">
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Save password ${errorMessage}</button>
                </form>
            </div>
        </div>
        </form>
        <!--    footer -->
        <%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
        <!--  end footer -->
    </div>

    <!-- drawer -->
    <%@include file="/WEB-INF/views/layouts/user/drawer.jsp" %>
    <!-- END drawer -->
</div>

<!--Toastr-->
<c:if test="${successMessage != null && successMessage.trim() != ''}">
    <button  style="display: none" type="button" id="btn-toastr" class="btn btn-success" data-toggle="toastr" data-toastr-type="success" data-toastr-title="Well Done!" data-toastr-message="${successMessage}.">
        Success
    </button>
    <script type="text/javascript">
        window.onload=function(){
            document.getElementById("btn-toastr").click();
        };
    </script>
</c:if>
<c:if test="${errorMessage != null && errorMessage.trim() != ''}">
    <button  style="display: none" type="button" id="btn-toastr" class="btn btn-warning" data-toggle="toastr" data-toastr-type="warning" data-toastr-title="Error!" data-toastr-message="${errorMessage}">
        Error
    </button>
    <script type="text/javascript">
        window.onload=function(){
            document.getElementById("btn-toastr").click();
        };
    </script>
</c:if>

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

<!-- Toastr -->
<script src="<c:url value="/resources/assets/vendor/toastr.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/toastr.js"/>"></script>

<script>
    var drawer = document.querySelector(".mdk-drawer-layout");

    drawer.style.overflow = "auto";
</script>
</body>
</html>

