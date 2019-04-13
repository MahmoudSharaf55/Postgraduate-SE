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
    <link rel="stylesheet" href="../css/style_search_icon.css">
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>

<body>
<%@include file="../header.jsp"%>
<form method="post" class="table-form"  style="overflow-y:scroll; height:100%; overflow-x: scroll; width:100%;" >
    <div class="titalForsertification">
        <%
            Doctor doctor= (Doctor) session.getAttribute("doctor");

            String department= doctor.getDoctordepartment();
            System.out.println("the value of depa is =" + department);

            int currentYear= Year.now().getValue();
            int lastYear=currentYear-1;


        %>
        <h3 class="text-center" > Data For All Student That Register In Diploma For Year <%=lastYear%>/<%=currentYear%>  ...  Department / <%=department%> </h3>
    </div>
    <table  class="table" style="overflow-y:scroll; height:100%; overflow-x: scroll; width:100%;" >
        <thead>
        <tr class="tr tableUpdate">
            <th scope="col" class="text-center" >ID</th>
            <th scope="col" class="text-center" >Full Name</th>
            <th scope="col" class="text-center">Bachelor In</th>
            <th scope="col" class="text-center">Graduation Source</th>
            <th scope="col" class="text-center">Graduation Year</th>
            <th scope="col" class="text-center">Overall Market</th>
            <th scope="col" class="text-center">Overall Rate</th>
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
                PreparedStatement preparedStatement=c.prepareStatement("select s_id, name, dob, job,b_graduate_source, recruitment_postion, bachelor_in, b_overall_rate, b_overall_mark, b_graduate_year  from student_form   where  paper !='In Reviewing' and status='Waiting' and form_type=1 and dept=? ;");
                preparedStatement.setString(1,department);
                ResultSet resultSet=preparedStatement.executeQuery();
                while (resultSet.next()) {

        %>
        <tr class="teColor">
            <td class="text-center" ><%=resultSet.getString("s_id")%></td>
            <td class="text-center" ><%=resultSet.getString("name")%></td>
            <td class="text-center"><%=resultSet.getString("bachelor_in")%></td>
            <td class="text-center"><%=resultSet.getString("b_graduate_source")%></td>
            <td class="text-center"><%=resultSet.getString("b_graduate_year")%> </td>
            <td class="text-center"><%=resultSet.getString("b_overall_mark")%></td>
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