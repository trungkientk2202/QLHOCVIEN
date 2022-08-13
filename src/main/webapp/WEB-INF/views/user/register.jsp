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

    <!-- DateRangePicker -->
    <link type="text/css" href="<c:url value="/resources/assets/vendor/daterangepicker.css"/>" rel="stylesheet">

    <!-- App CSS -->
    <link type="text/css" href="<c:url value="/resources/assets/css/app.css"/>" rel="stylesheet"/>
</head>
<body class="layout-default layout-login-image">

<div class="layout-login-image__overlay" style="background-image: url(<c:url
        value="/resources/assets/images/photodune-4161018-group-of-students-m.jpg"/>);">
    <div class="fullbleed bg-white" style="opacity: .2"></div>
</div>

<form class="d-flex h-100">
    <div class="position-fixed top-0 right-0 mt-5 mr-5 navbar-light">
        <a href="${pageContext.request.contextPath}/" class="navbar-brand flex-column mb-2 align-items-center mr-0"
           style="min-width: 0;">

                <span class="avatar avatar-sm navbar-brand-icon mr-0">

                    <span class="avatar-title rounded bg-primary"><img
                            src="<c:url value="/resources/assets/images/illustration/student/128/white.svg"/>"
                            alt="logo" class="img-fluid"/></span>

                </span>

            Luma
        </a>
    </div>

    <div id="form-1" style="transform: translateX(0);transition: transform 0.2s">
        <div class="layout-login-image__form bg-white h-100" data-perfect-scrollbar>

            <h4 class="m-0">Sign up!</h4>
            <p class="mb-5">Create an account with Luma</p>

            <div>
                <div class="form-group">
                    <label class="text-label" for="email_2">Email Address:</label>
                    <div class="input-group input-group-merge">
                        <input id="email_2" type="email" required="" class="form-control form-control-prepended"
                               placeholder="john@doe.com">
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
                        <input id="password_2" type="password" required="" class="form-control form-control-prepended"
                               placeholder="Enter your password">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <span class="fa fa-key"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group text-center">
                    <button class="btn btn-primary mb-2" id="btn-continue">Continue</button>
                    <br>
                    <a class="text-body text-underline" href="/login">Have an account? Login</a>
                </div>
            </div>
        </div>
    </div>
    <div id="form-2" style="width: 0; overflow: hidden; transition: width 0.2s">
        <div class="layout-login-image__form bg-white h-100" data-perfect-scrollbar>

            <p id="btn-back"><i class="material-icons icon--left">keyboard_backspace</i> Back</p>

            <div>
                <div class="form-group">
                    <label class="text-label" for="name_3">Name:</label>
                    <div class="input-group input-group-merge">
                        <input id="name_3" type="text" required="" class="form-control form-control-prepended"
                               placeholder="John Doe">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <span class="far fa-user"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="male" id="text-label">Sex:</label>
                    <div role="group" aria-labelledby="label-type">
                        <div role="group" class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-outline-secondary">
                                <input type="radio" id="male" name="sex" value="male" aria-checked="true"/>Male
                            </label>
                            <label class="btn btn-outline-secondary">
                                <input type="radio" id="female" name="sex" value="female" aria-checked="true"/>Female
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="text-label" for="date1">Date:</label>
                    <div class="input-group input-group-merge">
                        <input id="date1" type="text" required="" class="form-control" placeholder="Date example"
                               data-toggle="daterangepicker" data-daterangepicker-drops="down"
                               data-daterangepicker-start-date="2018/11/06"
                               data-daterangepicker-single-date-picker="true">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <span class="far fa-calendar"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="text-label" for="maskSample02">Phone:</label>
                    <div class="input-group input-group-merge">
                        <input id="maskSample02" type="text" class="form-control" placeholder="(000) 000-0000)"
                               data-mask="(000) 000-0000">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <span class="fa fa-phone"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="text-label" for="maskSample03">Address:</label>
                    <div class="input-group input-group-merge">
                        <input id="maskSample03" type="text" class="form-control" placeholder="Your address...">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <span class="far fa-address-book"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group mb-5">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" checked="" class="custom-control-input" id="terms"/>
                        <label class="custom-control-label" for="terms">I accept <a href="#">Terms and
                            Conditions</a></label>
                    </div>
                </div>
                <div class="form-group text-center">
                    <button class="btn btn-primary mb-2" type="submit">Create Account</button>
                </div>
            </div>
        </div>
    </div>
</form>
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

<script>
    var form1 = document.getElementById("form-1")
    var form2 = document.getElementById("form-2")

    document.getElementById("btn-continue").addEventListener("click", () => {
        form1.style.transform = "translateX(100%)";
        form2.style.width = "auto";
    })

    document.getElementById("btn-back").addEventListener("click", () => {
        form1.style.transform = "translateX(0)";
        form2.style.width = "0";
    })
</script>
</body>
</html>
