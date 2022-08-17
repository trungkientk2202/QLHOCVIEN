<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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


                <div class="row" role="tablist">
                    <div class="col-auto">
                        <a href="discussions-ask.html" class="btn btn-primary">Pay <span class="material-icons">arrow_forward</span>
                        </a>
                    </div>
                </div>

            </div>
        </div>


        <div class="container page__container page-section">
            <div class="flex search-form form-control-rounded search-form--light mb-16pt" style="min-width: 200px;">
                <input type="text" class="form-control" placeholder="Search courses..." id="searchSample02">
                <button class="btn pr-3" type="button" role="button"><i class="material-icons">search</i></button>
            </div>
            <div class="mb-32pt d-flex align-items-center">
                <small class="text-black-70 text-headings text-uppercase mr-3">Displaying 10 out of 5,234
                    articles</small>
                <div class="dropdown ml-auto">
                    <a href="" data-toggle="dropdown" class="dropdown-toggle text-black-70">All Topics</a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="" class="dropdown-item active">All Topics</a>
                        <a href="" class="dropdown-item">General</a>
                        <a href="" class="dropdown-item">Lessons</a>
                        <a href="" class="dropdown-item">Customer Support</a>
                    </div>
                </div>
            </div>

            <div class="card mb-0">
                <div class="card-header d-flex align-items-center">
                    <div class="flatpickr-wrapper flex">
                        <div id="recent_orders_date" data-toggle="flatpickr" data-flatpickr-wrap="true"
                             data-flatpickr-static="true" data-flatpickr-mode="range" data-flatpickr-alt-format="d/m/Y"
                             data-flatpickr-date-format="d/m/Y">
                            <strong class="card-title d-block">All courses</strong>
                            <a href="javascript:void(0)" class="link-date" data-toggle>13/03/2018 to 20/03/2018</a>
                            <input class="d-none" type="hidden" value="13/03/2018 to 20/03/2018" data-input>
                        </div>
                    </div>
                    <i class="material-icons text-20">help_outline</i>
                </div>
                <div class="table-responsive" data-toggle="lists" data-lists-sort-by="js-lists-values-orders-name"
                     data-lists-values='["js-lists-values-orders-name", "js-lists-values-orders-date", "js-lists-values-orders-amount"]'>
                    <table class="table mb-0 table-nowrap thead-border-top-0">
                        <thead>
                        <tr>
                            <th style="width: 18px;">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-toggle-check-all"
                                           data-target="#orders" id="customCheckAll">
                                    <label class="custom-control-label" for="customCheckAll"><span class="text-hide">Toggle all</span></label>
                                </div>
                            </th>
                            <th>
                                <a href="javascript:void(0)" class="sort"
                                   data-sort="js-lists-values-orders-name">Name</a>
                            </th>
                            <th style="width: 150px;">
                                <a href="javascript:void(0)" class="sort"
                                   data-sort="js-lists-values-orders-date">Date</a>
                            </th>
                            <th style="width: 100px;">
                                <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-orders-amount">Amount</a>
                            </th>
                            <th style="width: 24px;"></th>
                        </tr>
                        </thead>
                        <tbody class="list" id="orders">


                        <tr>
                            <td>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_1">
                                    <label class="custom-control-label" for="customCheck1_1"><span class="text-hide">Check</span></label>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="material-icons text-20 mr-8pt">contacts</i>
                                    <a class="js-lists-values-orders-name" href="">Jenell D. Matney</a>
                                </div>
                            </td>
                            <td class="js-lists-values-orders-date text-50">4 days ago</td>
                            <td>
                                <a class="js-lists-values-orders-amount" href="">&dollar;246</a>
                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_2">
                                    <label class="custom-control-label" for="customCheck1_2"><span class="text-hide">Check</span></label>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="material-icons text-20 mr-8pt">contacts</i>
                                    <a class="js-lists-values-orders-name" href="">Sherri J. Cardenas</a>
                                </div>
                            </td>
                            <td class="js-lists-values-orders-date text-50">3 days ago</td>
                            <td>
                                <a class="js-lists-values-orders-amount" href="">&dollar;369</a>
                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_3">
                                    <label class="custom-control-label" for="customCheck1_3"><span class="text-hide">Check</span></label>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="material-icons text-20 mr-8pt">contacts</i>
                                    <a class="js-lists-values-orders-name" href="">Joseph S. Ferland</a>
                                </div>
                            </td>
                            <td class="js-lists-values-orders-date text-50">2 days ago</td>
                            <td>
                                <a class="js-lists-values-orders-amount" href="">&dollar;492</a>
                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                        <tr class="selected">
                            <td>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row" checked=""
                                           id="customCheck1_4">
                                    <label class="custom-control-label" for="customCheck1_4"><span class="text-hide">Check</span></label>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="material-icons text-20 mr-8pt">contacts</i>
                                    <a class="js-lists-values-orders-name" href="">Bryan K. Davis</a>
                                </div>
                            </td>
                            <td class="js-lists-values-orders-date text-50">1 day ago</td>
                            <td>
                                <a class="js-lists-values-orders-amount" href="">&dollar;615</a>
                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                        <tr class="selected">
                            <td>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row" checked=""
                                           id="customCheck1_5">
                                    <label class="custom-control-label" for="customCheck1_5"><span class="text-hide">Check</span></label>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <i class="material-icons text-20 mr-8pt">contacts</i>
                                    <a class="js-lists-values-orders-name" href="">Elizabeth J. Ohara</a>
                                </div>
                            </td>
                            <td class="js-lists-values-orders-date text-50">4 hours ago</td>
                            <td>
                                <a class="js-lists-values-orders-amount" href="">&dollar;738</a>
                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                    </table>
                </div>
                <div class="card-footer">
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

