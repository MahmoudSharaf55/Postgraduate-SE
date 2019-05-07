<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-05-06
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Model.Staff" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page pageEncoding="UTF-8" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no, width=device-width">
    <title>Table For Diploma </title>

    <link rel="stylesheet" href="../bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrapv4/animate.css">
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <link rel="stylesheet" href="../css/style_Login.css">
    <link rel="stylesheet" href="../css/style_search_icon.css">
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>

<body>
<%@include file="../header.jsp" %>

<form method="post" class="table-form" style="overflow-y:scroll; height:100%;">
    <div class="titalForsertification">
        <h3 class="text-center"> Data For All Student That Register In Diploma</h3>
    </div>
    <table class="table" style="overflow-y:scroll; height:100%;">
        <thead>
        <tr class="tr">
            <th scope="col" class="text-center">ID</th>
            <th scope="col" class="text-center">NAME</th>
            <th scope="col" class="text-center">Email</th>
            <th scope="col" class="text-center">State</th>
            <th scope="col" class="text-center">paper</th>

        </tr>
        </thead>
        <tbody style="overflow-y:scroll; height:100%;">
        <%request.setCharacterEncoding("UTF-8");



            request.setCharacterEncoding("UTF-8");
            Doctor doctor= (Doctor) session.getAttribute("doctor");

            String department= doctor.getDoctordepartment();
            String email=doctor.getDoctorEmail();
            System.out.println("the value of depa is =" + department);
            System.out.println("the doctor mail " + email);


            try {

                Connection c = DBConnection.getConnection();

                PreparedStatement statement = c.prepareStatement("select s.id, s.username, s.email, f.status, f.paper from student as s inner join student_form as f where paper!='In Reviewing' AND form_type=2  and s.id=f.s_id and doctor_mail=?");
                statement.setString(1,email);
                ResultSet resultSet = statement.executeQuery();
                while (resultSet.next()) {


                    request.setCharacterEncoding("UTF-8");
        %>
        <tr class="teColor">

            <td scope="row"><%= resultSet.getString("id")%>
            </td>
            <td class="text-center"><%=resultSet.getString("username")%>
            </td>
            <td class="text-center"><%=resultSet.getString("email")%>
            </td>
            <td class="text-center"><%=resultSet.getString("status")%>
            </td>
            <td class="text-center"><%=resultSet.getString("paper")%>
            </td>
        </tr>

        <%

            }
        %>

        <%
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>

        </tbody>
    </table>

</form>
<div>
    <br>
    <h5 class="text-center">To Show all Data about Student Please inter the id in search icon </h5><br>
    <form action="show_subjectDetails.jsp" method="post">
        <div class="container h-100">
            <div class="d-flex justify-content-center h-100">
                <div class="searchbar">
                    <input class="search_input" type="text" name="ema" placeholder="Search...">
                    <button type="submit" class="search_icon"><i class="fas fa-search"></i></button>
                </div>
            </div>
        </div>
    </form>


</div>
<br><br>
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