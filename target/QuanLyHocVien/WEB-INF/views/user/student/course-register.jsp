<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Tables</title>

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
<body class="layout-app ui ">
<%@include file="/WEB-INF/views/layouts/preloader.jsp" %>
<div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
    <div class="mdk-drawer-layout__content page-content">
        <!-- Header -->
        <%@include file="/WEB-INF/views/layouts/user/ui-header.jsp" %>
        <!-- // END Header -->


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

            <div class="page-separator">
                <div class="page-separator__text">Shift distribution</div>
            </div>

            <div class="card mb-lg-32pt">

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
                                <a href="javascript:void(0)" class="sort" data-sort="js-lists-values-name">Name</a>
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

                        <tr>

                            <td class="pr-0 border-right-0">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_contacts_1">
                                    <label class="custom-control-label" for="customCheck1_contacts_1"><span
                                            class="text-hide">Check</span></label>
                                </div>
                            </td>

                            <td class="border-left-0">

                                <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                    <div class="avatar avatar-sm mr-8pt">


                                        <span class="avatar-title rounded-circle bg-white border text-100">BN</span>

                                    </div>
                                    <div class="media-body ml-4pt">


                                        <p class="mb-0"><strong class="js-lists-values-name">Billy Nunez</strong></p>


                                    </div>
                                </div>

                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                    <small class="text-black-50">20:00 - 08:00</small>
                                </a>


                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                    <small class="text-black-50">20:00 - 08:00</small>
                                </a>


                            </td>
                            <td>

                            </td>
                            <td>

                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                    <small class="text-black-50">07:30 - 20:00</small>
                                </a>


                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                    <small class="text-black-50">07:30 - 20:00</small>
                                </a>


                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                    <small class="text-black-50">07:30 - 20:00</small>
                                </a>


                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                        <tr>

                            <td class="pr-0 border-right-0">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_contacts_2">
                                    <label class="custom-control-label" for="customCheck1_contacts_2"><span
                                            class="text-hide">Check</span></label>
                                </div>
                            </td>

                            <td class="border-left-0">

                                <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                    <div class="avatar avatar-sm mr-8pt">


                                        <span class="avatar-title rounded-circle bg-white border text-100">TP</span>

                                    </div>
                                    <div class="media-body ml-4pt">


                                        <p class="mb-0"><strong class="js-lists-values-name">Tony Parks</strong></p>


                                    </div>
                                </div>

                            </td>
                            <td>

                            </td>
                            <td>

                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                    <small class="text-black-50">20:00 - 08:00</small>
                                </a>


                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                    <small class="text-black-50">20:00 - 08:00</small>
                                </a>


                            </td>
                            <td>

                            </td>
                            <td>

                            </td>
                            <td>

                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                        <tr class="selected">

                            <td class="pr-0 border-right-0">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row" checked=""
                                           id="customCheck1_contacts_3">
                                    <label class="custom-control-label" for="customCheck1_contacts_3"><span
                                            class="text-hide">Check</span></label>
                                </div>
                            </td>

                            <td class="border-left-0">

                                <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                    <div class="avatar avatar-sm mr-8pt">

                                        <img src="<c:url value="/resources/assets/images/people/110/guy-1.jpg"/>" alt="Avatar"
                                             class="avatar-img rounded-circle">


                                    </div>
                                    <div class="media-body ml-4pt">


                                        <p class="mb-0"><strong class="js-lists-values-name">Gilbert Barrett</strong>
                                        </p>


                                    </div>
                                </div>

                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                    <small class="text-black-50">07:30 - 20:00</small>
                                </a>


                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                    <small class="text-black-50">07:30 - 20:00</small>
                                </a>


                            </td>
                            <td>

                            </td>
                            <td>

                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                    <small class="text-black-50">20:00 - 08:00</small>
                                </a>


                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                    <small class="text-black-50">20:00 - 08:00</small>
                                </a>


                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Night</strong></small>
                                    <small class="text-black-50">20:00 - 08:00</small>
                                </a>


                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

                        <tr>

                            <td class="pr-0 border-right-0">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input js-check-selected-row"
                                           id="customCheck1_contacts_4">
                                    <label class="custom-control-label" for="customCheck1_contacts_4"><span
                                            class="text-hide">Check</span></label>
                                </div>
                            </td>

                            <td class="border-left-0">

                                <div class="media flex-nowrap align-items-center" style="white-space: nowrap;">
                                    <div class="avatar avatar-sm mr-8pt">

                                        <img src="<c:url value="/resources/assets/images/people/110/guy-2.jpg"/>" alt="Avatar"
                                             class="avatar-img rounded-circle">


                                    </div>
                                    <div class="media-body ml-4pt">


                                        <p class="mb-0"><strong class="js-lists-values-name">Ollie Wallace</strong></p>


                                    </div>
                                </div>

                            </td>
                            <td>

                            </td>
                            <td>

                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                    <small class="text-black-50">07:30 - 20:00</small>
                                </a>


                            </td>
                            <td>


                                <a class="d-flex flex-column border-1 rounded bg-light px-8pt py-4pt lh-1" href="">
                                    <small><strong class="js-lists-values-name text-black-100">Day</strong></small>
                                    <small class="text-black-50">07:30 - 20:00</small>
                                </a>


                            </td>
                            <td>

                            </td>
                            <td>

                            </td>
                            <td>

                            </td>
                            <td class="text-right">
                                <a href="" class="text-50"><i class="material-icons">more_vert</i></a>
                            </td>
                        </tr>

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
