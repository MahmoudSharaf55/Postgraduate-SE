<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-05-06
  Time: 9:54 PM
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
    <link rel="stylesheet" href="../css/style_search_icon.css">
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>

<body>
<%@include file="../header.jsp"%>
<form method="post" class="table-form"  style="overflow-y:scroll; height:100%; overflow-x: scroll; width:100%;" >
    <div class="titalForsertification">
        <% request.setCharacterEncoding("UTF-8");
            Doctor doctor= (Doctor) session.getAttribute("doctor");

            String department= doctor.getDoctordepartment();
            String email=doctor.getDoctorEmail();
            System.out.println("the value of depa is =" + department);
            System.out.println("the doctor mail " + email);

            int currentYear= Year.now().getValue();
            int lastYear=currentYear-1;


        %>
        <h3 class="text-center" > Subject For  Student That Register In Diploma For Year <%=lastYear%>/<%=currentYear%>  ...  Department / <%=department%> </h3>
    </div>
    <table  class="table" style="overflow-y:scroll; height:100%; overflow-x: scroll; width:100%;" >
        <thead>
        <tr class="tr tableUpdate">
            <th scope="col" class="text-center" >Student ID</th>
            <th scope="col" class="text-center" >Code</th>
            <th scope="col" class="text-center" >Subject Name</th>
            <th scope="col" class="text-center">Count For subject</th>



        </tr>
        </thead>
        <tbody style="overflow-y:scroll; height:100%; overflow-x: scroll; width: 100% ">


        <% request.setCharacterEncoding("UTF-8");
            String id=request.getParameter("ema");

            try
            {
                Connection c = DBConnection.getConnection();
                PreparedStatement preparedStatement=c.prepareStatement("select s.name,s.code,f.count,f.stu_id from subject as s inner join stu_sub as f where s.id=f.sub_id and f.stu_id=?");
                preparedStatement.setString(1,id);
                ResultSet resultSet=preparedStatement.executeQuery();
                while (resultSet.next()) {

        %>
        <tr class="teColor">
            <td class="text-center" ><%=resultSet.getString("stu_id")%></td>
            <td class="text-center" ><%=resultSet.getString("code")%></td>
            <td class="text-center" ><%=resultSet.getString("name")%></td>
            <td class="text-center" ><%=resultSet.getString("count")%></td>

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
    <h5 class="text-center">If Subject Correct Press on Accept Otherwise Press on Delete </h5><br>
    <form action="accept_subject.jsp" method="post" >
        <div class="otuCenter">
            <input class="idchangestate " type="text" name="id" placeholder="ID TO Accept" required>
            <button class="login100-form-btn btnChangestat ">
                Accept Subject
            </button>
        </div>


    </form>
    <form action="delete_subject.jsp" method="post" >
        <div class="otuCenter">
            <input class="idchangestate " type="text" name="id" placeholder="ID TO Delete" required>
            <button class="login100-form-btn btnChangestat ">
                Delete Subject
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