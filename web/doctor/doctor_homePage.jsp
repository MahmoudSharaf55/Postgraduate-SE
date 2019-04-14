<%@ page import="Model.Doctor" %>
<%@ page pageEncoding="UTF-8" %>
<%--
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
    <link rel="stylesheet" href="../css/stylesheet.css">
    <link rel="stylesheet" href="../css/style_search_icon.css">
    <link rel="icon" href="../assets/postgraduate.png">
</head>

<body>
<%@include file="../header.jsp"%>

<%  request.setCharacterEncoding("UTF-8");
    Doctor doctor =(Doctor) session.getAttribute("doctor");
    System.out.println("the name is"+doctor.getDoctorName());

%>

<article style="height: 570px">



    <section class="store-and-continue">
        <div class="container">
            <h3>Welcome <%=doctor.getDoctorName()%>
            </h3>
            <hr>
            <h4 class="text-center">This Is  The Initial page </h4>
            <h5 class="text-center">Chose the buttom to show all data about every student </h5><br>
            <form action="D_tableFor_deploma.jsp">
                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" title="الطلاب قيد المراجعه فى الدبلوما">
                        Accept Student in Diploma
                    </button>
                </div>

            </form >

            <form action="ShowDataForDiploma.jsp">
                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" title="الطلاب المقبولين الدبلوما">
                        Show Student in Diploma
                    </button>
                </div>

            </form >

            <form action="D_tableForPh-D.jsp">

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" title="الطلاب قيد المراجعه فى الدكتوراه">
                          Accept Student in Ph_D
                    </button>
                </div>

            </form>
            <form action="ShowDataForPh-D.jsp">

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" title="الطلاب المقبولين فى الدكتوراه">
                        Show Student in Ph-D
                    </button>
                </div>

            </form>

            <form action="D_tableFor_Master.jsp">

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" title="الطلاب قيد المراجعه الماجستير">
                        Accept Student in Ph-Magestar
                    </button>
                </div>
            </form>

            <form action="ShowDataForMagestar.jsp">

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" title="الطلاب المقبولين فى الماجستير">
                        Show Student in Ph-Magestar
                    </button>
                </div>
            </form>

        </div>
    </section>

</article>
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