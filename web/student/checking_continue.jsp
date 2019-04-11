<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="Model.Student" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: Ma7MOoOD SHaRaF
  Date: 05/04/2019
  Time: 12:09 ص
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no, width=device-width">
    <title>Student Registration</title>
    <!------ Include the above in your HEAD tag ---------->
    <link rel="stylesheet" href="../bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrapv4/animate.css">
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <link rel="icon" href="../assets/postgraduate.png">
    <link rel="stylesheet" href="../css/stylesheet.css">
</head>

<body>
<%@include file="../header.jsp"%>
<%!
    String name;
    String email;
    String certificate;
    String password;
    PreparedStatement ps;
    PreparedStatement ps1;
    ResultSet resultSet;
    boolean flag = false;
    Student student;
%>
<%
    name = request.getParameter("name");
    email = request.getParameter("email");
    certificate = request.getParameter("certificate");
    password = request.getParameter("password");
    try {
        ps1 = DBConnection.getConnection().prepareStatement("select email from student");
        resultSet = ps1.executeQuery();
        while (resultSet.next()) {
            if (resultSet.getString("email").equals(email)) {
                flag = true;
                break;
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    if (certificate == null || name.equals("") || email.equals("") || password.equals("")) {
        request.getRequestDispatcher("signup_student.jsp").include(request, response);
        request.getRequestDispatcher("../ErrorPages/EmptyFieldError.jsp").include(request, response);
        flag = false;
%>
<%
} else if (flag) {
    request.getRequestDispatcher("signup_student.jsp").include(request, response);
    request.getRequestDispatcher("../ErrorPages/EmailError.jsp").include(request, response);
    flag = false;
} else {
%>
<div class="modal animated fadeIn" id="modalDemo" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered">
        <div class="loader">Loading...</div>
    </div>
</div>
<section class="store-and-continue">
    <div class="container">
        <h3>Welcome <%=name%>
        </h3>
        <hr>
        <h4 class="text-center">Almost Complete</h4>
        <h6 class="text-center pb-3">Fill Your Postgraduate Form</h6>
    </div>
</section>
<%
    password = CipherEncryptionAndDecryption.encrypt(password, "nerds");
    try {
        PreparedStatement ps = DBConnection.getConnection().prepareStatement("insert into student (username,email,form,password) value (?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, certificate);
        ps.setString(4, password);
        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    student = new Student(name , email , password , certificate);
    session.setAttribute("currentStudent" , student);
    if (certificate.equals("1")) {
%>
<script>
    setTimeout(function () {
        document.location = "Ph-D_registration.jsp";
    }, 2000);
</script>
<%
} else if (certificate.equals("2")) {
%>
<script>
    setTimeout(function () {
        document.location = "diploma_registration.jsp";
    }, 2000);
</script>
<%
} else if (certificate.equals("3")) {
%>
<script>
    setTimeout(function () {
        document.location = "master's_registration.jsp";
    }, 2000);
</script>
<%
        }
    }
%>
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
    $(document).ready(function () {
        // Show the Modal on load
        $("#modalDemo").modal("show");
    });
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })
</script>


</body>

</html>
