<%--
  Created by IntelliJ IDEA.
    Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-08
  Time: 10:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no, width=device-width">
    <title>Staff Registration</title>

    <!------ Include the above in your HEAD tag ---------->
    <link rel="stylesheet" href="../bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrapv4/animate.css">
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <link rel="stylesheet" href="../css/style_signup.css">
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>

<body>
<%@include file="../header.jsp"%>
<div class="limiter">


    <div class="card bg-light">
        <div class="container-login100">
            <div class="wrap-login100">


                <form class="login100-form needs-validation" novalidate action="implement_signup_staff.jsp">
                	<span class="login100-form-title">
						Staff Registration
					</span>
                    <hr>
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                        </div>
                        <input name="fname" class="form-control" placeholder="Full name" type="text" required>
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                        </div>
                        <input name="email" class="form-control" placeholder="Email address" type="email" required>
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>

                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
                        </div>

                        <input name="phone" class="form-control" placeholder="Phone number" type="text" required>
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                        </div>
                        <input name="password" class="form-control" placeholder="Create password" type="password" required>
                        <div class="invalid-feedback">
                            <b>&Cross; Use 6 or more characters</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div> <!-- form-group// -->

                    <!-- form-group// -->
                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">
                            Create Account
                        </button>
                    </div>
                </form>

            </div>
        </div>
    </div>

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