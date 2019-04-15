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
    <title>M.A. Postgraduate</title>
    <link rel="stylesheet" href="../bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrapv4/animate.css">
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>
<body>
<%@include file="../header.jsp"%>
<section class="form-registration">
    <div class="container">
        <h3>Magister Registration Form</h3>
        <hr>
        <h4>Menofia University</h4>
        <h6>Faculty Of Computers And Information</h6>
        <form action="form_filter.jsp" method="post" class="form-control border-primary my-2 needs-validation" novalidate>
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
                               placeholder="Department" data-toggle="tooltip" data-placement="bottom" title="القسم" name="dept">
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="round">Enroll Round</label>
                        <input id="round" type="text" class="form-control bg-light" required
                               placeholder="Enroll Round" data-toggle="tooltip" data-placement="bottom" title="دورة القيد" name="round">
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="For-Year">For Year</label>
                        <input id="For-Year" type="text" class="form-control bg-light" required name="for_year"
                               placeholder="For Year" data-toggle="tooltip" data-placement="bottom" title="للعام">
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
                               placeholder="Full Name" data-toggle="tooltip" data-placement="bottom" title="الاسم كامل" name="name">
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
                                   placeholder="Date Of Birth" data-toggle="tooltip" data-placement="bottom" name="dob"
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
                            <input id="country" type="text" class="form-control bg-light" required name="country"
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
                            <input id="city" type="text" class="form-control bg-light" required name="city"
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
                            <input id="governorate" type="text" class="form-control bg-light" required name="governorate"
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
                            <input id="Nationality" type="text" class="form-control bg-light" required name="nationality"
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
                            <input id="religion" type="text" class="form-control bg-light" required name="religion"
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
                            <input id="national-id" type="number" class="form-control bg-light" required name="card_id"
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
                            <input id="card-source" type="text" class="form-control bg-light" required name="card_src"
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
                            <input id="release-date" type="date" class="form-control bg-light" required name="card_date"
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
                               placeholder="Position of recruitment" data-toggle="tooltip" data-placement="bottom" name="army"
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
                            <input id="job" type="text" class="form-control bg-light" required name="job"
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
                            <input id="job-address" type="text" class="form-control bg-light" required name="job_address"
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
                            <input id="Phone" type="tel" class="form-control bg-light" required name="phone"
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
                            <input id="bachelor" type="text" class="form-control bg-light" required name="b_in"
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
                            <input id="Role" type="text" class="form-control bg-light" required name="b_role"
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
                            <input id="gpa" type="text" class="form-control bg-light" required name="b_rate"
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
                            <input id="dept" type="text" class="form-control bg-light" required name="b_dept"
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
                            <input id="sp-rate" type="text" class="form-control bg-light" required name="b_sp_rate"
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
                            <label for="mark">Overall Mark</label>
                            <input id="mark" type="number" class="form-control bg-light" required name="b_mark"
                                   placeholder="Overall Mark" data-toggle="tooltip" data-placement="bottom"
                                   title="المجموع التراكمى">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="University">Graduation Source</label>
                            <input id="University" type="text" class="form-control bg-light" required name="graduation_src"
                                   placeholder="Graduation Source" data-toggle="tooltip" data-placement="bottom"
                                   title="جهة التخرج">
                            <div class="invalid-feedback">
                                <b>&Cross; Empty Field</b>
                            </div>
                            <div class="valid-feedback">
                                <b>&check; Ok</b>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="diploma">Graduation Year</label>
                        <input id="diploma" type="number" class="form-control bg-light" required name="graduation_year"
                               placeholder="Graduation Year" data-toggle="tooltip" data-placement="bottom"
                               title="سنة التخرج">
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="d-dept">Science Department For Enrolling</label>
                        <input id="d-dept" type="text" class="form-control bg-light" required name="enrolling_dept"
                               placeholder="Science Department" data-toggle="tooltip" data-placement="bottom"
                               title="القسم العلمى المتقدم للقيد فيه">
                        <div class="invalid-feedback">
                            <b>&Cross; Empty Field</b>
                        </div>
                        <div class="valid-feedback">
                            <b>&check; Ok</b>
                        </div>
                    </div>
                    <input type="hidden" name="form_type" value="3">
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
