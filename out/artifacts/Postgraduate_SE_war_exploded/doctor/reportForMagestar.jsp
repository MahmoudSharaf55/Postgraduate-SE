<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-11
  Time: 8:26 AM
  To change this template use File | Settings | File Templates.
--%>


<%@ page import="java.sql.Connection" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.time.Year" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no, width=device-width">
    <title>Diploma Student </title>

    <link rel="stylesheet" href="../bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrapv4/animate.css">
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <link rel="stylesheet" href="../css/style_Login.css">
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="stylesheet" href="../css/style_checkbox.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>

<body>
<%@include file="../header.jsp" %>
<div class="container">
    <div class="titalForsertification">
        <%
            int currentYear = Year.now().getValue();
            int lastYear = currentYear - 1;
        %>
        <h3 class="text-center"> Data For All Student That Register In Magestar For Year <%=lastYear%>/<%=currentYear%>
        </h3>
        <article style="height: auto">
            <div class="container">
                <div class="row text-center">
                    <form action="view_Magestar_report.jsp" method="post">
                        <br>
                        <ul class="ks-cboxtags">
                            <li>
                                <input type="checkbox"
                                       id="primary1"
                                       class="badgebox"
                                       name="dept">
                                <label for="primary1">Department</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary4" class="badgebox" name="name"><label for="primary4">Full
                                Name</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary5" class="badgebox" name="dob"><label for="primary5">Date
                                Of Birth</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary6" class="badgebox" name="country"><label
                                    for="primary6">Country</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary7" class="badgebox" name="city"><label for="primary7">City</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary8" class="badgebox" name="governorate"><label
                                    for="primary8">Governorate</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary9" class="badgebox" name="nationality"><label
                                    for="primary9">Nationality</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary10" class="badgebox" name="religion"><label
                                    for="primary10">Religion</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary11" class="badgebox" name="national_id"><label
                                    for="primary11">National ID</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary12" class="badgebox" name="national_source"><label
                                    for="primary12">Issuing Source</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary13" class="badgebox" name="national_release"><label
                                    for="primary13">Release Date</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary14" class="badgebox" name="recruitment_postion"><label
                                    for="primary14">Position of recruitment</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary15" class="badgebox" name="job"><label
                                    for="primary15">Job</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary16" class="badgebox" name="job_address"><label
                                    for="primary16">Job Address</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary17" class="badgebox" name="phone"><label
                                    for="primary17">Phone</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary18" class="badgebox" name="bachelor_in"><label
                                    for="primary18">Bachelor In</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary19" class="badgebox" name="b_role"><label
                                    for="primary19">Role</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary20" class="badgebox" name="b_overall_rate"><label
                                    for="primary20">Overall Rate</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary21" class="badgebox" name="b_dept"><label
                                    for="primary21">Department</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary22" class="badgebox" name="b_special_rate"><label
                                    for="primary22">Specialization Rate</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary23" class="badgebox" name="b_overall_mark"><label
                                    for="primary23">Overall Mark</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary24" class="badgebox" name="b_graduate_source"><label
                                    for="primary24">Graduation Source</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary25" class="badgebox" name="b_graduate_year"><label
                                    for="primary25">Graduation Year</label>
                            </li>
                            <li>
                                <input type="checkbox" id="primary26" class="badgebox" name="enroll_dept"><label
                                    for="primary26">Science Department For Enrolling</label>
                            </li>
                        </ul>
                        <div class="container-login100-form-btn backcolor">
                            <button class="login100-form-btn backcolor" type="submit">
                                Generate Report
                            </button>

                        </div>
                    </form>
                    <br><br>
                </div>
            </div>
        </article>
        <br>
    </div>
</div>
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