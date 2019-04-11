<%@ page import="Model.Student" %>
<nav class="navbar navbar-expand-lg navbar-dark py-0">
    <a class="navbar-brand" href="/index.jsp"><img src="/assets/postgraduate.png" width="90" height="60"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03"
            aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor03">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/index.jsp">Home</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                   aria-expanded="false">Doctor</a>
                <div class="dropdown-menu" x-placement="bottom-start"
                     style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                    <a class="dropdown-item dropdown-item-red" href="/doctor/signup_doctor.jsp">Register</a>
                    <a class="dropdown-item dropdown-item-red" href="/doctor/login_doctor.jsp">Login</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                   aria-expanded="false">Student</a>
                <div class="dropdown-menu" x-placement="bottom-start"
                     style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                    <a class="dropdown-item dropdown-item-red" href="/student/signup_student.jsp">Register</a>
                    <a class="dropdown-item dropdown-item-red" href="/student/login_Student.jsp">Login</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                   aria-expanded="false">Staff</a>
                <div class="dropdown-menu" x-placement="bottom-start"
                     style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                    <a class="dropdown-item dropdown-item-red" href="/staff/signup_staff.jsp">Register</a>
                    <a class="dropdown-item dropdown-item-red" href="/staff/login_staff.jsp">Login</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About</a>
            </li>
        </ul>
        <%!
            Student currentStudent;
        %>
        <%
            currentStudent = (Student) session.getAttribute("currentStudent");
            System.out.println(currentStudent);
            if (currentStudent != null) {
        %>
        <figure class="form-inline my-2 my-lg-0 float-right">
            <div class="btn-group" role="group">
                <a id="btnGroupDrop2" href="#" class="nav-link dropdown-toggle text-light" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false" style="line-height: 2"><img src="/assets/avatar.png"></a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupDrop2">
                    <span class="dropdown-header">&nbsp;<%=currentStudent.getUsername()%></span>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item dropdown-item-red" href="#">Profile</a>
                    <a class="dropdown-item dropdown-item-red" href="#">Sign out</a>
                </div>
            </div>
        </figure>
        <%
            }
        %>
    </div>
</nav>