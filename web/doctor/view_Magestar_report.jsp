<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-21
  Time: 11:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no, width=device-width">
    <title>Diploma Student </title>

    <link rel="stylesheet" href="../bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrapv4/animate.css">
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <link rel="stylesheet" type="text/css" href="../css/perfect-scrollbar.css">
    <link rel="stylesheet" type="text/css" href="../css/util.css">
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" href="../css/style_Login.css">
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>
<body>
<%@include file="../header.jsp" %>
<%!
String dept
        ,
        name
        ,
        dob
        ,
        city
        ,
        country
        ,
        governorate
        ,
        nationality
        ,
        religion
        ,
        national_id
        ,
        national_source
        ,
        national_release
        ,
        recruitment_postion
        ,
        job
        ,
        job_address
        ,
        phone
        ,
        bachelor_in
        ,
        b_role
        ,
        b_overall_rate
        ,
        b_dept
        ,
        b_special_rate
        ,
        b_overall_mark
        ,
        b_graduate_source
        ,
        b_graduate_year
        ,
        enroll_dept;
    PreparedStatement ps;
    ResultSet rs;
    int count = 0;
%>
<div class="limiter">
    <div class="container-table100">
        <div class="wrap-table100">
            <div class="table100">
                <table>
                    <thead>
                    <tr class="table100-head">
                        <%
                            dept = request.getParameter("dept");
                            name = request.getParameter("name");
                            dob = request.getParameter("dob");
                            country = request.getParameter("country");
                            city = request.getParameter("city");
                            governorate = request.getParameter("governorate");
                            nationality = request.getParameter("nationality");
                            religion = request.getParameter("religion");
                            national_id = request.getParameter("national_id");
                            national_source = request.getParameter("national_source");
                            national_release = request.getParameter("national_release");
                            recruitment_postion = request.getParameter("recruitment_postion");
                            job = request.getParameter("job");
                            job_address = request.getParameter("job_address");
                            phone = request.getParameter("phone");
                            bachelor_in = request.getParameter("bachelor_in");
                            b_role = request.getParameter("b_role");
                            b_overall_rate = request.getParameter("b_overall_rate");
                            b_dept = request.getParameter("b_dept");
                            b_special_rate = request.getParameter("b_special_rate");
                            b_overall_mark = request.getParameter("b_overall_mark");
                            b_graduate_source = request.getParameter("b_graduate_source");
                            b_graduate_year = request.getParameter("b_graduate_year");
                            enroll_dept = request.getParameter("enroll_dept");
                            StringBuilder sql = new StringBuilder("select ");
                            if (dept != null || name != null || dob != null || country != null || city != null ||
                                    governorate != null || nationality != null || religion != null || national_id != null || job != null ||
                                    national_source != null || national_release != null || recruitment_postion != null || job_address != null || phone != null ||
                                    bachelor_in != null || b_role != null || b_overall_rate != null || b_dept != null || b_special_rate != null || b_overall_mark != null
                                    || b_graduate_source != null || b_graduate_year != null || enroll_dept != null) {
                                if (dept != null) {
                                    sql.append("dept,");
                                    count++;
                        %>
                        <th>Dept</th>
                        <%
                            }
                            if (name != null) {
                                sql.append("name,");
                                count++;
                        %>
                        <th>Name</th>
                        <%
                            }
                            if (dob != null) {
                                sql.append("dob,");
                                count++;
                        %>
                        <th>Birth Date</th>
                        <%
                            }
                            if (country != null) {
                                sql.append("country,");
                                count++;
                        %>
                        <th>country</th>
                        <%
                            }
                            if (city != null) {
                                sql.append("city,");
                                count++;
                        %>
                        <th>city</th>
                        <%
                            }
                            if (governorate != null) {
                                sql.append("governorate,");
                                count++;
                        %>
                        <th>governorate</th>
                        <%
                            }
                            if (nationality != null) {
                                sql.append("nationality,");
                                count++;
                        %>
                        <th>nationality</th>
                        <%
                            }
                            if (religion != null) {
                                sql.append("religion,");
                                count++;
                        %>
                        <th>religion</th>
                        <%
                            }
                            if (national_id != null) {
                                sql.append("national_id,");
                                count++;
                        %>
                        <th>national id</th>
                        <%
                            }
                            if (national_source != null) {
                                sql.append("national_source,");
                                count++;
                        %>
                        <th>national source</th>
                        <%
                            }
                            if (national_release != null) {
                                sql.append("national_release,");
                                count++;
                        %>
                        <th>national release</th>
                        <%
                            }
                            if (recruitment_postion != null) {
                                sql.append("recruitment_postion,");
                                count++;
                        %>
                        <th>recruitment postion</th>
                        <%
                            }
                            if (job != null) {
                                sql.append("job,");
                                count++;
                        %>
                        <th>job</th>
                        <%
                            }
                            if (job_address != null) {
                                sql.append("job_address,");
                                count++;
                        %>
                        <th>job_address</th>
                        <%
                            }
                            if (phone != null) {
                                sql.append("phone,");
                                count++;
                        %>
                        <th>phone</th>
                        <%
                            }
                            if (bachelor_in != null) {
                                sql.append("bachelor_in,");
                                count++;
                        %>
                        <th>bachelor in</th>
                        <%
                            }
                            if (b_role != null) {
                                sql.append("b_role,");
                                count++;
                        %>
                        <th>bachelor role</th>
                        <%
                            }
                            if (b_overall_rate != null) {
                                sql.append("b_overall_rate,");
                                count++;
                        %>
                        <th>bachelor overall rate</th>
                        <%
                            }
                            if (b_dept != null) {
                                sql.append("b_dept,");
                                count++;
                        %>
                        <th>bachelor dept</th>
                        <%
                            }
                            if (b_special_rate != null) {
                                sql.append("b_special_rate,");
                                count++;
                        %>
                        <th>bachelor special rate</th>
                        <%
                            }
                            if (b_overall_mark != null) {
                                sql.append("b_overall_mark,");
                                count++;
                        %>
                        <th>bachelor overall mark</th>
                        <%
                            }
                            if (b_graduate_source != null) {
                                sql.append("b_graduate_source,");
                                count++;
                        %>
                        <th>bachelor graduation source</th>
                        <%
                            }
                            if (b_graduate_year != null) {
                                sql.append("b_graduate_year,");
                                count++;
                        %>
                        <th>bachelor graduation year</th>
                        <%
                            }
                            if (enroll_dept != null) {
                                sql.append("enroll_dept,");
                                count++;
                        %>
                        <th>enroll dept</th>
                        <%
                            }
                            sql.deleteCharAt(sql.length() - 1);
                            sql.append(" from student_form where form_type = 3");
                            ps = DBConnection.getConnection().prepareStatement(sql.toString());
                            rs = ps.executeQuery();
                        %>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        while (rs.next()) {
                    %>
                    <tr>
                        <%
                            for (int i = 1; i <= count; i++) {
                        %>
                        <td><%=rs.getString(i)%>
                        </td>
                        <%
                            }
                        %>
                    </tr>
                    <%
                            }
                        }
                        count = 0;
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<%@include file="../footer.jsp" %>
<script src="../bootstrapv4/jquery-3.3.1.slim.min.js" type="text/javascript"></script>
<script src="../bootstrapv4/popper.min.js" type="text/javascript"></script>
<script src="../bootstrapv4/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../js/select2.min.js"></script>
<script src="../js/main.js"></script>
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
