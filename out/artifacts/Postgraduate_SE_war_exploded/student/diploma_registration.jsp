<%--
  Created by IntelliJ IDEA.
  User: Ma7MOoOD SHaRaF
  Date: 05/04/2019
  Time: 12:10 ص
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no, width=device-width">
    <title>Diploma Postgraduate</title>
    <link rel="stylesheet" href="../bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrapv4/animate.css">
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <link rel="stylesheet" href="../css/stylesheet.css">
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
                    <a class="dropdown-item" href="../doctor/signup_doctor.jsp">Register</a>
                    <a class="dropdown-item" href="../doctor/login_doctor.jsp">Login</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Student</a>
                <div class="dropdown-menu bg-secondary" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                    <a class="dropdown-item" href="signup_student.jsp">Register</a>
                    <a class="dropdown-item" href="login_Student.jsp">Login</a>
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
<section class="form-registration">
    <div class="container">
        <h3>Diploma Registration Form</h3>
        <hr>
        <h4>Menofia University</h4>
        <h6>Faculty Of Computers And Information</h6>
        <form action="#" method="post" class="form-control border-primary my-2 needs-validation" novalidate>
            <ul class="nav nav-tabs border-primary">
                <li class="nav-item bg-light">
                    <a class="nav-link active" data-toggle="tab" href="#personal-info">Personal Info.</a>
                </li>
                <li class="nav-item bg-light">
                    <a class="nav-link" data-toggle="tab" href="#family-Info">Family Info.</a>
                </li>
                <li class="nav-item bg-light">
                    <a class="nav-link" data-toggle="tab" href="#faculty-info">Faculty Info.</a>
                </li>
            </ul>
            <div id="myTabContent" class="tab-content p-3">
                <div class="tab-pane fade active show" id="personal-info">
                    <div class="form-group">
                        <label for="depart">Department</label>
                        <input id="depart" type="text" class="form-control bg-light" required
                               placeholder="Department" data-toggle="tooltip" data-placement="bottom" title="القسم">
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="id-number">ID Number</label>
                        <input id="id-number" type="number" class="form-control bg-light" required
                               placeholder="ID Number" data-toggle="tooltip" data-placement="bottom" title="رقم القيد">
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="family-Info">
                    <div class="form-group">
                        <label for="full-name">Full Name</label>
                        <input id="full-name" type="text" class="form-control bg-light" required
                               placeholder="Full Name" data-toggle="tooltip" data-placement="bottom" title="الاسم كامل">
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-3">
                            <label for="dob">Date Of Birth</label>
                            <input id="dob" type="date" class="form-control bg-light" required
                                   placeholder="Date Of Birth" data-toggle="tooltip" data-placement="bottom"
                                   title="تاريخ الميلاد">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="country">Country</label>
                            <input id="country" type="text" class="form-control bg-light" required
                                   placeholder="Country" data-toggle="tooltip" data-placement="bottom" title="قرية">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="city">City</label>
                            <input id="city" type="text" class="form-control bg-light" required
                                   placeholder="City" data-toggle="tooltip" data-placement="bottom" title="مركز">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="governorate">Governorate</label>
                            <input id="governorate" type="text" class="form-control bg-light" required
                                   placeholder="Governorate" data-toggle="tooltip" data-placement="bottom"
                                   title="محافظة">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="Nationality">Nationality</label>
                            <input id="Nationality" type="text" class="form-control bg-light" required
                                   placeholder="Nationality" data-toggle="tooltip" data-placement="bottom"
                                   title="الجنسية">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="religion">Religion</label>
                            <input id="religion" type="text" class="form-control bg-light" required
                                   placeholder="religion" data-toggle="tooltip" data-placement="bottom" title="الديانة">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="national-id">National ID</label>
                            <input id="national-id" type="number" class="form-control bg-light" required
                                   placeholder="National ID" data-toggle="tooltip" data-placement="bottom"
                                   title="رقم البطاقة">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="card-source">Issuing Source</label>
                            <input id="card-source" type="text" class="form-control bg-light" required
                                   placeholder="Issuing Source" data-toggle="tooltip" data-placement="bottom"
                                   title="جهة اصدار البطاقة">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="release-date">Release Date</label>
                            <input id="release-date" type="date" class="form-control bg-light" required
                                   placeholder="Release Date" data-toggle="tooltip" data-placement="bottom"
                                   title="تاريخ اصدار البطاقة">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="army">Position of recruitment</label>
                        <input id="army" type="text" class="form-control bg-light" required
                               placeholder="Position of recruitment" data-toggle="tooltip" data-placement="bottom"
                               title="الموقف من التجنيد">
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="job">Job</label>
                            <input id="job" type="text" class="form-control bg-light" required
                                   placeholder="Job" data-toggle="tooltip" data-placement="bottom"
                                   title="الوظيفة">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="job-address">ِJob Address</label>
                            <input id="job-address" type="text" class="form-control bg-light" required
                                   placeholder="Job Address" data-toggle="tooltip" data-placement="bottom"
                                   title="العنوان">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="Phone">Phone</label>
                            <input id="Phone" type="tel" class="form-control bg-light" required
                                   placeholder="Phone" data-toggle="tooltip" data-placement="bottom"
                                   title="رقم التليفون">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="faculty-info">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="bachelor">Bachelor In</label>
                            <input id="bachelor" type="text" class="form-control bg-light" required
                                   placeholder="Bachelor" data-toggle="tooltip" data-placement="bottom"
                                   title="بكالوريوس فى">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="Role">Role</label>
                            <input id="Role" type="text" class="form-control bg-light" required
                                   placeholder="Role" data-toggle="tooltip" data-placement="bottom"
                                   title="دور">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="gpa">Overall Rate</label>
                            <input id="gpa" type="text" class="form-control bg-light" required
                                   placeholder="Overall Rate" data-toggle="tooltip" data-placement="bottom"
                                   title="تقدير عام">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="dept">Department</label>
                            <input id="dept" type="text" class="form-control bg-light" required
                                   placeholder="Department" data-toggle="tooltip" data-placement="bottom"
                                   title="شعبه">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="sp-rate">Specialization Rate</label>
                            <input id="sp-rate" type="text" class="form-control bg-light" required
                                   placeholder="Specialization Rate" data-toggle="tooltip" data-placement="bottom"
                                   title="تقدير التخصص">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="Faculty">Faculty</label>
                            <input id="Faculty" type="text" class="form-control bg-light" required
                                   placeholder="Faculty" data-toggle="tooltip" data-placement="bottom"
                                   title="من كلية">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="University">University</label>
                            <input id="University" type="text" class="form-control bg-light" required
                                   placeholder="University" data-toggle="tooltip" data-placement="bottom"
                                   title="جامعة">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="diploma">Postgraduate Diploma In</label>
                            <input id="diploma" type="text" class="form-control bg-light" required
                                   placeholder="Postgraduate Diploma In" data-toggle="tooltip" data-placement="bottom"
                                   title="دبلوم الدراسات العليا فى">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="d-Role">Role</label>
                            <input id="d-Role" type="text" class="form-control bg-light" required
                                   placeholder="Role" data-toggle="tooltip" data-placement="bottom"
                                   title="دور">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="d-sp">Specialization</label>
                            <input id="d-sp" type="text" class="form-control bg-light" required
                                   placeholder="Specialization Rate" data-toggle="tooltip" data-placement="bottom"
                                   title="التخصص">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="d-gpa">Rating</label>
                            <input id="d-gpa" type="text" class="form-control bg-light" required
                                   placeholder="Overall Rate" data-toggle="tooltip" data-placement="bottom"
                                   title="بتقدير">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="d-Faculty">Faculty</label>
                            <input id="d-Faculty" type="text" class="form-control bg-light" required
                                   placeholder="Faculty" data-toggle="tooltip" data-placement="bottom"
                                   title="من كلية">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="d-University">University</label>
                            <input id="d-University" type="text" class="form-control bg-light" required
                                   placeholder="University" data-toggle="tooltip" data-placement="bottom"
                                   title="جامعة">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="d-dept">Science Department For Enrolling</label>
                        <input id="d-dept" type="text" class="form-control bg-light" required
                               placeholder="Science Department" data-toggle="tooltip" data-placement="bottom"
                               title="القسم العلمى المتقدم للقيد فيه">
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="terms" required>
                            <label class="custom-control-label" for="terms">Agree On Terms</label>
                            <div class="invalid-feedback">
                                <b>&Cross; Select Check Box</b>
                            </div>
                        </div>
                    </div>
                    <input type="submit" value="Register" class="btn btn-outline-primary w-100">
                </div>
            </div>
        </form>
    </div>
</section>
<footer class="footer">
    <div class="container">
        <div class="subscribe">
            <h3>Subscribe to our newsletter</h3>
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
