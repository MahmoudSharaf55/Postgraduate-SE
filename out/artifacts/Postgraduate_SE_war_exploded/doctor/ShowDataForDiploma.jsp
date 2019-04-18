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
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="stylesheet" href="../css/style_checkbox.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>

<body>
<%@include file="../header.jsp"%>
<form method="post" class="table-form"  style="overflow-y:scroll; height:100%; overflow-x: scroll; width:100%;" >
    <div class="titalForsertification">
        <%
            int currentYear= Year.now().getValue();
            int lastYear=currentYear-1;
        %>
        <h3 class="text-center" > Data For All Student That Register In Diploma For Year <%=lastYear%>/<%=currentYear%>   </h3>

<article style="height: auto">
            <div class="container">
                <div class="row text-center">
                    <form action="#" method="post">
                    <br>

                <div>
                    <label for="primary" class="btn btn-primary wid">ID  <input type="checkbox" id="primary" class="badgebox" name="check" value="ID "><span class="badge">&check;</span></label>
                    <label for="primary1" class="btn btn-primary wid">Department <input type="checkbox" id="primary1" class="badgebox" name="check" value="Department"><span class="badge">&check;</span></label>
                    <label for="primary2" class="btn btn-primary wid">Enroll Round <input type="checkbox" id="primary2" class="badgebox" name="check" value="Enroll Round"><span class="badge">&check;</span></label>
                    <label for="primary3" class="btn btn-primary wid">For Year<input type="checkbox" id="primary3" class="badgebox" name="check" value="For Year"><span class="badge">&check;</span></label>
                    <label for="primary4" class="btn btn-primary wid">Full Name<input type="checkbox" id="primary4" class="badgebox" name="check" value="Full Name"><span class="badge">&check;</span></label>
                    <label for="primary5" class="btn btn-primary wid">Date Of Birth<input type="checkbox" id="primary5" class="badgebox" name="check" value="Date Of Birth"><span class="badge">&check;</span></label>
                    <label for="primary6" class="btn btn-primary wid">Country<input type="checkbox" id="primary6" class="badgebox" name="check" value="Country"><span class="badge">&check;</span></label>
                    <label for="primary7" class="btn btn-primary wid">City<input type="checkbox" id="primary7" class="badgebox" name="check" value="City"><span class="badge">&check;</span></label>
                    <label for="primary8" class="btn btn-primary wid">Governorate <input type="checkbox" id="primary8" class="badgebox" name="check" value="Governorate"><span class="badge">&check;</span></label>
                    <label for="primary9" class="btn btn-primary wid">Nationality<input type="checkbox" id="primary9" class="badgebox" name="check" value="Nationality"><span class="badge">&check;</span></label>
                    <label for="primary10" class="btn btn-primary wid">Religion<input type="checkbox" id="primary10" class="badgebox" name="check" value="Religion"><span class="badge">&check;</span></label>
                    <label for="primary11" class="btn btn-primary wid">National ID<input type="checkbox" id="primary11" class="badgebox" name="check" value="National ID"><span class="badge">&check;</span></label>
                    <label for="primary12" class="btn btn-primary wid">Issuing Source<input type="checkbox" id="primary12" class="badgebox" name="check" value="ssuing Source"><span class="badge">&check;</span></label>
                    <label for="primary13" class="btn btn-primary wid">Release Date <input type="checkbox" id="primary13" class="badgebox" name="check" value="Release Date"><span class="badge">&check;</span></label>
                    <label for="primary14" class="btn btn-primary wid">Position of recruitment<input type="checkbox" id="primary14" class="badgebox" name="check" value="Position of recruitment"><span class="badge">&check;</span></label>
                    <label for="primary15" class="btn btn-primary wid">Job <input type="checkbox" id="primary15" class="badgebox" name="check" value="Job "><span class="badge">&check;</span></label>
                    <label for="primary16" class="btn btn-primary wid">Job Address <input type="checkbox" id="primary16" class="badgebox" name="check" value="Job Address"><span class="badge">&check;</span></label>
                    <label for="primary17" class="btn btn-primary wid">Phone<input type="checkbox" id="primary17" class="badgebox" name="check" value="Phone"><span class="badge">&check;</span></label>
                    <label for="primary18" class="btn btn-primary wid">Bachelor In<input type="checkbox" id="primary18" class="badgebox" name="check" value="Bachelor In"><span class="badge">&check;</span></label>
                    <label for="primary19" class="btn btn-primary wid">Role<input type="checkbox" id="primary19" class="badgebox" name="check" value="Role"><span class="badge">&check;</span></label>
                    <label for="primary20" class="btn btn-primary wid">Overall Rate<input type="checkbox" id="primary20" class="badgebox" name="check" value="Overall Rate"><span class="badge">&check;</span></label>
                    <label for="primary21" class="btn btn-primary wid">Department<input type="checkbox" id="primary21" class="badgebox" name="check" value="Department"><span class="badge">&check;</span></label>
                    <label for="primary22" class="btn btn-primary wid">Specialization Rate<input type="checkbox" id="primary22" class="badgebox" name="check" value="Specialization Rate"><span class="badge">&check;</span></label>
                    <label for="primary23" class="btn btn-primary wid">Overall Mark<input type="checkbox" id="primary23" class="badgebox" name="check" value="Overall Mark"><span class="badge">&check;</span></label>
                    <label for="primary24" class="btn btn-primary wid">Graduation Source<input type="checkbox" id="primary24" class="badgebox" name="check" value="Graduation Source"><span class="badge">&check;</span></label>
                    <label for="primary25" class="btn btn-primary wid">Graduation Year<input type="checkbox" id="primary25" class="badgebox" name="check" value="Graduation Year"><span class="badge">&check;</span></label>
                    <label for="primary26" class="btn btn-primary wid">Science Department For Enrolling<input type="checkbox" id="primary26" class="badgebox" name="check" value="Science Department For Enrolling"><span class="badge">&check;</span></label>

                 </div>

                 <div class="container-login100-form-btn backcolor">
                    <button class="login100-form-btn backcolor" type="submit">
                       Generate Table
                    </button>

                </div>
                    </form>
                    <br><br>
                </div>
            </div>
</article>
            <br>
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