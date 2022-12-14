<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div
        id="header"
        class="mdk-header mdk-header--bg-dark bg-dark js-mdk-header mb-0"
        data-effects="parallax-background waterfall"
        data-fixed
        data-condenses
>
    <div class="mdk-header-only mdk-header__bg">
        <div
                class="mdk-header__bg-front"
                style="
                        background-image: url(<c:url
                        value="/resources/assets/images/photodune-4161018-group-of-students-m.jpg"/>);
                        "
        ></div>
    </div>
    <div class="mdk-header__content justify-content-center">
        <div
                class="navbar navbar-expand navbar-dark-dodger-blue bg-transparent will-fade-background"
                id="default-navbar"
                data-primary
        >
            <!-- Navbar toggler -->
            <button
                    class="navbar-toggler w-auto mr-16pt d-block rounded-0"
                    type="button"
                    data-toggle="sidebar"
            >
                <span class="material-icons">short_text</span>
            </button>

            <!-- Navbar Brand -->
            <a href="fixed-index.html" class="navbar-brand mr-16pt">

                    <span class="avatar avatar-sm navbar-brand-icon mr-0 mr-lg-8pt">
                <span class="avatar-title rounded bg-primary"
                ><img
                        src="<c:url value="/resources/assets/images/illustration/student/128/white.svg"/>"
                        alt="logo"
                        class="img-fluid"
                /></span>
              </span>

                <span class="d-none d-lg-block">Luma</span>
            </a>

            <ul
                    class="nav navbar-nav d-none d-sm-flex flex justify-content-start ml-8pt"
            >
                <li class="nav-item active">
                    <a href="/" class="nav-link">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            href="#"
                            class="nav-link dropdown-toggle"
                            data-toggle="dropdown"
                            data-caret="false"
                    >Courses</a
                    >
                    <div class="dropdown-menu">
                        <a href="fixed-courses.html" class="dropdown-item"
                        >Browse Courses</a
                        >
                        <a href="fixed-student-course.html" class="dropdown-item"
                        >Preview Course</a
                        >
                        <a href="fixed-student-lesson.html" class="dropdown-item"
                        >Preview Lesson</a
                        >
                        <a href="fixed-student-take-course.html" class="dropdown-item"
                        ><span class="mr-16pt">Take Course</span>
                            <span
                                    class="badge badge-notifications badge-accent text-uppercase ml-auto"
                            >Pro</span
                            ></a
                        >
                        <a href="fixed-student-take-lesson.html" class="dropdown-item"
                        >Take Lesson</a
                        >
                        <a href="fixed-student-take-quiz.html" class="dropdown-item"
                        >Take Quiz</a
                        >
                        <a
                                href="fixed-student-quiz-result-details.html"
                                class="dropdown-item"
                        >Quiz Result</a
                        >
                        <a href="fixed-student-dashboard.html" class="dropdown-item"
                        >Student Dashboard</a
                        >
                        <a href="fixed-student-my-courses.html" class="dropdown-item"
                        >My Courses</a
                        >
                        <a
                                href="fixed-student-quiz-results.html"
                                class="dropdown-item"
                        >My Quizzes</a
                        >
                        <a href="fixed-help-center.html" class="dropdown-item"
                        >Help Center</a
                        >
                    </div>
                </li>
                <li
                        class="nav-item dropdown"
                        data-toggle="tooltip"
                        data-title="Community"
                        data-placement="bottom"
                        data-boundary="window"
                >
                    <a
                            href="#"
                            class="nav-link dropdown-toggle"
                            data-toggle="dropdown"
                            data-caret="false"
                    >
                        <i class="material-icons">people_outline</i>
                    </a>
                    <div class="dropdown-menu">
                        <a href="fixed-teachers.html" class="dropdown-item"
                        >Browse Teachers</a
                        >
                        <a href="fixed-student-profile.html" class="dropdown-item"
                        >Student Profile</a
                        >
                        <a href="fixed-teacher-profile.html" class="dropdown-item"
                        >Instructor Profile</a
                        >
                        <a href="fixed-blog.html" class="dropdown-item">Blog</a>
                        <a href="fixed-blog-post.html" class="dropdown-item"
                        >Blog Post</a
                        >
                        <a href="fixed-faq.html" class="dropdown-item">FAQ</a>
                        <a href="fixed-help-center.html" class="dropdown-item"
                        >Help Center</a
                        >
                        <a href="fixed-discussions.html" class="dropdown-item"
                        >Discussions</a
                        >
                        <a href="fixed-discussion.html" class="dropdown-item"
                        >Discussion Details</a
                        >
                        <a href="fixed-discussions-ask.html" class="dropdown-item"
                        >Ask Question</a
                        >
                    </div>
                </li>
            </ul>

            <ul class="nav navbar-nav ml-auto mr-0">
                <li class="nav-item active">
                    <a
                            href="/login"
                            class="nav-link"
                            data-toggle="tooltip"
                            data-title="Login"
                            data-placement="bottom"
                            data-boundary="window"
                    >
                        <i class="material-icons mr-4pt">input</i>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/register" class="btn btn-outline-white"
                    >SIGN UP</a
                    >
                </li>
            </ul>
        </div>

        <div
                class="mdk-header-only hero container page__container text-center text-md-left py-112pt"
        >
            <h1 class="text-white text-shadow">Learn to Code</h1>
            <p
                    class="lead measure-hero-lead mx-auto mx-md-0 text-white text-shadow mb-48pt"
            >
                Business, Technology and Creative Skills taught by industry
                experts. Explore a wide range of skills with our professional
                tutorials.
            </p>

            <a
                    href="fixed-courses.html"
                    class="btn btn-lg btn-white btn--raised mb-16pt"
            >Browse Courses</a
            >

            <p class="mb-0">
                <a href="" class="text-white text-shadow"
                ><strong>Are you a teacher?</strong></a
                >
            </p>
        </div>
    </div>
</div>
