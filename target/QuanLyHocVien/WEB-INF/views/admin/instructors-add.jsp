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

    <!-- Quill Theme -->
    <link type="text/css" href="<c:url value="/resources/assets/css/quill.css"/>" rel="stylesheet">
    
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
            <div class="container page__container page-section pb-0">
                <h1 class="h2 mb-0">Add New Instructor</h1>
                <ol class="breadcrumb m-0 p-0">
                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                    <li class="breadcrumb-item">Instructors</li>
                    <li class="breadcrumb-item active">Add</li>
                </ol>
            </div>

            <form>
                <div class="container page__container page-section">
                <div class="row mb-32pt">
                    <div class="col-lg-4">
                        <div class="page-separator">
                            <div class="page-separator__text">Education</div>
                        </div>
                        <p class="card-subtitle text-70 mb-16pt mb-lg-0">
                            Including any relevant education information on a resume, contain all of it within a designated education section.
                        </p>
                    </div>
                    <div class="col-lg-8 d-flex align-items-center">
                        <div class="flex" style="max-width: 100%">

                            <div class="form-group">
                                <label class="form-label" for="name">Instructor's Name</label>
                                <input type="text" class="form-control" id="name" name="name" value="${giangVien!=null?giangVien.hoTen:''}"
                                       placeholder="name">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg">
                                        <label class="form-label" for="degree">Degree</label>
                                        <input type="text" class="form-control" id="degree" name="hocvi" value="${giangVien!=null?giangVien.hocVi:''}"
                                               placeholder="...">
                                    </div>
                                    <div class="col-lg">
                                        <label class="form-label" for="major">Major</label>
                                        <input type="text" class="form-control" id="major" name="chuyenMon" value="${giangVien!=null?giangVien.chuyenMon:''}"
                                               placeholder="...">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mb-32pt">
                    <div class="col-lg-4">
                        <div class="page-separator">
                            <div class="page-separator__text">Basic Information</div>
                        </div>
                        <p class="card-subtitle text-70 mb-16pt mb-lg-0">
                            Personal Information.
                        </p>
                    </div>
                    <div class="col-lg-8 d-flex align-items-center">
                        <div class="flex" style="max-width: 100%">
                            <div class="form-group">
                                <label class="form-label" for="phone">Phone</label>
                                <input id="phone" type="text" class="form-control" name="sdt" value="${giangVien!=null?giangVien.sdt:''}" placeholder="Phone: (+00) 000-000000" data-mask="(+00) 000-000000">
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="date">Date Of Birth</label>
                                <input id="date" type="text" class="form-control" name="birth" value="${giangVien!=null?giangVien.ngaySinh:''}" placeholder="yyyy/mm/dd" data-toggle="daterangepicker" data-daterangepicker-drops="down" data-daterangepicker-start-date="2018/11/06" data-daterangepicker-single-date-picker="true">
                            </div>
                            <div class="form-group">
                                <label class="form-label">Description</label>
                                <div style="height: 150px;" data-toggle="quill" data-quill-placeholder="Quill WYSIWYG editor">
                                    <input name="name" value="${giangVien!=null?giangVien.moTa:''}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mb-32pt">
                    <div class="col-lg-4">
                        <div class="page-separator">
                            <div class="page-separator__text">Account</div>
                        </div>
                        <p class="card-subtitle text-70 mb-16pt mb-lg-0">
                            Provide an account for instructor now or later <code>(optional)</code>.
                        </p>
                    </div>
                    <div class="col-lg-8 d-flex align-items-center">
                        <div class="flex" style="max-width: 100%">
                            <div class="form-group">
                                <label class="form-label" for="account">Account's Provided</label>
                                <input type="text" class="form-control" id="account" name="accout" value="${giangVien!=null?giangVien.taiKhoan.tenTK:''}"
                                       placeholder="Example: trungkienlk123">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mb-32pt justify-content-end">
                    <div class=" col-lg-8 d-flex align-items-center">
                        <div class="flex" style="max-width: 100%">
                            <div class="button-list text-right">
                                <button type="button" class="btn btn-outline-secondary">Cancel</button>
                                <button type="submit" class="btn btn-primary">Save</button>
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


<!-- Global Settings -->
<script src="<c:url value="/resources/assets/js/settings.js"/>"></script>

<!-- Moment.js -->
<script src="<c:url value="/resources/assets/vendor/moment.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/moment-range.min.js"/>"></script>

<!-- Flatpickr -->
<script src="<c:url value="/resources/assets/vendor/flatpickr/flatpickr.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/flatpickr.js"/>"></script>

<!-- Chart.js -->
<script src="<c:url value="/resources/assets/vendor/Chart.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/chartjs.js"/>"></script>

<!-- Chart.js Samples -->
<script src="<c:url value="/resources/assets/js/page.crm-dashboard.js"/>"></script>

<!-- List.js -->
<script src="<c:url value="/resources/assets/vendor/list.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/list.js"/>"></script>

<!-- Tables -->
<script src="<c:url value="/resources/assets/js/toggle-check-all.js"/>"></script>
<script src="<c:url value="/resources/assets/js/check-selected-row.js"/>"></script>

<!-- DateRangePicker -->
<script src="<c:url value="/resources/assets/vendor/moment.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/daterangepicker.js"/>"></script>
<script src="<c:url value="/resources/assets/js/daterangepicker.js"/>"></script>

<!-- jQuery Mask Plugin -->
<script src="<c:url value="/resources/assets/vendor/jquery.mask.min.js"/>"></script>

<!-- Quill -->
<script src="<c:url value="/resources/assets/vendor/quill.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/quill.js"/>"></script>

<script>
    var drawer = document.querySelector(".mdk-drawer-layout");

    drawer.style.overflow = "auto";
</script>
</body>
</html>
