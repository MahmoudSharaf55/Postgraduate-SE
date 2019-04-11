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

<form method="post" class="table-form"  style="overflow-y:scroll; height:100%; overflow-x: scroll; width:100%;" >
    <div class="titalForsertification">
        <h3 class="text-center" > Data For All Student That Register In Master And All Paper Accepted By Stuff</h3>
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
                ResultSet resultSet = statement.executeQuery("select f.id, f.name, f.dob, f.country, f.city, f.governorate, f.job, f.recruitment_postion, f.bachelor_in, f.b_overall_rate, f.b_faculty , s.paper , s.id , s.status, s.form from student_form as f  inner join student as s on s.id=f.id and  s.paper !='In Reviewing' and s.status='Waiting' and s.form=3 ;");
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
    <form action="D_sort_stateFor_master.jsp" method="post" >
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