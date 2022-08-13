<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="mdk-drawer js-mdk-drawer" id="default-drawer">
    <div class="mdk-drawer__content">
        <div
                class="sidebar sidebar-dark-dodger-blue sidebar-left"
                data-perfect-scrollbar
        >

            <a href="fixed-index.html" class="sidebar-brand">
                <span class="avatar avatar-xl sidebar-brand-icon h-auto">
                  <span class="avatar-title rounded bg-primary"
                  ><img
                          src="<c:url value="/resources/assets/images/illustration/student/128/white.svg"/>"
                          class="img-fluid"
                          alt="logo"
                  /></span>
                </span>

                <span>Luma</span>
            </a>

            <div class="sidebar-heading">STUDENT</div>
            <ul class="sidebar-menu">
                <li class="sidebar-menu-item">
                    <a
                            class="sidebar-menu-button js-sidebar-collapse"
                            data-toggle="collapse"
                            href="#student_menu"
                    >
                    <span
                            class="material-icons sidebar-menu-icon sidebar-menu-icon--left"
                    >school</span
                    >
                        Student
                        <span class="ml-auto sidebar-menu-toggle-icon"></span>
                    </a>
                    <ul class="sidebar-submenu collapse sm-indent" id="student_menu">
                        <li class="sidebar-menu-item">
                            <a class="sidebar-menu-button" href="fixed-index.html">
                                <span class="sidebar-menu-text">Home</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a class="sidebar-menu-button" href="fixed-courses.html">
                                <span class="sidebar-menu-text">Browse Courses</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a class="sidebar-menu-button" href="fixed-paths.html">
                                <span class="sidebar-menu-text">Browse Paths</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-dashboard.html"
                            >
                                <span class="sidebar-menu-text">Student Dashboard</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-my-courses.html"
                            >
                                <span class="sidebar-menu-text">My Courses</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-paths.html"
                            >
                                <span class="sidebar-menu-text">My Paths</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a class="sidebar-menu-button" href="fixed-student-path.html">
                                <span class="sidebar-menu-text">Path Details</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-course.html"
                            >
                                <span class="sidebar-menu-text">Course Preview</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-lesson.html"
                            >
                                <span class="sidebar-menu-text">Lesson Preview</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-take-course.html"
                            >
                                <span class="sidebar-menu-text">Take Course</span>
                                <span
                                        class="sidebar-menu-badge badge badge-accent badge-notifications ml-auto"
                                >PRO</span
                                >
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-take-lesson.html"
                            >
                                <span class="sidebar-menu-text">Take Lesson</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-take-quiz.html"
                            >
                                <span class="sidebar-menu-text">Take Quiz</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-quiz-results.html"
                            >
                                <span class="sidebar-menu-text">My Quizzes</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-quiz-result-details.html"
                            >
                                <span class="sidebar-menu-text">Quiz Result</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-path-assessment.html"
                            >
                                <span class="sidebar-menu-text">Skill Assessment</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item">
                            <a
                                    class="sidebar-menu-button"
                                    href="fixed-student-path-assessment-result.html"
                            >
                                <span class="sidebar-menu-text">Skill Result</span>
                            </a>
                        </li>
                    </ul>
                </li>
                </li>
            </ul>
        </div>
    </div>
</div>
