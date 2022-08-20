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
    <title>Login</title>

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

    <!-- Edited Css -->
    <link
            type="text/css"
            href="<c:url value="/resources/assets/css/style.css"/>"
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
<body class="layout-default layout-login-image">
<div class="layout-login-image__overlay" style="background-image: url(<c:url value="/resources/assets/images/1280_15ntkpxqt54y-sai-kiran-anagani.jpg"/>);">
    <div class="fullbleed bg-dark" style="opacity: .5"></div>
</div>

<div class="layout-login-image__form bg-white" data-perfect-scrollbar>
    <div class="position-fixed top-0 right-0 float-right mt-5 mr-5 navbar-light">
        <a href="/" class="navbar-brand flex-column mb-2 align-items-center mr-0" style="min-width: 0; color: white">

                <span class="avatar avatar-sm navbar-brand-icon mr-0">

                    <span class="avatar-title rounded bg-primary"><img src="<c:url value="/resources/assets/images/illustration/student/128/white.svg"/>" alt="logo" class="img-fluid" /></span>

                </span>

            Luma
        </a>
    </div>

    <h4 class="m-0">Welcome back!</h4>
    <p class="mb-5">Login to access your Luma Account </p>

    <form action="/login" method="post">
        <div class="form-group">
            <div class=" d-flex custom-controls-stacked" style="gap: 20px;">
                <div class="custom-control custom-radio">
                    <input id="radioStacked1" name="radio-stacked" type="radio" class="custom-control-input" checked>
                    <label for="radioStacked1" class="custom-control-label">Student</label>
                </div>
                <div class="custom-control custom-radio">
                    <input id="radioStacked2" name="radio-stacked" type="radio" class="custom-control-input">
                    <label for="radioStacked2" class="custom-control-label">Teacher</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="text-label" for="email_2">Username:</label>
            <div class="input-group input-group-merge">
                <input id="email_2" name="userName" required="" class="form-control form-control-prepended" placeholder="Enter your account">
                <div class="input-group-prepend">
                    <div class="input-group-text">
                        <span class="far fa-envelope"></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="text-label" for="password_2">Password:</label>
            <div class="input-group input-group-merge">
                <input id="password_2" type="password" name="password" required="" class="form-control form-control-prepended" placeholder="Enter your password">
                <div class="input-group-prepend">
                    <div class="input-group-text">
                        <span class="fa fa-key"></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group mb-5">
            <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" checked="" id="remember">
                <label class="custom-control-label" for="remember">Remember me</label>
            </div>
        </div>
        <div class="form-group text-center">
            <button class="btn btn-primary mb-5" type="submit">Login</button><br>
            <div><span style="color: red;font-size: 16px">${message}</span></div>
            <a href="">Forgot password?</a> <br>
            Don't have an account? <a class="text-body text-underline" href="/register">Sign up!</a>
        </div>
    </form>
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
