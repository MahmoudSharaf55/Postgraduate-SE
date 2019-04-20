<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-16
  Time: 8:28 PM
  To change this template use File | Settings | File Templates.
--%>
%@ page import="Model.Doctor" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Model.Admin" %>
<%@ page pageEncoding="UTF-8" %>

<%
    request.setCharacterEncoding("UTF-8");
    String email= request.getParameter("email");
    String password= CipherEncryptionAndDecryption.encrypt(request.getParameter("password"),"nerds");
    int flag=0;
    Connection c = DBConnection.getConnection();

    Statement statement = c.createStatement();
    ResultSet resultSet = statement.executeQuery("select * from admin ;");
    while (resultSet.next()) {
        if (resultSet.getString("email").equals(email)&&resultSet.getString("password").equals(password)){
            flag = 1;
            break;
        }
    }
    if(flag==1){
        Admin admin=new Admin();
        admin.setAdminName(resultSet.getString("username"));
        admin.setAdmainMail(resultSet.getString("email"));
        admin.setAdminPhone(resultSet.getString("phone"));
        admin.setAdmainPassword(resultSet.getNString("password"));
        admin.setId(resultSet.getInt("id"));
        session.setAttribute("admin",admin);
        session.setAttribute("currentUser","admin");
        request.getServletContext().setAttribute("profile","/admin/admin_home.jsp");
        response.sendRedirect("admin_home.jsp");
    }

    else{

        request.getRequestDispatcher("admin_login.jsp").include(request, response);
        request.getRequestDispatcher("../ErrorPages/EmailOrPasswordError.jsp").include(request, response);
        flag =0;
    }


%>
