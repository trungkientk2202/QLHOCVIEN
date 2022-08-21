<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pagina" value="${requestScope['javax.servlet.forward.request_uri']}" />

<div class="mdk-drawer js-mdk-drawer" id="default-drawer">
    <div class="mdk-drawer__content">
        <c:choose>
            <c:when test="${sessionScope.account.loaiTaiKhoan.maLoaiTK == 1}">
                <div class="sidebar sidebar-dark-dodger-blue si debar-left" data-perfect-scrollbar>
                    <a href="/" class="sidebar-brand">
                <span class="avatar avatar-xl sidebar-brand-icon h-auto">
                  <span class="avatar-title rounded bg-primary">
                      <img src="<c:url value="/resources/assets/images/illustration/student/128/white.svg"/>"
                           class="img-fluid"
                           alt="logo"
                      />
                  </span>
                </span>

                        <span>Luma</span>
                    </a>

                    <div class="sidebar-heading">STUDENT</div>
                    <ul class="sidebar-menu">
                        <li class="sidebar-menu-item ${pagina.endsWith('/dashboard') ? 'active open' : ''}">
                            <a
                                    class="sidebar-menu-button js-sidebar-collapse"
                                    href="/dashboard"
                            >
                                <span
                                        class="material-icons sidebar-menu-icon sidebar-menu-icon--left"
                                >school</span
                                >
                                Dashboard
                            </a>
                        </li>
                        <li class="sidebar-menu-item ${pagina.endsWith('/courses') || pagina.endsWith('/schedule') ? 'active open' : ''}">
                            <a
                                    class="sidebar-menu-button js-sidebar-collapse"
                                    data-toggle="collapse"
                                    href="#student_menu"
                            >
                    <span
                            class="material-icons sidebar-menu-icon sidebar-menu-icon--left"
                    >dns</span
                    >
                                Courses
                                <span class="ml-auto sidebar-menu-toggle-icon"></span>
                            </a>
                            <ul class="sidebar-submenu collapse sm-indent" id="student_menu">
                                <li class="sidebar-menu-item ${pagina.endsWith('/courses') ? 'active open' : ''}">
                                    <a class="sidebar-menu-button" href="/courses">
                                        <span class="sidebar-menu-text">Subscribe Course</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item ${pagina.endsWith('/schedule') ? 'active open' : ''}">
                                    <a
                                            class="sidebar-menu-button"
                                            href="/schedule"
                                    >
                                        <span class="sidebar-menu-text">Schedule</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="sidebar-menu-item ${pagina.endsWith('/payment') ? 'active open' : ''}">
                            <a
                                    class="sidebar-menu-button js-sidebar-collapse"
                                    href="/payment"
                            >
                                    <span
                                            class="material-icons sidebar-menu-icon sidebar-menu-icon--left"
                                    >money</span
                                    >
                                Tuition Fees
                            </a>
                        </li>
                    </ul>
                </div>
            </c:when>
            <c:when test="${sessionScope.account.loaiTaiKhoan.maLoaiTK == 2}">
                <div class="sidebar sidebar-dark-dodger-blue sidebar-left" data-perfect-scrollbar>
                    <a href="fixed-index.html" class="sidebar-brand">
                <span class="avatar avatar-xl sidebar-brand-icon h-auto">
                  <span class="avatar-title rounded bg-primary">
                      <img src="<c:url value="/resources/assets/images/illustration/teacher/128/white.svg"/>"
                           class="img-fluid"
                           alt="logo"
                      />
                  </span>
                </span>

                        <span>Luma</span>
                    </a>

                    <div class="sidebar-heading">INSTRUCTOR</div>
                    <ul class="sidebar-menu">
                        <li class="sidebar-menu-item">
                            <a class="sidebar-menu-button js-sidebar-collapse" data-toggle="collapse" href="#student_menu">
                    <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">school</span>
                                Student
                                <span class="ml-auto sidebar-menu-toggle-icon"></span>
                            </a>
                            <ul class="sidebar-submenu collapse sm-indent" id="instructor_menu">
                                <li class="sidebar-menu-item">
                                    <a class="sidebar-menu-button" href="fixed-index.html">
                                        <span class="sidebar-menu-text">Home</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a class="sidebar-menu-button" href="fixed-student-take-course.html">
                                        <span class="sidebar-menu-text">Take Course</span>
                                        <span class="sidebar-menu-badge badge badge-accent badge-notifications ml-auto">PRO</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        </li>
                    </ul>
                </div>
            </c:when>
        </c:choose>
    </div>
</div>
