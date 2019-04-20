<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-16
  Time: 8:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Model.Doctor" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>
<%@ page import="Model.Admin" %>
<%@ page pageEncoding="UTF-8" %>

<%
    //session
    request.setCharacterEncoding("UTF-8");
    String fName=request.getParameter("fname");
    String email=request.getParameter("email");
    String phone=request.getParameter("phone");
    String password= CipherEncryptionAndDecryption.encrypt(request.getParameter("password"),"nerds");

%>
<% int flag=0;
    Connection c = DBConnection.getConnection();

    Statement statement = c.createStatement();
    ResultSet resultSet = statement.executeQuery("select email from admin;");
    while (resultSet.next()) {
        if (resultSet.getString("email").equals(email)){
            flag = 1;
            break;
        }
    }
    if(flag==0){
        try {
            PreparedStatement per=c.prepareStatement("insert into admin (username,email,phone,password) values(?,?,?,?)");
            per.setString(1,fName);
            per.setString(2,email);
            per.setString(3,phone);
            per.setString(4,password);
            per.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        Admin admin=new Admin();
        admin.setAdminName(fName);
        admin.setAdmainMail(email);
        admin.setAdminPhone(phone);
        admin.setAdmainPassword(password);
        PreparedStatement ps2 = DBConnection.getConnection().prepareStatement("select id from admin where email = ?");
        ps2.setString(1,email);
        ResultSet resultSet1 = ps2.executeQuery();
        resultSet1.next();
        admin.setId(resultSet1.getInt("id"));
        session.setAttribute("admin",admin);
        session.setAttribute("currentUser","admin");
        request.getRequestDispatcher("admin_home.jsp");
        request.getServletContext().setAttribute("profile","/admin/admin_home.jsp");
        response.sendRedirect("admin_home.jsp");
    }
    else  {
        request.getRequestDispatcher("admin_login.jsp").include(request, response);
        request.getRequestDispatcher("../ErrorPages/EmailOrPasswordError.jsp").include(request, response);
        flag =0;
    }


%>
