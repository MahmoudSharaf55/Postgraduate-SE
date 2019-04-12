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
<form method="post" class="table-form"  style="overflow-y:scroll; height:100%; overflow-x: scroll; width:100%;" >
    <div class="titalForsertification">
        <h3 class="text-center" > Data For All Student That Register In Diploma And All Paper Accepted By Stuff</h3>
    </div>
    <table  class="table" style="overflow-y:scroll; height:100%; overflow-x: scroll; width:100%;" >
        <thead>
        <tr class="tr tableUpdate">
            <th scope="col" class="text-center" >ID</th>
            <th scope="col" class="text-center" >Full Name</th>
            <th scope="col" class="text-center">Bachelor In</th>
            <th scope="col" class="text-center">From Faculty</th>
            <th scope="col" class="text-center">Address</th>
            <th scope="col" class="text-center">Year for Graduation</th>
            <th scope="col" class="text-center">Overall Rate</th>
            <th scope="col" class="text-center">Specialization Rate</th>
            <th scope="col" class="text-center">Job</th>
            <th scope="col" class="text-center">Position of recruitment</th>
            <th scope="col" class="text-center">Date Of Birth</th>


        </tr>
        </thead>
        <tbody style="overflow-y:scroll; height:100%; overflow-x: scroll; width: 100% ">


        <%
            try
            {
                Connection c = DBConnection.getConnection();
                Statement statement = c.createStatement();
                ResultSet resultSet = statement.executeQuery("select f.id, f.name, f.dob, f.country, f.city, f.governorate, f.job, f.recruitment_postion, f.bachelor_in, f.b_overall_rate, f.b_faculty , s.paper , s.id , s.status, s.form from student_form as f  inner join student as s on s.id=f.id and  s.paper !='In Reviewing' and s.status='Waiting' and s.form=1 ;");
                while (resultSet.next()) {

        %>
        <tr class="teColor">
            <td class="text-center" ><%=resultSet.getString("id")%></td>
            <td class="text-center" ><%=resultSet.getString("name")%></td>
            <td class="text-center"><%=resultSet.getString("bachelor_in")%></td>
            <td class="text-center"><%=resultSet.getString("b_faculty")%></td>
            <td class="text-center"><%=resultSet.getString("country")%>//<%=resultSet.getString("city")%>//<%=resultSet.getString("governorate")%> </td>
            <td class="text-center">null</td>
            <td class="text-center">null</td>
            <td class="text-center"><%=resultSet.getString("b_overall_rate")%></td>
            <td class="text-center"><%=resultSet.getString("job")%></td>
            <td class="text-center"><%=resultSet.getString("recruitment_postion")%></td>
            <td class="text-center"><%=resultSet.getString("dob")%></td>


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
    <form action="D_sort_stateFor_diploma.jsp" method="post" >
        <div class="otuCenter">
            <input class="idchangestate" type="text" name="id" placeholder="ID" required>
            <input class="btnChangesta1" type="text" name="state" placeholder="Accept or not paper Stat" required>

        </div>


        <div class="container-login100-form-btn btnChangestat">
            <button class="login100-form-btn">
                Change Stutes
            </button>
        </div>

        <br>
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