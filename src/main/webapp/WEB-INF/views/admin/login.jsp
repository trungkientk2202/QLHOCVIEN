<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>

    <!-- Prevent the demo from appearing in search engines -->
    <meta name="robots" content="noindex">

    <link href="https://fonts.googleapis.com/css?family=Lato:400,700%7CRoboto:400,500%7CExo+2:600&display=swap" rel="stylesheet">

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
<body>
<%@include file="/WEB-INF/views/layouts/preloader.jsp" %>

<div class="pt-32pt pt-sm-64pt pb-32pt">
    <div class="container page__container">
        <form action="/admin/login" method="post" class="col-md-5 p-4 mx-auto bg-white rounded-sm shadow-sm">
            <div>
                <a href="/" class="sidebar-brand ">
                <span class="avatar avatar-xl sidebar-brand-icon h-auto">
                            <span class="avatar-title rounded bg-primary"><img src="<c:url value="/resources/assets/images/illustration/student/128/white.svg"/>" class="img-fluid" alt="logo" /></span>
                        </span>
                    <span>Luma</span>
                </a>
            </div>
            <div class="form-group">
                <label class="form-label" for="email">Username:</label>
                <input id="email" name="username" type="text" class="form-control" placeholder="Your Username...">
            </div>
            <div class="form-group">
                <label class="form-label" for="password">Password:</label>
                <input id="password" name="password" type="password" class="form-control" placeholder="Your Password...">
            </div>
            <div class="form-group">
                <div class="custom-control custom-checkbox">
                    <input id="customCheck01" type="checkbox" checked="" class="custom-control-input">
                    <label for="customCheck01" class="custom-control-label">Remember me</label>
                </div>
            </div>
            <div class="text-center">
                <button class="btn btn-primary w-25">Login</button>
            </div>
        </form>
    </div>
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
</body>
</html>
