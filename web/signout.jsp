<%--
  Created by IntelliJ IDEA.
  User: Ma7MOoOD SHaRaF
  Date: 15/04/2019
  Time: 12:33 ص
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>
