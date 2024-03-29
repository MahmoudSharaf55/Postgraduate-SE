<%@ page import="Model.Doctor" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="Model.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-08
  Time: 11:54 AM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no, width=device-width">
    <title>Doctor Dashboard</title>
    <link rel="stylesheet" href="../bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrapv4/animate.css">
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>
<body>
<%@include file="../header.jsp" %>
<%
    Doctor doctor=(Doctor) session.getAttribute("doctor");


%>
<section class="p-2">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 my-3"><!--left col-->
                <div class="text-center">
                    <figure class="avatar">
                        <img src="/assets/user.png" alt="avatar" class="img-fluid">
                        <h4 style="overflow-wrap: break-word" class="mt-2"><%=doctor.getDoctorName()%>
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
                            <h4 class="card-header" style="font-family: Baloo">Your Profile</h4>


                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-4"><h5 class="text-primary">Number of Student : </h5><h4>Waite</h4>
                                    </div>

                                </div>
                            </div>

                            <div class="card-footer text-muted">
                                To Make Any Process
                            </div>
                            <div class="card-body text-center">
                                <a href="D_tableFor_deploma.jsp" class="btn btn-outline-primary col-sm-3 py-1">Accept Diploma</a>
                                <a href="D_tableFor_Master.jsp" class="btn btn-outline-primary col-sm-3 py-1">Accept Magister</a>
                                <a href="D_tableForPh-D.jsp" class="btn btn-outline-primary col-sm-3 py-1">Accept PH.D.</a>
                            </div>
                            <div class="card-body text-center">
                                <a href="reportForDiploma.jsp" class="btn btn-outline-primary col-sm-3 py-1">generate Diploma Report </a>
                                <a href="reportForMagestar.jsp" class="btn btn-outline-primary col-sm-3 py-1">generate Magestar Report</a>
                                <a href="reportForPh-D.jsp" class="btn btn-outline-primary col-sm-3 py-1">generate PH.D Report</a>
                            </div>

                            <div class="card-footer text-muted">
                                Accept Subjects For Student
                            </div>
                            <div class="card-body text-center">
                                <a href="subject_table_for_diploma.jsp" class="btn btn-outline-primary col-sm-3 py-1">Subjects For Diploma </a>
                                <a href="subject_table_master.jsp" class="btn btn-outline-primary col-sm-3 py-1">Subjects For Magestar</a>
                                <a href="subject_table_ph-d.jsp" class="btn btn-outline-primary col-sm-3 py-1">Subjects For PH.D </a>
                            </div>


                        </div>
                    </div>
                    <div class="tab-pane" id="edit">
                        <form action="Update_doctor_information.jsp" method="post" class="form-control my-2 needs-validation" novalidate>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="name">Username</label>
                                    <input type="text" class="form-control" name="name" id="name" value="<%=doctor.getDoctorName()%>"
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
                                    <input type="email" class="form-control" name="email" id="email" value="<%=doctor.getDoctorEmail()%>"
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




<%@include file="../footer.jsp"%>
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