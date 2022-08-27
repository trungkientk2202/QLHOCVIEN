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

    <!-- Quill Theme -->
    <link type="text/css" href="<c:url  value="/resources/assets/css/quill.css"/>" rel="stylesheet">

    <!-- Touchspin -->
    <link type="text/css" href="<c:url  value="/resources/assets/css/bootstrap-touchspin.css"/>" rel="stylesheet">

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
                            <h2 class="mb-0">Edit Subject</h2>

                            <ol class="breadcrumb p-0 m-0">
                                <li class="breadcrumb-item"><a href="/">Home</a></li>

                                <li class="breadcrumb-item active">

                                    Edit Subject

                                </li>

                            </ol>

                        </div>
                    </div>


                </div>
            </div>
            <form action="/admin/subject/edit/${monHoc!=null?monHoc.maMH:0}" method="post">
                <div class="page-section border-bottom-2">
                    <div class="container page__container">

                        <div class="row">
                            <div class="col-md-8">

                                <div class="page-separator">
                                    <div class="page-separator__text">Basic information</div>
                                </div>

                                <label class="form-label">Subject name</label>
                                <div class="form-group mb-24pt">
                                    <input type="text" class="form-control form-control-lg" placeholder="Subject title"
                                           name="tenMH" value="${monHoc!=null?monHoc.tenMH:''}">
                                    <small class="form-text text-muted">Please see our <a href="">subject title guideline</a></small>
                                </div>

                                <div class="form-group">
                                    <label class="form-label">Price</label>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="input-group form-inline">
                                            <span class="input-group-prepend"><span
                                                    class="input-group-text">vnd</span></span>
                                                <input type="text" class="form-control" name="hocPhi" value="${monHoc!=null?monHoc.hocPhi:0}">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="lesson" class="form-label">Lessons</label>
                                    <div class="input-group bootstrap-touchspin bootstrap-touchspin-injected">
                                        <input id="lesson" data-toggle="touch-spin"
                                               data-min="0" data-max="100"
                                               data-step="1" type="text" value="${monHoc!=null?monHoc.soTiet:0}"
                                               name="soTiet" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group mb-32pt">
                                    <label class="form-label">Description</label>
                                    <!-- <textarea class="form-control" rows="3" placeholder="Subject description"></textarea> -->
                                    <div style="height: 150px;" class="mb-0" data-toggle="quill"
                                         data-quill-placeholder="Subject description">
                                        <h1>Hello World!</h1>
                                        <p>Some initial <strong>bold</strong> text</p>
                                        <p><br></p>
                                    </div>
                                    <small class="form-text text-muted">Shortly describe this subject.</small>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="page-separator">
                                    <div class="page-separator__text">Photo</div>
                                </div>

                                <div class="card">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <div class="d-flex align-items-center justify-content-center custom-file embed-responsive-item rounded-sm border-1 border-secondary">
                                            <div class="position-relative">
                                                <input type="file" id="file" class="custom-file-input">
                                                <label for="file" class="custom-file-label bg-transparent text-secondary">Choose file</label>
                                            </div>
                                            <img id="photo"
                                                 src=""
                                                 alt=""
                                                 onerror="this.style.display='none'"
                                                 style="position: absolute; inset: 0;width: 100%;height: 100%;object-fit: cover;"/>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <label class="form-label">Filename</label>
                                        <input type="text" class="form-control"
                                               value="https://player.vimeo.com/video/97243285?title=0&amp;byline=0&amp;portrait=0"
                                               placeholder="Enter Video URL">
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header text-center">
                                        <a href="#" class="btn btn-primary">Save Subject</a>
                                    </div>
                                    <div class="list-group list-group-flush">
                                        <div class="list-group-item d-flex">
                                            <a class="flex" href="#"><strong>Save Draft</strong></a>
                                            <i class="material-icons text-muted">check</i>
                                        </div>
                                        <div class="list-group-item">
                                            <a href="/admin/subjects" class="text-danger"><strong>Cancel</strong></a>
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


<!-- Touchspin -->
<script src="<c:url  value="/resources/assets/vendor/jquery.bootstrap-touchspin.js"/>"></script>
<script src="<c:url  value="/resources/assets/js/touchspin.js"/>"></script>

<!-- Quill -->
<script src="<c:url  value="/resources/assets/vendor/quill.min.js"/>"></script>
<script src="<c:url  value="/resources/assets/js/quill.js"/>"></script>

<script>
    var drawer = document.querySelector(".mdk-drawer-layout");
    drawer.style.overflow = "auto";
</script>
</body>
</html>
