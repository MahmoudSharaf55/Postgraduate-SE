<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Model.Student" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Ma7MOoOD SHaRaF
  Date: 04/05/2019
  Time: 02:27 ص
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int hours = 0;
    ArrayList<Integer> sub_id = new ArrayList<>();
    Student student = (Student) session.getAttribute("currentStudent");
    PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement("select * from subject");
    PreparedStatement insertStatement = DBConnection.getConnection().prepareStatement("insert into stu_sub (stu_id, sub_id) values (?,?)");
    PreparedStatement updateStatement = DBConnection.getConnection().prepareStatement("update stu_sub set count = count+1 where stu_id = ? && sub_id = ?");

    ResultSet rs = preparedStatement.executeQuery();
    while (rs.next()){
        if (request.getParameter(String.valueOf(rs.getInt("id"))) != null){
            hours += rs.getInt("hours");
            sub_id.add(rs.getInt("id"));
        }
    }
    if (hours <= 120 && hours > 0){
        for (int i = 0 ; i < sub_id.size(); i++){
            updateStatement.setInt(1,student.getId());
            updateStatement.setInt(2,sub_id.get(i));
            if (updateStatement.executeUpdate() == 0){
                insertStatement.setInt(1,student.getId());
                insertStatement.setInt(2,sub_id.get(i));
                insertStatement.executeUpdate();
            }
        }
        request.getRequestDispatcher("student_dashboard.jsp").include(request,response);
        request.getRequestDispatcher("/ErrorPages/subjectRegistered.jsp").include(request,response);
    } else {
        request.getRequestDispatcher("student_dashboard.jsp").include(request,response);
        request.getRequestDispatcher("/ErrorPages/HoursError.jsp").include(request,response);
    }
%>
