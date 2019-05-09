<%@ page import="Model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Ma7MOoOD SHaRaF
  Date: 04/04/2019
  Time: 11:51 م
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no, width=device-width">
    <title>FCI Postgraduate</title>
    <link rel="stylesheet" href="bootstrapv4/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrapv4/animate.css">
    <link rel="icon" href="assets/postgraduate.png">
    <link rel="stylesheet" href="fontawesome/css/all.css">
    <link rel="stylesheet" href="css/stylesheet.css">
</head>
<body>
<%@include file="header.jsp"%>
<article class="my-3">
<%
    session.setMaxInactiveInterval(-1);
%>
    <div class="card bg-light m-3 mx-5 text-right">
        <div class="card-header">نشأة الكليه</div>
        <div class="card-body">
            <p class="card-text">تتجه جامعة المنوفية الى استكمال البنية الأساسيه للجامعه و من هذا المنطلق اتجهت الجامعة الى تدعيم دراسة الحاسبات و تكنولوجيا المعلومات بها من خلال انشاء كلية الحاسبات و المعلومات لسد حاجة ملحه في النطاق الجغرافي الذي يمتد الى نشاط الكلية و خدماته و لقد صدر القرار الجمهوري رقم 292 لسنه 2001 و المتضمن بند(18 )انشاء كلية الحاسبات و المعلومات - جامعة المنوفية على ان يكون مقرها مدينة شبين الكوم </p>
        </div>
    </div>
    <div class="card bg-light m-3 mx-5 text-right">
        <div class="card-header">رسالة الكليه</div>
        <div class="card-body">
            <p class="card-text">تتلخص رسالة الكلية في اعداد خريج متميز في مجالات علوم الحاسب و نظم و تكنولوجيا المعلومات ودعم القرار قادر على توظيف مكتسباته العلمية و مهارته العمليه لتلبيه متطلبات سوق العمل كما تهدف الى انتاج بحث علمي راقي و القيام بدورها المجتمعي من خلال تقديم استشارات فنية ودعم تقني </p>
        </div>
    </div>
    <div class="card bg-light m-3 mx-5 text-right">
        <div class="card-header">رؤية الكليه</div>
        <div class="card-body">
            <p class="card-text">تتطلع كلية الحاسبات و المعلومات جامعة المنوفية الى اعداد متخصصين في علوم الحاسب و تكنولوجيا المعلومات المؤهلين بالاسس النظريه و العلمية بما يمكنهم من المنافسه المحليه و العالمية فى هذا التخخصص </p>
        </div>
    </div>
</article>

<%@include file="footer.jsp"%>
<script src="bootstrapv4/jquery-3.3.1.slim.min.js" type="text/javascript"></script>
<script src="bootstrapv4/popper.min.js" type="text/javascript"></script>
<script src="bootstrapv4/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
