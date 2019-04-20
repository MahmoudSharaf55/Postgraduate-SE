<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-17
  Time: 7:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Model.Doctor" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>
<%@ page import="Model.Staff" %>
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
    Staff staff=(Staff) session.getAttribute("staff");

    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String password= CipherEncryptionAndDecryption.encrypt(request.getParameter("password"),"nerds");

    if (name==null ||password==null|| email==null || name.isEmpty()||password.isEmpty()||email.isEmpty()){
        request.getRequestDispatcher("../ErrorPages/updateProfile.jsp").include(request, response);
        request.getRequestDispatcher("staff_homePage.jsp").include(request, response);
    }
    else {
        Connection c = DBConnection.getConnection();
        try {
            PreparedStatement per = c.prepareStatement("update staff set username=? , email=? ,password=? where id=? ");
            per.setString(1, name);
            per.setString(2, email);
            per.setString(3, password);
            per.setInt(4, staff.getId());
            per.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        staff.setStuffEmail(email);
        staff.setStuffName(name);
        staff.setStuffPassword(password);
        session.setAttribute("staff",staff);
        request.getRequestDispatcher("staff_homePage.jsp").forward(request, response);

    }
%>