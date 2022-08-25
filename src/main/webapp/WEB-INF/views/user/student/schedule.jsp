<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
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

        <div class="pt-32pt">
            <div class="container page__container d-flex flex-column flex-md-row align-items-center text-center text-sm-left">
                <div class="flex d-flex flex-column flex-sm-row align-items-center mb-24pt mb-md-0">

                    <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                        <h2 class="mb-0">Tuition Payment</h2>

                        <ol class="breadcrumb p-0 m-0">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                            <li class="breadcrumb-item active">

                                Payment

                            </li>

                        </ol>

                    </div>
                </div>
            </div>
        </div>


        <div class="container page__container page-section">

            <div class="page-separator">
                <div class="page-separator__text">Schedule</div>
            </div>

            <div class="card mb-lg-32pt">

                <div class="table-responsive" data-toggle="lists" data-lists-values='["js-lists-values-name"]'>




                    <table class="table table-bordered table-flush mb-0 thead-border-top-0 table-nowrap">
                        <thead>
                        <tr>
                            <th class="border-left-0">
                                <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-name">Name</a>
                            </th>
                            <th>
                                <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                    Monday
                                </div>
                            </th>
                            <th>
                                <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                    Tuesday
                                </div>
                            </th>
                            <th>
                                <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                    Wednesday
                                </div>
                            </th>
                            <th>
                                <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                    Thursday
                                </div>
                            </th>
                            <th>
                                <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                    Friday
                                </div>
                            </th>
                            <th>
                                <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                    Saturday
                                </div>
                            </th>
                            <th>
                                <div class="lh-1 d-flex flex-column text-50 my-4pt">
                                    Sunday
                                </div>
                            </th>
                            <th style="width: 24px;"></th>
                        </tr>
                        </thead>
                        <tbody class="list" id="contacts">
                        <c:forEach var="dk" items="${list}">
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
                                                    class="js-lists-values-name">${dk.hocPhan.giangVien.hoTen}</strong>
                                            </p>


                                        </div>
                                    </div>

                                </td>
                                    <%--                                    THU2--%>
                                <td>
                                    <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                        <small><strong
                                                class="js-lists-values-name text-black-100">${(dk.hocPhan.caHoc/1000>=2&&dk.hocPhan.caHoc/1000<3)?(dk.hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(dk.hocPhan.caHoc%100/10>=2&&dk.hocPhan.caHoc%100/10<3)?(dk.hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                        <small class="text-black-50">${(dk.hocPhan.caHoc/1000>=2&&dk.hocPhan.caHoc/1000<3)?listCa.get(dk.hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc/100%10-1).gioKT):null}${(dk.hocPhan.caHoc%100/10>=2&&dk.hocPhan.caHoc%100/10<3)?listCa.get(dk.hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc%10-1).gioKT):null}</small>
                                    </a>
                                </td>
                                    <%--                                    THU3--%>
                                <td>
                                    <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                        <small><strong
                                                class="js-lists-values-name text-black-100">${(dk.hocPhan.caHoc/1000>=3&&dk.hocPhan.caHoc/1000<4)?(dk.hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(dk.hocPhan.caHoc%100/10>=3&&dk.hocPhan.caHoc%100/10<4)?(dk.hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                        <small class="text-black-50">${(dk.hocPhan.caHoc/1000>=3&&dk.hocPhan.caHoc/1000<4)?listCa.get(dk.hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc/100%10-1).gioKT):null}${(dk.hocPhan.caHoc%100/10>=3&&dk.hocPhan.caHoc%100/10<4)?listCa.get(dk.hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc%10-1).gioKT):null}</small>
                                    </a>
                                </td>
                                    <%--                                    THU4--%>
                                <td>
                                    <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                        <small><strong
                                                class="js-lists-values-name text-black-100">${(dk.hocPhan.caHoc/1000>=4&&dk.hocPhan.caHoc/1000<5)?(dk.hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(dk.hocPhan.caHoc%100/10>=4&&dk.hocPhan.caHoc%100/10<5)?(dk.hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                        <small class="text-black-50">${(dk.hocPhan.caHoc/1000>=4&&dk.hocPhan.caHoc/1000<5)?listCa.get(dk.hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc/100%10-1).gioKT):null}${(dk.hocPhan.caHoc%100/10>=4&&dk.hocPhan.caHoc%100/10<5)?listCa.get(dk.hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc%10-1).gioKT):null}</small>
                                    </a>
                                </td>
                                    <%--                                    THU5--%>
                                <td>
                                    <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                        <small><strong
                                                class="js-lists-values-name text-black-100">${(dk.hocPhan.caHoc/1000>=5&&dk.hocPhan.caHoc/1000<6)?(dk.hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(dk.hocPhan.caHoc%100/10>=5&&dk.hocPhan.caHoc%100/10<6)?(dk.hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                        <small class="text-black-50">${(dk.hocPhan.caHoc/1000>=5&&dk.hocPhan.caHoc/1000<6)?listCa.get(dk.hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc/100%10-1).gioKT):null}${(dk.hocPhan.caHoc%100/10>=5&&dk.hocPhan.caHoc%100/10<6)?listCa.get(dk.hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc%10-1).gioKT):null}</small>
                                    </a>
                                </td>
                                    <%--                                    THU6--%>
                                <td>
                                    <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                        <small><strong
                                                class="js-lists-values-name text-black-100">${(dk.hocPhan.caHoc/1000>=6&&dk.hocPhan.caHoc/1000<7)?(dk.hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(dk.hocPhan.caHoc%100/10>=6&&dk.hocPhan.caHoc%100/10<7)?(dk.hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                        <small class="text-black-50">${(dk.hocPhan.caHoc/1000>=6&&dk.hocPhan.caHoc/1000<7)?listCa.get(dk.hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc/100%10-1).gioKT):null}${(dk.hocPhan.caHoc%100/10>=6&&dk.hocPhan.caHoc%100/10<7)?listCa.get(dk.hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc%10-1).gioKT):null}</small>
                                    </a>
                                </td>
                                    <%--                                    THU7--%>
                                <td>
                                    <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                        <small><strong
                                                class="js-lists-values-name text-black-100">${(dk.hocPhan.caHoc/1000>7)?(dk.hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(dk.hocPhan.caHoc%100/10>7)?(dk.hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                        <small class="text-black-50">${(dk.hocPhan.caHoc/1000>7)?listCa.get(dk.hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc/100%10-1).gioKT):null}${(dk.hocPhan.caHoc%100/10>7)?listCa.get(dk.hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc%10-1).gioKT):null}</small>
                                    </a>
                                </td>
                                    <%--                                    CN--%>
                                <td>
                                    <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                        <small><strong
                                                class="js-lists-values-name text-black-100">${(dk.hocPhan.caHoc/1000<1)?(dk.hocPhan.caHoc%1000/100<4?'Morning':'Afternoon'):null}${(dk.hocPhan.caHoc%100/10<1)?(dk.hocPhan.caHoc%10<4?'Morning':'Afternoon'):null}</strong></small>
                                        <small class="text-black-50">${(dk.hocPhan.caHoc/1000<1)?listCa.get(dk.hocPhan.caHoc/100%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc/100%10-1).gioKT):null}${(dk.hocPhan.caHoc%100/10<1)?listCa.get(dk.hocPhan.caHoc%10-1).gioBD.concat("-").concat(listCa.get(dk.hocPhan.caHoc%10-1).gioKT):null}</small>
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

<!-- Tables -->
<script src="<c:url value="/resources/assets/js/toggle-check-all.js"/>"></script>
<script src="<c:url value="/resources/assets/js/check-selected-row.js"/>"></script>

<script>
    var drawer = document.querySelector(".mdk-drawer-layout");

    drawer.style.overflow = "auto";
</script>
</body>
</html>

