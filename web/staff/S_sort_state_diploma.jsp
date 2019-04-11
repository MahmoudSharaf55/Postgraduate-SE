<%@ page import="Model.Stuff" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.*" %>


<%
    String idform=request.getParameter("id");
    int id=Integer.valueOf(idform);
    String state=request.getParameter("state");
    System.out.println("the id is =="+id+"    the stat is =="+state);

    Connection c =DBConnection.getConnection();

        try {
            PreparedStatement per=c.prepareStatement("update student set paper= ? where id=? ");
            per.setString(1,state);
            per.setInt(2,id);

           per.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("tableFor_diploma.jsp").forward(request, response);


%>