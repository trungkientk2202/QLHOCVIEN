<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pagina" value="${requestScope['javax.servlet.forward.request_uri']}" />

<div class="mdk-drawer js-mdk-drawer" id="default-drawer">
    <div class="mdk-drawer__content top-navbar">
        <div class="sidebar sidebar-dark-dodger-blue sidebar-left sidebar-p-t" data-perfect-scrollbar>

            <div class="sidebar-heading">Administrator</div>
            <ul class="sidebar-menu">
                <li class="sidebar-menu-item ${pagina.endsWith('/dashboard') ? 'active open' : ''}">
                    <a class="sidebar-menu-button js-sidebar-collapse" href="/admin/dashboard">
                        <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">donut_large</span>
                        Dashboard
                        <%-- <span class="ml-auto sidebar-menu-toggle-icon"></span>--%>
                    </a>
                </li>
                <li class="sidebar-menu-item ${pagina.endsWith('/schedule') ? 'active open' : ''}">
                    <a class="sidebar-menu-button" href="/admin/schedule">
                        <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">access_time</span>
                        Schedule
                    </a>
                </li>
                <li class="sidebar-menu-item ${pagina.endsWith('/courses') ? 'active open' : ''}">
                    <a class="sidebar-menu-button" href="/admin/courses">
                        <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">dns</span>
                        Courses
                    </a>
                </li>
                <li class="sidebar-menu-item ${pagina.endsWith('/students') ? 'active open' : ''}">
                    <a class="sidebar-menu-button" href="/admin/students">
                        <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">assignment_ind</span>
                        Students
                    </a>
                </li>
                <li class="sidebar-menu-item ${pagina.endsWith('/instructors') ? 'active open' : ''}">
                    <a class="sidebar-menu-button" href="/admin/instructors">
                        <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">contact_mail</span>
                        Instructors
                    </a>
                </li>
                <li class="sidebar-menu-item">
                    <a class="sidebar-menu-button" data-toggle="collapse" href="#messaging_menu">
                            <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">message</span>
                            Messaging
                            <span class="sidebar-menu-badge badge badge-accent badge-notifications ml-auto">2</span>
                            <span class="sidebar-menu-toggle-icon"></span>
                        </a>
                        <ul class="sidebar-submenu collapse sm-indent" id="messaging_menu">
                            <li class="sidebar-menu-item">
                                <a class="sidebar-menu-button" href="sticky-messages.html">
                                    <span class="sidebar-menu-text">Messages</span>
                                </a>
                            </li>
                            <li class="sidebar-menu-item">
                                <a class="sidebar-menu-button" href="sticky-email.html">
                                    <span class="sidebar-menu-text">Email</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                </ul>

            </div>
        </div>
    </div>

