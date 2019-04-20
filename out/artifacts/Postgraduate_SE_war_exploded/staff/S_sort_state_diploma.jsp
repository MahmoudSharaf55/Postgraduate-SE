<%@ page import="Model.Staff" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.*" %>
<%@ page pageEncoding="UTF-8" %>


<%
    request.setCharacterEncoding("UTF-8");
    String idform=request.getParameter("id");
    int id=Integer.valueOf(idform);
    String state=request.getParameter("state");
    System.out.println("the id is =="+id+"    the stat is =="+state);

    Connection c =DBConnection.getConnection();

        try {
            PreparedStatement per=c.prepareStatement("update student_form set paper= ? where s_id=? and form_type=?");
            per.setString(1,state);
            per.setString(3,"2");
            per.setInt(2,id);

           per.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("tableFor_diploma.jsp").forward(request, response);


%>