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
                            <h2 class="mb-0">Employees</h2>

                            <ol class="breadcrumb p-0 m-0">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                                <li class="breadcrumb-item active">

                                    Employees

                                </li>

                            </ol>

                        </div>
                    </div>


                    <div class="row" role="tablist">
                        <div class="col-auto">
                            <a href="" class="btn btn-outline-secondary">New Report</a>
                        </div>
                    </div>

                </div>
            </div>

            <div class="container page__container">
                <div class="page-section">
                    <div class="page-separator">
                        <div class="page-separator__text">Shift</div>
                    </div>

                    <div class="d-flex align-items-center mb-24pt mb-lg-32pt">
                        <div class="position-relative">
                            <a class="d-flex flex-column border-1 rounded bg-alt px-16pt py-8pt lh-1" href="">
                                <small><strong>Day</strong></small>
                                <small class="text-50">07:30 - 20:00</small>
                            </a>
                            <a href="" class="position-close-4pt">
                                <i class="material-icons text-50 icon-16pt">close</i>
                            </a>
                        </div>
                        <div class="position-relative ml-8pt">
                            <a class="d-flex flex-column border-1 rounded bg-alt px-16pt py-8pt lh-1" href="">
                                <small><strong>Night</strong></small>
                                <small class="text-50">20:00 - 08:00</small>
                            </a>
                            <a href="" class="position-close-4pt">
                                <i class="material-icons text-50 icon-16pt">close</i>
                            </a>
                        </div>
                        <a class="d-flex flex-column border-1 rounded bg-alt px-16pt py-8pt lh-1 text-center ml-8pt"
                           href="">
                            <i class="material-icons text-50 icon-16pt">add</i>
                            <small><strong>New Shift</strong></small>
                        </a>
                    </div>

                    <div class="page-separator">
                        <div class="page-separator__text">Shift's Instructor</div>
                    </div>

                    <div class="card mb-0">

                        <div class="table-responsive" data-toggle="lists" data-lists-values='["js-lists-values-name"]'>


                            <table class="table table-bordered table-flush mb-0 thead-border-top-0 table-nowrap">
                                <thead>
                                <tr>

                                    <th style="width: 18px;" class="pr-0 border-right-0">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input js-toggle-check-all"
                                                   data-target="#contacts" id="customCheckAll_contacts">
                                            <label class="custom-control-label" for="customCheckAll_contacts"><span
                                                    class="text-hide">Toggle all</span></label>
                                        </div>
                                    </th>

                                    <th class="border-left-0">
                                        <a href="javascript:void(0)" class="sort"
                                           data-sort="js-lists-values-name">Name</a>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Monday <small>25/02/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Tuesday <small>26/02/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Wednesday <small>27/02/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Thursday <small>28/02/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Friday <small>01/03/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Saturday <small>02/03/2019</small>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                            Sunday <small>03/03/2019</small>
                                        </div>
                                    </th>
                                    <th style="width: 24px;"></th>
                                </tr>
                                </thead>
                                <tbody class="list" id="contacts">


                                <c:forEach var="hocPhan" items="${list}">
                                    <tr>

                                        <td class="border-left-0">

                                            <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                                <div class="avatar avatar-sm mr-8pt">

                                                    <img src="<c:url value="/resources/assets/images/people/110/guy-1.jpg"/>"
                                                         alt="Avatar"
                                                         class="avatar-img rounded-circle">


                                                </div>
                                                <div class="media-body ml-4pt">


                                                    <p class="mb-0"><strong
                                                            class="js-lists-values-name">${hocPhan.giangVien.hoTen}</strong>
                                                    </p>


                                                </div>
                                            </div>

                                        </td>
                                            <%--                                    THU2--%>
                                        <td>
                                            <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                                <small><strong
                                                        class="js-lists-values-name text-black-100">${(hocPhan.caHoc/1000>=2&&hocPhan.caHoc/1000<3)?(hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(hocPhan.caHoc%100/10>=2&&hocPhan.caHoc%100/10<3)?(hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                                <small class="text-black-50">${(hocPhan.caHoc/1000>=2&&hocPhan.caHoc/1000<3)?listCa.get(hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc/100%10-1).gioKT):null}${(hocPhan.caHoc%100/10>=2&&hocPhan.caHoc%100/10<3)?listCa.get(hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc%10-1).gioKT):null}</small>
                                            </a>
                                        </td>
                                            <%--                                    THU3--%>
                                        <td>
                                            <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                                <small><strong
                                                        class="js-lists-values-name text-black-100">${(hocPhan.caHoc/1000>=3&&hocPhan.caHoc/1000<4)?(hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(hocPhan.caHoc%100/10>=3&&hocPhan.caHoc%100/10<4)?(hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                                <small class="text-black-50">${(hocPhan.caHoc/1000>=3&&hocPhan.caHoc/1000<4)?listCa.get(hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc/100%10-1).gioKT):null}${(hocPhan.caHoc%100/10>=3&&hocPhan.caHoc%100/10<4)?listCa.get(hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc%10-1).gioKT):null}</small>
                                            </a>
                                        </td>
                                            <%--                                    THU4--%>
                                        <td>
                                            <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                                <small><strong
                                                        class="js-lists-values-name text-black-100">${(hocPhan.caHoc/1000>=4&&hocPhan.caHoc/1000<5)?(hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(hocPhan.caHoc%100/10>=4&&hocPhan.caHoc%100/10<5)?(hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                                <small class="text-black-50">${(hocPhan.caHoc/1000>=4&&hocPhan.caHoc/1000<5)?listCa.get(hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc/100%10-1).gioKT):null}${(hocPhan.caHoc%100/10>=4&&hocPhan.caHoc%100/10<5)?listCa.get(hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc%10-1).gioKT):null}</small>
                                            </a>
                                        </td>
                                            <%--                                    THU5--%>
                                        <td>
                                            <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                                <small><strong
                                                        class="js-lists-values-name text-black-100">${(hocPhan.caHoc/1000>=5&&hocPhan.caHoc/1000<6)?(hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(hocPhan.caHoc%100/10>=5&&hocPhan.caHoc%100/10<6)?(hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                                <small class="text-black-50">${(hocPhan.caHoc/1000>=5&&hocPhan.caHoc/1000<6)?listCa.get(hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc/100%10-1).gioKT):null}${(hocPhan.caHoc%100/10>=5&&hocPhan.caHoc%100/10<6)?listCa.get(hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc%10-1).gioKT):null}</small>
                                            </a>
                                        </td>
                                            <%--                                    THU6--%>
                                        <td>
                                            <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                                <small><strong
                                                        class="js-lists-values-name text-black-100">${(hocPhan.caHoc/1000>=6&&hocPhan.caHoc/1000<7)?(hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(hocPhan.caHoc%100/10>=6&&hocPhan.caHoc%100/10<7)?(hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                                <small class="text-black-50">${(hocPhan.caHoc/1000>=6&&hocPhan.caHoc/1000<7)?listCa.get(hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc/100%10-1).gioKT):null}${(hocPhan.caHoc%100/10>=6&&hocPhan.caHoc%100/10<7)?listCa.get(hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc%10-1).gioKT):null}</small>
                                            </a>
                                        </td>
                                            <%--                                    THU7--%>
                                        <td>
                                            <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                                <small><strong
                                                        class="js-lists-values-name text-black-100">${(hocPhan.caHoc/1000>7)?(hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(hocPhan.caHoc%100/10>7)?(hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                                <small class="text-black-50">${(hocPhan.caHoc/1000>7)?listCa.get(hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc/100%10-1).gioKT):null}${(hocPhan.caHoc%100/10>7)?listCa.get(hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc%10-1).gioKT):null}</small>
                                            </a>
                                        </td>
                                            <%--                                    CN--%>
                                        <td>
                                            <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                                <small><strong
                                                        class="js-lists-values-name text-black-100">${(hocPhan.caHoc/1000<1)?(hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(hocPhan.caHoc%100/10<1)?(hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                                <small class="text-black-50">${(hocPhan.caHoc/1000<1)?listCa.get(hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc/100%10-1).gioKT):null}${(hocPhan.caHoc%100/10<1)?listCa.get(hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(hocPhan.caHoc%10-1).gioKT):null}</small>
                                            </a>
                                        </td>
                                        <td class="text-right">
                                            <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>

                        <div class="card-footer border-0 p-8pt">

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
            </div>
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
