<%@ page import="java.sql.Connection" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Model.Staff" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-09
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no, width=device-width">
    <title>Stuff Home Page </title>

    <link rel="stylesheet" href="../bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrapv4/animate.css">
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <link rel="stylesheet" href="../css/style_Login.css">
    <link rel="stylesheet" href="../css/style_search_icon.css">
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>

<body>
<%@include file="../header.jsp"%>

<%!
String id, dept, id_number, name, dob, country, city, governorate, nationality, religion, national_id, national_source, national_release, recruitment_postion, job, job_address, phone, bachelor_in, b_role, b_overall_rate, b_dept, b_special_rate, b_faculty, b_university, postgraduate_in, p_role, p_special, p_rate, p_faculty, p_university, enroll_dept;

%>

<form method="post" class="table-form"  style="overflow-y:scroll; height:100%;">
    <table  class="table" style="overflow-y:scroll; "  >
        <thead >
        <tr class="tr">
            <th scope="col" class="text-center" >ID</th>
            <th scope="col" class="text-center">ID_Number</th>
            <th scope="col" class="text-center">Name</th>
            <th scope="col" class="text-center">Date_Of_Bearth</th>
            <th scope="col" class="text-center">Country</th>
            <th scope="col" class="text-center">City</th>

        </tr>
        </thead>
        <tbody style="overflow-y:scroll;">
            <%String id=request.getParameter("ema");
            int search_id=Integer.parseInt(id);


            System.out.println("id is eqal  "+search_id);
            try
            {
                Connection c = DBConnection.getConnection();

                PreparedStatement preparedStatement=c.prepareStatement("select id, dept, id_number, name, dob, country, city, governorate, nationality, religion, national_id, national_source, national_release, recruitment_postion, job, job_address, phone, bachelor_in, b_role, b_overall_rate, b_dept, b_special_rate, b_faculty, b_university, postgraduate_in, p_role, p_special, p_rate, p_faculty, p_university, enroll_dept from student_form where id=?");
                preparedStatement.setInt(1,search_id);
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {

        %>
        <tr class="teColor">

            <td class="text-center"><%= resultSet.getString("id")%> </td>
            <td class="text-center" ><%=resultSet.getString("dept")%></td>
            <td class="text-center"><%=resultSet.getString("id_number")%></td>
            <td class="text-center"><%=resultSet.getString("name")%></td>
            <td class="text-center"><%=resultSet.getString("dob")%></td>
            <td class="text-center"><%=resultSet.getString("city")%></td>
        </tr>
        <thead >
        <tr class="tr">
            <th scope="col" class="text-center" >Governorate</th>
            <th scope="col" class="text-center">Nationality</th>
            <th scope="col" class="text-center">Religion</th>
            <th scope="col" class="text-center">National_Id</th>
            <th scope="col" class="text-center">National_Source</th>
            <th scope="col" class="text-center">National_Release</th>

        </tr>
        </thead>
        <tr class="teColor">

            <td class="text-center"><%= resultSet.getString("governorate")%> </td>
            <td class="text-center" ><%=resultSet.getString("nationality")%></td>
            <td class="text-center"><%=resultSet.getString("religion")%></td>
            <td class="text-center"><%=resultSet.getString("national_id")%></td>
            <td class="text-center"><%=resultSet.getString("National_Source")%></td>
            <td class="text-center"><%=resultSet.getString("national_release")%></td>
        </tr>

        <thead >
        <tr class="tr">
            <th scope="col" class="text-center" >Position of recruitment</th>
            <th scope="col" class="text-center">Job</th>
            <th scope="col" class="text-center">Job Address</th>
            <th scope="col" class="text-center">Phone Number</th>
            <th scope="col" class="text-center">Bachelor_In</th>
            <th scope="col" class="text-center">Role</th>

        </tr>
        </thead>
        <tr class="teColor">

            <td class="text-center"><%= resultSet.getString("recruitment_postion")%> </td>
            <td class="text-center" ><%=resultSet.getString("job")%></td>
            <td class="text-center"><%=resultSet.getString("job_address")%></td>
            <td class="text-center"><%=resultSet.getString("phone")%></td>
            <td class="text-center"><%=resultSet.getString("bachelor_in")%></td>
            <td class="text-center"><%=resultSet.getString("b_role")%></td>
        </tr>


        <thead >
        <tr class="tr">
            <th scope="col" class="text-center" >Overall Rate</th>
            <th scope="col" class="text-center">Department</th>
            <th scope="col" class="text-center">Specialization Rate</th>
            <th scope="col" class="text-center">Faculty</th>
            <th scope="col" class="text-center">University</th>
            <th scope="col" class="text-center">Postgraduate</th>

        </tr>
        </thead>
        <tr class="teColor">

            <td class="text-center"><%= resultSet.getString("b_overall_rate")%> </td>
            <td class="text-center" ><%=resultSet.getString("b_dept")%></td>
            <td class="text-center"><%=resultSet.getString("b_special_rate")%></td>
            <td class="text-center"><%=resultSet.getString("b_faculty")%></td>
            <td class="text-center"><%=resultSet.getString("b_university")%></td>
            <td class="text-center"><%=resultSet.getString("postgraduate_in")%></td>
        </tr>



        <thead >
        <tr class="tr">
            <th scope="col" class="text-center" >Role</th>
            <th scope="col" class="text-center">Specialization</th>
            <th scope="col" class="text-center"> Rate</th>
            <th scope="col" class="text-center">Faculty</th>
            <th scope="col" class="text-center">University</th>
            <th scope="col" class="text-center">Science Department</th>

        </tr>
        </thead>
        <tr class="teColor">

            <td class="text-center"><%= resultSet.getString("p_role")%> </td>
            <td class="text-center" ><%=resultSet.getString("p_special")%></td>
            <td class="text-center"><%=resultSet.getString("p_rate")%></td>
            <td class="text-center"><%=resultSet.getString("p_faculty")%></td>
            <td class="text-center"><%=resultSet.getString("p_university")%></td>
            <td class="text-center"><%=resultSet.getString("enroll_dept")%></td>
        </tr>

        <%

            }
        %>

        <%
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }

        %>

        </tbody>
    </table>

</form >
<div class="colc">
    <br>
    <h5 class="text-center">If Data Correct Write Accept Rr Writ Error Data </h5><br>
    <form action="S_sort_paperState_Ph-D.jsp" method="post" >
        <div class="otuCenter">
            <input class="idchangestate" type="text" name="id" placeholder="ID" required>
            <input class="btnChangesta1" type="text" name="state" placeholder="Accept or not paper Stat" required>

        </div>


        <div class="container-login100-form-btn btnChangestat">
            <button class="login100-form-btn">
                Change Stutes
            </button>
        </div>

        <br><br>
    </form>
</div>


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