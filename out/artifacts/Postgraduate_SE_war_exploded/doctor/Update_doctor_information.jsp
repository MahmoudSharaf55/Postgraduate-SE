<%@ page import="java.sql.Connection" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Model.Doctor" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>
<%@ page pageEncoding="UTF-8" %>
<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-17
  Time: 5:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    Doctor doctor=(Doctor) session.getAttribute("doctor");
    String Dname=doctor.getDoctorName();
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String password= CipherEncryptionAndDecryption.encrypt(request.getParameter("password"),"nerds");

    if (name==null ||password==null|| email==null || name.isEmpty()||password.isEmpty()||email.isEmpty()){

        request.getRequestDispatcher("../ErrorPages/updateProfile.jsp").include(request, response);
    }
    else {

        Connection c = DBConnection.getConnection();

        try {
            PreparedStatement per = c.prepareStatement("update doctor set username=? , email=? ,password=? where username=? ");
            per.setString(1, name);
            per.setString(2, email);
            per.setString(3, password);
            per.setString(4, Dname);
            per.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("doctor_homePage.jsp").forward(request, response);

    }
%>