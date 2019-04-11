<%@ page import="java.sql.Connection" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Model.Stuff" %>
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
    <link rel="icon" href="../assets/postgraduate.png">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark py-0">
    <a class="navbar-brand" href="../index.jsp"><img src="../assets/postgraduate.png" width="90" height="60"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor03">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="../index.jsp">Home</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Doctor</a>
                <div class="dropdown-menu bg-secondary" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                    <a class="dropdown-item" href="signup_doctor.jsp">Register</a>
                    <a class="dropdown-item" href="login_doctor.jsp">Login</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Student</a>
                <div class="dropdown-menu bg-secondary" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                    <a class="dropdown-item" href="../student/signup_student.jsp">Register</a>
                    <a class="dropdown-item" href="../student/login_Student.jsp">Login</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Staff</a>
                <div class="dropdown-menu bg-secondary" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                    <a class="dropdown-item" href="../staff/signup_staff.jsp">Register</a>
                    <a class="dropdown-item" href="../staff/login_staff.jsp">Login</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About</a>
            </li>
        </ul>
    </div>
</nav>



<%!
String id, dept, id_number, name, dob, country, city, governorate, nationality, religion, national_id, national_source, national_release, recruitment_postion, job, job_address, phone, bachelor_in, b_role, b_overall_rate, b_dept, b_special_rate, b_faculty, b_university, postgraduate_in, p_role, p_special, p_rate, p_faculty, p_university, enroll_dept;

%>
<%
    String name;
String id=request.getParameter("ema");
int search_id=Integer.parseInt(id);
    Connection connection = DBConnection.getConnection();
     PreparedStatement pre=connection.prepareStatement("select id,name  from student_form where id=?");
     pre.setInt(1,search_id);
    ResultSet result = pre.executeQuery();
    while (result.next()) {
        name=result.getNString("name");

%>

<form method="post" class="table-form "  style="overflow-y:scroll; height:100%;">
    <div class="titalForsertification">
        <h3 class="text-center" > All Data In Deatils  about <%= name %> </h3><%}%>
    </div>
    <table  class="table clcrdata" style="overflow-y:scroll; "  >
        <thead >
        <tr class="tr">
            <th scope="col" class="text-center" >Department</th>
            <th scope="col" class="text-center">ID_Number</th>
            <th scope="col" class="text-center">Name</th>
            <th scope="col" class="text-center">Date_Of_Bearth</th>
            <th scope="col" class="text-center">Country</th>
            <th scope="col" class="text-center">City</th>

        </tr>
        </thead>
        <tbody style="overflow-y:scroll;">
        <%

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

            <td class="text-center"><%= resultSet.getString("dept")%> </td>
            <td class="text-center" ><%=resultSet.getString("id_number")%></td>
            <td class="text-center"><%=resultSet.getString("name")%></td>
            <td class="text-center"><%=resultSet.getString("dob")%></td>
            <td class="text-center"><%=resultSet.getString("country")%></td>
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
    <form action="S_sort_state_diploma.jsp" method="post" >
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




<footer class="footer">
    <div class="container">
        <div class="subscribe">
            <h3>Subscribe to get latest news</h3>
            <div class="input">
                <input type="email" placeholder="Enter Your Email.." id="subscribe-email">
                <a href="javascript:void(0)" onclick="sendSubscribe('subscribe-email')"><i
                        class="far fa-paper-plane"></i></a>
            </div>
        </div>
        <div class="links">
            <div class="services">
                <h4>Our Services</h4>
                <span><i class="fas fa-chevron-right"></i><a href="#">Faculty Members Services</a></span>
                <span><i class="fas fa-chevron-right"></i><a href="#">Bachelor Students Services</a></span>
                <span><i class="fas fa-chevron-right"></i><a href="#">Postgraduate Students Services</a></span>
                <span><i class="fas fa-chevron-right"></i><a href="#">Postgraduate Registration</a></span>
                <span><i class="fas fa-chevron-right"></i><a href="#">Technical Support</a></span>
                <span><i class="fas fa-chevron-right"></i><a href="#">Suggestions Support</a></span>
            </div>
            <div class="information">
                <h4>information</h4>
                <span><i class="fas fa-chevron-right"></i><a href="#">About Us</a></span>
                <span><i class="fas fa-chevron-right"></i><a href="#">Contact Us</a></span>
                <span><i class="fas fa-chevron-right"></i><a href="#">FAQ?</a></span>
                <span><i class="fas fa-chevron-right"></i><a href="#">Site Map</a></span>
                <span><i class="fas fa-chevron-right"></i><a href="#">Advanced Search</a></span>
                <span><i class="fas fa-chevron-right"></i><a href="#">Get Help</a></span>
            </div>
            <div class="contact-info">
                <h4>contact info</h4>
                <span><i class="fas fa-home"></i>&nbsp;&nbsp;Shibin El-Kom, Menofia, EG</span>
                <span><i class="fas fa-phone"></i>&nbsp;&nbsp;+1 720-200-3000</span>
                <span><i class="fas fa-phone"></i>&nbsp;&nbsp;+1 720-200-4200</span>
                <span><i class="far fa-envelope"></i>&nbsp;&nbsp;itunit@ci.menofia.edu.eg</span>
            </div>
        </div>
        <article class="copy-rights">
            <div class="social">
                <p>&copy; 2019 FCI MU. All Rights Reserved. Developed by Nerds Team.</p>
                <div class="social-links">
                    <a href="https://www.facebook.com"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a>
                    <a href="https://www.linkedin.com"><i class="fab fa-linkedin-in"></i></a>
                    <a href="https://plus.google.com"><i class="fab fa-google-plus-g"></i></a>
                    <a href="https://www.pinterest.com"><i class="fab fa-pinterest-p"></i></a>
                </div>
            </div>
        </article>
        <div id="snackbar"></div>
    </div>
</footer>
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