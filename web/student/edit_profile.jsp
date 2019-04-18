<%@ page import="Model.Student" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %><%--
  Created by IntelliJ IDEA.
  User: Ma7MOoOD SHaRaF
  Date: 18/04/2019
  Time: 10:19 م
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    Student student = (Student) session.getAttribute("currentStudent");
    PreparedStatement ps = null;
    try {
        ps = DBConnection.getConnection().prepareStatement("update  student set username = ? , email = ? , password = ? where id = ?");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, CipherEncryptionAndDecryption.encrypt(password, "nerds"));
        ps.setInt(4, student.getId());
        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    student.setUsername(name);
    student.setEmail(email);
    student.setPassword(CipherEncryptionAndDecryption.encrypt(password,"nerds"));
    response.sendRedirect("student_dashboard.jsp");
%>
