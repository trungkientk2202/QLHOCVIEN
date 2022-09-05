<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Courses</title>

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
                    <div class="flex d-flex flex-column flex-sm-row align-items-center mb-24pt mb-md-0">

                        <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                            <h2 class="mb-0">Courses</h2>

                            <ol class="breadcrumb p-0 m-0">
                                <li class="breadcrumb-item"><a href="/">Dashboard</a></li>

                                <li class="breadcrumb-item">

                                    Courses

                                </li>
                                <li class="breadcrumb-item active">

                                    Subscribe

                                </li>

                            </ol>

                        </div>
                    </div>


                    <div class="row" role="tablist">
                        <div class="col-auto">
                            <a href="/admin/course-register/add" class="btn btn-outline-secondary">Subscribe a Course<span
                                    class="icon--right material-icons icon-16pt">arrow_forward</span></a>
                        </div>
                    </div>

                </div>
            </div>


            <div class="container page__container page-section">
                <div class="page-separator">
                    <div class="page-separator__text">Registered Request</div>
                </div>

                <div class="alert alert-soft-accent mb-lg-32pt">
                    <div class="d-flex flex-wrap align-items-center">
                        <div class="mr-8pt">
                            <i class="material-icons">access_time</i>
                        </div>
                        <div class="flex" style="min-width: 180px">
                            <small class="text-100">
                                You have a request from
                                <strong>Nguyen Trung Kien (Instructor)</strong> for Course <a href="billing-invoice.html" class="text-underline">10002331</a>
                            </small>
                        </div>
                        <a href="billing-payment.html" class="btn btn-sm btn-link">Review Now</a>
                    </div>
                </div>

                <div class="page-separator">
                    <div class="page-separator__text">Registered Courses</div>
                </div>

                <div class="card mb-lg-32pt">

                    <div class="table-responsive" data-toggle="lists" data-lists-sort-by="js-lists-values-date"
                         data-lists-sort-desc="true"
                         data-lists-values='["js-lists-values-name", "js-lists-values-company", "js-lists-values-phone", "js-lists-values-date"]'>


                        <table class="table mb-0 thead-border-top-0 table-nowrap">
                            <thead>
                            <tr>

                                <th style="width: 18px;" class="pr-0">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input js-toggle-check-all"
                                               data-target="#clients" id="customCheckAll_clients">
                                        <label class="custom-control-label" for="customCheckAll_clients"><span
                                                class="text-hide">Toggle all</span></label>
                                    </div>
                                </th>

                                <th>
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-course">Course</a>
                                </th>

                                <th>
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-instructor">Instructor</a>
                                </th>

                                <th style="width: 48px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-room">Room</a>
                                </th>
                                <th style="width: 150px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-shift">Shift</a>
                                </th>

                                <th style="width: 48px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-from">From</a>
                                </th>
                                <th style="width: 48px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-to">To</a>
                                </th>
                                <th style="width: 48px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-status">Status</a>
                                </th>
                                <th style="width: 48px;">
                                    <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-status">Progress</a>
                                </th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody class="list" id="clients">

                            <c:forEach var="hp" items="${list}">

                                <tr>

                                    <td class="pr-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-check-selected-row"
                                                   id="customCheck1_clients_1">
                                            <label class="custom-control-label" for="customCheck1_clients_1"><span
                                                    class="text-hide">Check</span></label>
                                        </div>
                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="media-body">
                                                <div class="d-flex flex-column">
                                                    <p class="mb-0"><strong class="js-lists-values-name">${hp.monHoc.tenMH}</strong></p>
                                                </div>
                                            </div>
                                        </div>

                                    </td>

                                    <td>

                                        <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                            <div class="media-body">
                                                <div class="d-flex flex-column">
                                                    <p class="mb-0"><strong class="js-lists-values-instructor">${hp.giangVien.hoTen}</strong></p>
                                                </div>
                                            </div>
                                        </div>

                                    </td>

                                    <td>
                                        <small class="js-lists-values-room text-50">${hp.phong.tenPhong}</small>
                                    </td>
                                    <td>
                                        <small class="js-lists-values-shift text-50">${hp.caHoc}</small>
                                    </td>

                                    <td>
                                        <small class="js-lists-values-from text-50">${hp.ngayBD}</small>
                                    </td>
                                    <td>
                                        <small class="js-lists-values-to text-50">${hp.ngayKT}</small>
                                    </td>

                                    <td>
                                        <div class="d-flex flex-column">
                                            <small class="js-lists-values-status text-50 mb-4pt">${hp.trangThai==true?'Opened':'Closed'}</small>
                                            <span class="indicator-line rounded bg-primary"></span>
                                        </div>
                                    </td>
                                    <td>

                                        <small class="js-lists-values-to text-50">${hp.soTietDaHoc}/${hp.monHoc.soTiet} Lesson</small>
                                    </td>
                                    <td class="text-right">
                                        <div class="d-inline-flex align-items-center">
                                            <a href="/admin/course-register/edit/${hp.maHP}" class="btn btn-sm btn-outline-secondary mr-16pt">Edit
                                                <i class="icon--right material-icons">edit</i></a>
                                            <a href="/admin/course-register/delete/${hp.maHP}" class="btn btn-sm btn-outline-secondary">${hp.trangThai==true?'Closed':'Opened'}
                                                <i class="icon--right material-icons">delete</i></a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>

                    <div class="card-footer p-8pt">

                        <ul class="pagination justify-content-start pagination-xsm m-0">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true" class="material-icons">chevron_left</span>
                                    <span>Prev</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Page 1">
                                    <span>1</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Page 2">
                                    <span>2</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span>Next</span>
                                    <span aria-hidden="true" class="material-icons">chevron_right</span>
                                </a>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>

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


<script>
    var drawer = document.querySelector(".mdk-drawer-layout");

    drawer.style.overflow = "auto";
</script>
</body>
</html>
