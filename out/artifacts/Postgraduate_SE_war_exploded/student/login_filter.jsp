<%@ page import="Util.DBConnection" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Ma7MOoOD SHaRaF
  Date: 10/04/2019
  Time: 09:32 م
  To change this template use File | Settings | File Templates.
--%>
<%!
    Student student;
%>
<%
    String email = request.getParameter("email");
    String password = CipherEncryptionAndDecryption.encrypt(request.getParameter("password"), "nerds");
    int flag = 0;

    Statement st = null;
    try {
        st = DBConnection.getConnection().createStatement();
        ResultSet rs = st.executeQuery("select * from student");
        while (rs.next()) {
            if (rs.getString("email").equals(email) && rs.getString("password").equals(password)) {
                flag = 1;
                student = new Student(rs.getString("username"),rs.getString("email"),rs.getString("password"),rs.getString("form"));
                student.setId(rs.getInt("id"));
                student.setStatus(rs.getString("status"));
                student.setPaper(rs.getString("paper"));
                session.setAttribute("currentStudent",student);
//                request.getServletContext().setAttribute("profile");
                break;
            }
        }
        if (flag == 1) {
            response.sendRedirect("student_dashboard.jsp");
        } else {
            request.getRequestDispatcher("login_Student.jsp").include(request, response);
            request.getRequestDispatcher("../ErrorPages/EmailOrPasswordError.jsp").include(request, response);
            flag = 0;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

