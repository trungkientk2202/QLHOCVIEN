<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CRM Dashboard</title>

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


    <!-- DateRangePicker -->
    <link type="text/css" href="<c:url value="/resources/assets/vendor/daterangepicker.css"/>" rel="stylesheet">

    <!-- Select2 -->
    <link type="text/css" href="<c:url value="/resources/assets/css/select2.css"/>" rel="stylesheet">

    <link type="text/css" href="<c:url value="/resources/assets/vendor/select2/select2.min.css"/>" rel="stylesheet">

</head>
<body class="layout-sticky layout-sticky-subnav ">
<%@include file="/WEB-INF/views/layouts/preloader.jsp" %>
<!-- Header Layout -->
<div class="mdk-header-layout js-mdk-header-layout">
    <!-- Header -->
    <%@include file="/WEB-INF/views/layouts/admin/header.jsp" %>
    <!-- // END Header -->

    <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">

        <!-- Drawer Layout Content -->
        <div class="mdk-drawer-layout__content page-content mt-5">
            <div class="pt-32pt">
                <div class="container page__container d-flex flex-column flex-md-row align-items-center text-center text-sm-left">
                    <div class="flex d-flex flex-column flex-sm-row align-items-center">

                        <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                            <h2 class="mb-0">Subscribe A Course</h2>

                            <ol class="breadcrumb p-0 m-0">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                                <li class="breadcrumb-item">

                                    Subscribe Courses

                                </li>
                                <li class="breadcrumb-item active">

                                    Add

                                </li>

                            </ol>

                        </div>
                    </div>


                </div>
            </div>
            <form action="/admin/course-register/edit/${hocPhan!=null?hocPhan.maHP:0}" method="post">
                <div class="page-section border-bottom-2">
                    <div class="container page__container">

                        <div class="row">
                            <div class="col-md-8">

                                <div class="page-separator">
                                    <div class="page-separator__text">Basic information</div>
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="select01">Course Name</label>
                                    <select name="monHoc" id="select01" data-toggle="select" class="form-control form-control-lg" >
                                        <option value="${hocPhan!=null?hocPhan.monHoc.maMH:listMH[0].maMH}" selected="selected">${hocPhan!=null?hocPhan.monHoc.tenMH:listMH[0].tenMH}</option>
                                        <c:forEach var="mh" items="${listMH}">
                                            <option value="${mh.maMH}">${mh.tenMH.trim()}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="select02">Instructor's Name</label>
                                    <select name="giangVien" id="select02" data-toggle="select" class="form-control form-control-lg" >
                                        <option  value="${hocPhan!=null?hocPhan.giangVien.maGV:listGV[0].maGV}" selected="selected">${hocPhan!=null?hocPhan.giangVien.hoTen:listGV[0].hoTen}</option>
                                        <c:forEach var="gv" items="${listGV}">
                                            <option value="${gv.maGV}">${gv.hoTen.trim()}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg">
                                            <label class="form-label">Room</label>
                                            <select name="phong" id="select03" data-toggle="select" class="form-control form-control-lg" >
                                                <option  value="${hocPhan!=null?hocPhan.phong.maPhong:listPhong[0].maPhong}" selected="selected">${hocPhan!=null?hocPhan.phong.tenPhong:listPhong[0].tenPhong}</option>
                                                <c:forEach var="phong" items="${listPhong}">
                                                    <option  value="${phong.maPhong}">${phong.tenPhong}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-lg">
                                            <label class="form-label" >Shift</label>
                                            <div>
                                                <input name="caHoc" value="${hocPhan!=null?hocPhan.caHoc:'2161'}">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="dateRangePickerSample02">Range</label>
                                    <input id="dateRangePickerSample02" name="ngay" type="text" class="form-control"
                                           placeholder="Range example" data-toggle="daterangepicker"
                                           data-daterangepicker-drops="up" data-daterangepicker-start-date="${hocPhan!=null?hocPhan.ngayBD:"2022/08/01"}"
                                           data-daterangepicker-end-date="${hocPhan!=null?hocPhan.ngayKT:"2022/08/01"}">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="list-group list-group-flush">
                                        <div class="list-group-item d-flex">
                                            <div class="flex" style="max-width: 100%">
                                                <div class="custom-control custom-checkbox-toggle custom-control-inline mr-1">
                                                    <input checked="" name="trangThai" type="checkbox" id="subscribe"
                                                           class="custom-control-input">
                                                    <label class="custom-control-label" for="subscribe">
                                                        <span style="position: absolute;right: -120px;">Active Course</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-header text-center w-100">
                                            <button type="submit" class="btn btn-primary d-block">Save Course</button>
                                        </div>
                                        <div class="list-group-item">
                                            <a href="/admin/course-register" class="text-danger"><strong>Cancel</strong></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </form>


            <%@include file="/WEB-INF/views/layouts/admin/footer.jsp" %>
        </div>
        <!-- // END drawer-layout__content -->

        <!-- drawer -->
        <%@include file="/WEB-INF/views/layouts/admin/drawer.jsp" %>
        <!-- // END drawer -->
    </div>
</div>
<!-- // END Header Layout -->

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

<!-- Select2 -->
<script src="<c:url value="/resources/assets/vendor/select2/select2.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/select2.js"/>"></script>

<script>
    var drawer = document.querySelector(".mdk-drawer-layout");
    drawer.style.overflow = "auto";
</script>
</body>
</html>
