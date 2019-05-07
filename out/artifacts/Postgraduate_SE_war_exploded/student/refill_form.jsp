<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Model.Student" %>
<%@ page import="Model.StudentForm" %><%--
  Created by IntelliJ IDEA.
  User: Ma7MOoOD SHaRaF
  Date: 18/04/2019
  Time: 11:07 م
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    StudentForm ph = (StudentForm) session.getAttribute("ph");
    StudentForm master = (StudentForm) session.getAttribute("master");
    StudentForm diploma = (StudentForm) session.getAttribute("diploma");
    try {
        PreparedStatement ps = DBConnection.getConnection().prepareStatement("delete from student_form where s_id = ? and form_type = ?");
        String type = request.getParameter("refill_type");
        if (type.equals("ph")) {
            session.removeAttribute("ph");
            ps.setInt(1,ph.getS_id());
            ps.setString(2,ph.getForm_type());
            ps.executeUpdate();
            response.sendRedirect("Ph-D_registration.jsp");
        }
        else if (type.equals("master")) {
            session.removeAttribute("master");
            ps.setInt(1,master.getS_id());
            ps.setString(2,master.getForm_type());
            ps.executeUpdate();
            response.sendRedirect("master's_registration.jsp");
        }
        else if (type.equals("diploma")) {
            session.removeAttribute("diploma");
            ps.setInt(1,diploma.getS_id());
            ps.setString(2,diploma.getForm_type());
            ps.executeUpdate();
            response.sendRedirect("diploma_registration.jsp");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
