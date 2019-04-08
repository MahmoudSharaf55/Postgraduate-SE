<%@ page import="Model.Doctor" %><%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-08
  Time: 11:54 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no, width=device-width">
    <title>Doctor Home Page </title>

    <link rel="stylesheet" href="../bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrapv4/animate.css">
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <link rel="stylesheet" href="../css/style_Login.css">
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





<article style="height: 500px">
    <section class="store-and-continue">
        <div class="container">
            <h3>Welcome M.$edky
            </h3>
            <hr>
            <h4 class="text-center">The Initial page</h4>

        </div>
    </section>

</article>


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