<%@ page import="Model.*" %><%--
  Created by IntelliJ IDEA.
  User: Ma7MOoOD SHaRaF
  Date: 10/04/2019
  Time: 09:32 م
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no, width=device-width">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="../bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrapv4/animate.css">
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>
<body>
<%@include file="../header.jsp" %>
<%
    Student student = (Student) session.getAttribute("currentStudent");
    StudentForm diploma = (StudentForm) session.getAttribute("diploma");
    StudentForm master = (StudentForm) session.getAttribute("master");
    StudentForm ph = (StudentForm) session.getAttribute("ph");
    System.out.println(student + " " + diploma);
    if (student != null || (diploma != null || master != null || ph != null)) {
%>
<section class="p-2">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 my-3"><!--left col-->
                <div class="text-center">
                    <figure class="avatar">
                        <img src="/assets/user.png" alt="avatar" class="img-fluid">
                        <h4 style="overflow-wrap: break-word" class="mt-2"><%=student.getUsername()%>
                        </h4>
                    </figure>
                </div>
            </div><!--/col-3-->
            <div class="col-sm-9 card border-primary p-2">
                <ul class="nav nav-tabs border-primary">
                    <li class="nav-item bg-light">
                        <a class="nav-link active" data-toggle="tab" href="#home">Home</a>
                    </li>
                    <li class="nav-item bg-light">
                        <a class="nav-link" data-toggle="tab" href="#edit">Edit Profile</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <div class="card mb-3">
                            <h4 class="card-header" style="font-family: Baloo">Your Forms</h4>
                            <%
                                if (diploma == null && master == null && ph == null) {
                            %>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">No Forms</li>
                            </ul>
                            <%
                                }
                                if (diploma != null) {
                            %>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Diploma
                                    <form action="refill_form.jsp" method="post" class="float-right form-inline">
                                        <input type="hidden" value="diploma" name="refill_type">
                                        <button type="submit"
                                                class="btn btn-link text-danger"><i
                                                class="fa fa-edit"></i> Fill Form Again
                                        </button>
                                    </form>
                                </li>
                            </ul>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-4"><h5 class="text-primary">Paper : </h5>
                                        <h6><%=diploma.getPaper()%>
                                        </h6>
                                    </div>
                                    <div class="col-sm-4"><h5 class="text-primary">Status : </h5>
                                        <h6><%=diploma.getStatus()%>
                                        </h6></div>
                                </div>
                            </div>
                            <%
                                }
                                if (master != null) {
                            %>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Master
                                    <form action="refill_form.jsp" method="post" class="float-right form-inline">
                                        <input type="hidden" value="master" name="refill_type">
                                        <button type="submit"
                                                class="btn btn-link text-danger"><i
                                                class="fa fa-edit"></i> Fill Form Again
                                        </button>
                                    </form>
                                </li>
                            </ul>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-4"><h5 class="text-primary">Paper : </h5>
                                        <h6><%=master.getPaper()%>
                                        </h6>
                                    </div>
                                    <div class="col-sm-4"><h5 class="text-primary">Status : </h5>
                                        <h6><%=master.getStatus()%>
                                        </h6></div>
                                </div>
                            </div>
                            <%
                                }
                                if (ph != null) {
                            %>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">PH.D.
                                    <form action="refill_form.jsp" method="post" class="float-right form-inline">
                                        <input type="hidden" value="ph" name="refill_type">
                                        <button type="submit"
                                                class="btn btn-link text-danger"><i
                                                class="fa fa-edit"></i> Fill Form Again
                                        </button>
                                    </form>
                                </li>
                            </ul>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-4"><h5 class="text-primary">Paper : </h5><h6><%=ph.getPaper()%>
                                    </h6>
                                    </div>
                                    <div class="col-sm-4"><h5 class="text-primary">Status : </h5><h6><%=ph.getStatus()%>
                                    </h6></div>
                                </div>
                            </div>
                            <%
                                }
                            %>
                            <div class="card-footer text-muted">
                                To Register Another Form
                            </div>
                            <div class="card-body text-center">
                                <%
                                    if (ph == null) {
                                %>
                                <a href="Ph-D_registration.jsp" class="btn btn-outline-primary col-sm-3 py-1">PH.D.</a>
                                <%
                                    }
                                    if (diploma == null) {
                                %>
                                <a href="diploma_registration.jsp"
                                   class="btn btn-outline-primary col-sm-3 py-1">Diploma</a>
                                <%
                                    }
                                    if (master == null) {
                                %>
                                <a href="master's_registration.jsp" class="btn btn-outline-primary col-sm-3 py-1">Magister</a>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                    <%--
                    TODO:Micheal
                    هتضيف جدول فيه كود المقرر + اسم المقرر + عدد الساعات للمقرر
                    وهتربط الطالب بالجدول دا ب foreignkey
                    هتعمل زرار ف الداش بورد يخلى الطالب يختار 3 مرات بحيث ميكونش عدا ال 3 مرات سقوط فيها
                    لو عدا ال 3 مرات متظهرلوش
                    ويختار عدد مواد بحسب مجموع ساعتهم
                    يعنى 5 مواد بس عدد الساعات يكون من 70 ل 120
                    --%>
                    <div class="tab-pane" id="edit">
                        <form action="edit_profile.jsp" method="post" class="form-control my-2 needs-validation"
                              novalidate>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="name">Username</label>
                                    <input type="text" class="form-control" name="name" id="name"
                                           value="<%=student.getUsername()%>"
                                           placeholder="Username" title="enter your last name if any." required>
                                    <div class="invalid-feedback">
                                        <b>&Cross; Empty Field</b>
                                    </div>
                                    <div class="valid-feedback">
                                        <b>&check; Ok</b>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" name="email" id="email"
                                           value="<%=student.getEmail()%>"
                                           placeholder="you@email.com" title="enter your email." required>
                                    <div class="invalid-feedback">
                                        <b>&Cross; Check Syntax</b>
                                    </div>
                                    <div class="valid-feedback">
                                        <b>&check; Ok</b>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="password">New Password</label>
                                    <input type="password" class="form-control" name="password" id="password"
                                           placeholder="New Password" title="enter your password." required
                                           minlength="6">
                                    <div class="invalid-feedback">
                                        <b>&Cross; Password must be at least 6 character</b>
                                    </div>
                                    <div class="valid-feedback">
                                        <b>&check; Ok</b>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <button class="btn btn-outline-primary w-100" type="submit"><i
                                            class="fa fa-check"></i> Save
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div><!--/tab-pane-->
                </div><!--/tab-pane-->
            </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
</section>
<%
    }
%>
<%@include file="../footer.jsp" %>
<script src="../bootstrapv4/jquery-3.3.1.slim.min.js" type="text/javascript"></script>
<script src="../bootstrapv4/popper.min.js" type="text/javascript"></script>
<script src="../bootstrapv4/js/bootstrap.min.js" type="text/javascript"></script>
<script>
    (function () {
        'use strict';
        window.addEventListener('load', function () {
            var forms = document.getElementsByClassName('needs-validation');
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })
</script>
</body>
</html>

