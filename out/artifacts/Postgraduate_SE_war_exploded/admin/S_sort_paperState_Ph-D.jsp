<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-11
  Time: 12:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.*" %>
<%@ page pageEncoding="UTF-8" %>


<%
    request.setCharacterEncoding("UTF-8");
    String idform=request.getParameter("id");
    int id=Integer.valueOf(idform);
    String state=request.getParameter("state");
    String doctormail=request.getParameter("email");
    System.out.println("the id is =="+id+"    the stat is =="+state +"     the email is eqal=="+doctormail);

    Connection c =DBConnection.getConnection();

    try {
        PreparedStatement per=c.prepareStatement("update student_form set  doctor_mail=? where s_id=? and form_type = ?");
        per.setString(1,doctormail);
        per.setInt(2,id);
        per.setString(3,"1");

        per.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    request.getRequestDispatcher("general_table_ph.d.jsp").forward(request, response);


%>