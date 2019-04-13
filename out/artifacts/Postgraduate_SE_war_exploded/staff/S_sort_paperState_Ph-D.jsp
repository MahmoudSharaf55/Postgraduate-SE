<%--
  Created by IntelliJ IDEA.
  User: M.$edky
  Date: 2019-04-11
  Time: 12:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Model.Staff" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.*" %>


<%
    String idform=request.getParameter("id");
    int id=Integer.valueOf(idform);
    String state=request.getParameter("state");
    System.out.println("the id is =="+id+"    the stat is =="+state);

    Connection c =DBConnection.getConnection();

    try {
        PreparedStatement per=c.prepareStatement("update student_form set paper= ? where s_id=? ");
        per.setString(1,state);
        per.setInt(2,id);

        per.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    request.getRequestDispatcher("tableFor_Ph-D.jsp").forward(request, response);


%>