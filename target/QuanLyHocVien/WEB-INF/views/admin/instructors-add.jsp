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
            <form action="/admin/instructors/edit/${giangVien!=null?giangVien.maGV:0}" method="post">
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
                                        <input type="text" class="form-control" id="degree" name="hocVi" value="${giangVien!=null?giangVien.hocVi:''}"
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
                                <input id="phone" type="text" class="form-control" name="sdt"
                                       value="${giangVien!=null?giangVien.sdt:''}" placeholder="Phone: 0123456789"
data-mask="00000000000">
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="date">Date Of Birth</label>
                                <input id="date" type="text" class="form-control" name="birth"
                                       data-daterangepicker-start-date="${giangVien!=null?giangVien.ngaySinh:'2022/08/01'}"
                                       placeholder="yyyy/mm/dd" data-toggle="daterangepicker"
                                       data-daterangepicker-drops="down" data-daterangepicker-single-date-picker="true">
                            </div>
                            <div class="form-group mb-32pt">
                                <label class="form-label" for="description">Description</label>
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
                                <textarea name="moTa" class="form-control" rows="5" id="description"
                                          placeholder="Subject description">${giangVien.moTa}</textarea>
                                <small class="form-text text-muted">Shortly describe this subject.</small>
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
                                    <input type="text" class="form-control" id="account" name="account" value="${giangVien!=null?giangVien.taiKhoan.tenTK:''}"
                                       placeholder="Example: trungkienlk123">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mb-32pt justify-content-end">
                    <div class=" col-lg-8 d-flex align-items-center">
                        <div class="flex" style="max-width: 100%">
                            <div class="button-list text-right">
                                <button type="submit" name="btn" value="cancle" class="btn btn-outline-secondary">Cancel</button>
                                <button type="submit" name="btn" value="save" class="btn btn-primary">Save</button>
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
