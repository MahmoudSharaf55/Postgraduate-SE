<%@ page import="Util.DBConnection" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Model.Student" %>
<%@ page import="Model.StudentForm" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: Ma7MOoOD SHaRaF
  Date: 10/04/2019
  Time: 09:32 م
  To change this template use File | Settings | File Templates.
--%>
<%!
    Student student;
    StudentForm diploma;
    StudentForm ph;
    StudentForm master;
%>
<%
    String email = request.getParameter("email");
    String password = CipherEncryptionAndDecryption.encrypt(request.getParameter("password"), "nerds");
    int flag = 0;

    Statement st = null;
    PreparedStatement st1 = null;
    try {
        st = DBConnection.getConnection().createStatement();
        ResultSet rs = st.executeQuery("select * from student");
        while (rs.next()) {
            if (rs.getString("email").equals(email) && rs.getString("password").equals(password)) {
                flag = 1;
                student = new Student(rs.getString("username"),rs.getString("email"),rs.getString("password"));
                student.setId(rs.getInt("id"));
                session.setAttribute("currentStudent",student);
                session.setAttribute("currentUser","student");
                session.setMaxInactiveInterval(-1);
                request.getServletContext().setAttribute("profile","/student/student_dashboard.jsp");
                break;
            }
        }
        if (flag == 1) {
            st1 = DBConnection.getConnection().prepareStatement("select * from student_form s where s.s_id = ?");
            st1.setInt(1,student.getId());
            ResultSet res = st1.executeQuery();
            session.removeAttribute("ph");
            session.removeAttribute("diploma");
            session.removeAttribute("master");
            while (res.next()){
                if (res.getString("s.form_type").equals("1")){
                    ph = new StudentForm(res.getString("s.paper"),res.getString("s.status"),res.getString("s.dept"),
                            res.getString("s.round"),res.getString("s.for_year"),res.getString("s.name"),
                            res.getString("s.dob"),res.getString("s.city"),res.getString("s.country"),
                            res.getString("s.governorate"),res.getString("s.nationality"),res.getString("s.religion")
                            ,res.getInt("s.national_id"),res.getString("s.national_source"),res.getString("s.national_release"),
                            res.getString("s.recruitment_postion"),res.getString("s.job")
                            ,res.getString("s.job_address"),res.getString("s.phone"),res.getString("s.bachelor_in"),
                            res.getString("s.b_role"),res.getString("s.b_overall_rate")
                            ,res.getString("s.b_dept"),res.getString("s.b_special_rate"),res.getInt("s.b_overall_mark"),
                            res.getString("s.b_graduate_source"),res.getString("s.b_graduate_year"),
                            res.getString("s.enroll_dept")
                            ,res.getString("s.postgraduate_in"),res.getString("s.p_role"),res.getString("s.p_special"),
                            res.getString("s.p_rate"),res.getInt("s.p_overall_mark"),res.getString("s.p_university"),
                            res.getString("s.form_type"),res.getInt("s.s_id"));
                    ph.setId(res.getInt("s.id"));
                    session.setAttribute("ph",ph);
                } else if (res.getString("form_type").equals("2")){
                    diploma = new StudentForm(res.getString("s.paper"),res.getString("s.status"),res.getString("s.dept"),
                            res.getString("s.round"),res.getString("s.for_year"),res.getString("s.name"),
                            res.getString("s.dob"),res.getString("s.city"),res.getString("s.country"),
                            res.getString("s.governorate"),res.getString("s.nationality"),res.getString("s.religion")
                            ,res.getInt("s.national_id"),res.getString("s.national_source"),res.getString("s.national_release"),
                            res.getString("s.recruitment_postion"),res.getString("s.job")
                            ,res.getString("s.job_address"),res.getString("s.phone"),res.getString("s.bachelor_in"),
                            res.getString("s.b_role"),res.getString("s.b_overall_rate")
                            ,res.getString("s.b_dept"),res.getString("s.b_special_rate"),res.getInt("s.b_overall_mark"),
                            res.getString("s.b_graduate_source"),res.getString("s.b_graduate_year"),
                            res.getString("s.enroll_dept"),
                            res.getString("s.form_type"),res.getInt("s.s_id"));
                    diploma.setId(res.getInt("s.id"));
                    session.setAttribute("diploma",diploma);
                } else if (res.getString("form_type").equals("3")){
                    master = new StudentForm(res.getString("s.paper"),res.getString("s.status"),res.getString("s.dept"),
                            res.getString("s.round"),res.getString("s.for_year"),res.getString("s.name"),
                            res.getString("s.dob"),res.getString("s.city"),res.getString("s.country"),
                            res.getString("s.governorate"),res.getString("s.nationality"),res.getString("s.religion")
                            ,res.getInt("s.national_id"),res.getString("s.national_source"),res.getString("s.national_release"),
                            res.getString("s.recruitment_postion"),res.getString("s.job")
                            ,res.getString("s.job_address"),res.getString("s.phone"),res.getString("s.bachelor_in"),
                            res.getString("s.b_role"),res.getString("s.b_overall_rate")
                            ,res.getString("s.b_dept"),res.getString("s.b_special_rate"),res.getInt("s.b_overall_mark"),
                            res.getString("s.b_graduate_source"),res.getString("s.b_graduate_year"),
                            res.getString("s.enroll_dept"),
                            res.getString("s.form_type"),res.getInt("s.s_id"));
                    master.setId(res.getInt("s.id"));
                    session.setAttribute("master",master);
                }
            }
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

