<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Model.Student" %>
<%@ page import="java.sql.Date" %>
<%@ page import="Model.StudentForm" %>
<%--
  Created by IntelliJ IDEA.
  User: Ma7MOoOD SHaRaF
  Date: 12/04/2019
  Time: 05:40 م
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
String dept
        ,
        round
        ,
        for_year
        ,
        name
        ,
        dob
        ,
        city
        ,
        country
        ,
        governorate
        ,
        nationality
        ,
        religion
        ,
        card_id
        ,
        card_src
        ,
        card_date
        ,
        army
        ,
        job
        ,
        job_address
        ,
        phone
        ,
        b_in
        ,
        b_role
        ,
        b_rate
        ,
        b_dept
        ,
        b_sp_rate
        ,
        b_mark
        ,
        b_graduation_src
        ,
        b_graduation_year
        ,
        enrolling_dept
        ,
        m_in
        ,
        m_role
        ,
        m_sp_rate
        ,
        m_rate
        ,
        m_mark
        ,
        m_src
        ,
        form_type;
        PreparedStatement diploma
                ,
                ph_d;
    Student student;
    StudentForm studentForm;
%>
<%
    request.setCharacterEncoding("UTF-8");
    form_type = request.getParameter("form_type");
    dept = request.getParameter("dept");
    round = request.getParameter("round");
    for_year = request.getParameter("for_year");
    name = request.getParameter("name");
    dob = request.getParameter("dob");
    country = request.getParameter("country");
    city = request.getParameter("city");
    governorate = request.getParameter("governorate");
    nationality = request.getParameter("nationality");
    religion = request.getParameter("religion");
    card_id = request.getParameter("card_id");
    card_src = request.getParameter("card_src");
    card_date = request.getParameter("card_date");
    army = request.getParameter("army");
    job = request.getParameter("job");
    job_address = request.getParameter("job_address");
    phone = request.getParameter("phone");
    b_in = request.getParameter("b_in");
    b_role = request.getParameter("b_role");
    b_rate = request.getParameter("b_rate");
    b_dept = request.getParameter("b_dept");
    b_sp_rate = request.getParameter("b_sp_rate");
    b_mark = request.getParameter("b_mark");
    b_graduation_src = request.getParameter("graduation_src");
    b_graduation_year = request.getParameter("graduation_year");
    enrolling_dept = request.getParameter("enrolling_dept");

    student = (Student) session.getAttribute("currentStudent");
    StudentForm diplomaForm = (StudentForm) session.getAttribute("diploma");
    StudentForm masterForm = (StudentForm) session.getAttribute("master");
    StudentForm phForm = (StudentForm) session.getAttribute("ph");
//    session.removeAttribute("ph");
//    session.removeAttribute("diploma");
//    session.removeAttribute("master");
    if (form_type.equals("1") && phForm == null) {
        m_in = request.getParameter("m_in");
        m_role = request.getParameter("m_role");
        m_sp_rate = request.getParameter("m_sp_rate");
        m_rate = request.getParameter("m_rate");
        m_mark = request.getParameter("m_mark");
        m_src = request.getParameter("m_src");
        try {
            ph_d = DBConnection.getConnection().prepareStatement("insert into student_form (s_id, form_type, dept, round, for_year, name, dob, country, city, governorate, nationality, religion, national_id, national_source, national_release, recruitment_postion, job, job_address, phone, bachelor_in, b_role, b_overall_rate, b_dept, b_special_rate, b_overall_mark, b_graduate_source, b_graduate_year, postgraduate_in, p_role, p_special, p_rate, p_overall_mark, p_university, enroll_dept) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ph_d.setInt(1, student.getId());
            ph_d.setString(2, form_type);
            ph_d.setString(3, dept);
            ph_d.setString(4, round);
            ph_d.setString(5, for_year);
            ph_d.setString(6, name);
            ph_d.setDate(7, Date.valueOf(dob));
            ph_d.setString(8, country);
            ph_d.setString(9, city);
            ph_d.setString(10, governorate);
            ph_d.setString(11, nationality);
            ph_d.setString(12, religion);
            ph_d.setInt(13, Integer.valueOf(card_id));
            ph_d.setString(14, card_src);
            ph_d.setDate(15, Date.valueOf(card_date));
            ph_d.setString(16, army);
            ph_d.setString(17, job);
            ph_d.setString(18, job_address);
            ph_d.setString(19, phone);
            ph_d.setString(20, b_in);
            ph_d.setString(21, b_role);
            ph_d.setString(22, b_rate);
            ph_d.setString(23, b_dept);
            ph_d.setString(24, b_sp_rate);
            ph_d.setInt(25, Integer.valueOf(b_mark));
            ph_d.setString(26, b_graduation_src);
            ph_d.setString(27, b_graduation_year);
            ph_d.setString(28, m_in);
            ph_d.setString(29, m_role);
            ph_d.setString(30, m_sp_rate);
            ph_d.setString(31, m_rate);
            ph_d.setInt(32, Integer.valueOf(m_mark));
            ph_d.setString(33, m_src);
            ph_d.setString(34, enrolling_dept);
            ph_d.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        studentForm = new StudentForm("In Reviewing","Waiting",dept,round,for_year,name,dob,city,country,governorate,nationality,religion,Integer.valueOf(card_id),card_src,card_date,army,job,job_address,phone,b_in,b_role,b_rate,b_dept,b_sp_rate,Integer.valueOf(b_mark),b_graduation_src,b_graduation_year,enrolling_dept,m_in,m_role,m_sp_rate,m_rate,Integer.valueOf(m_mark),m_src,form_type,student.getId());
        session.setAttribute("ph",studentForm);
        response.sendRedirect("student_dashboard.jsp");
    } else if ((form_type.equals("2") && diplomaForm == null) || (form_type.equals("3") && masterForm == null)) {
        try {
            diploma = DBConnection.getConnection().prepareStatement("insert into student_form (s_id, form_type, dept, round, for_year, name, dob, country, city, governorate, nationality, religion, national_id, national_source, national_release, recruitment_postion, job, job_address, phone, bachelor_in, b_role, b_overall_rate, b_dept, b_special_rate, b_overall_mark, b_graduate_source, b_graduate_year, enroll_dept) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            diploma.setInt(1, student.getId());
            diploma.setString(2, form_type);
            diploma.setString(3, dept);
            diploma.setString(4, round);
            diploma.setString(5, for_year);
            diploma.setString(6, name);
            diploma.setDate(7, Date.valueOf(dob));
            diploma.setString(8, country);
            diploma.setString(9, city);
            diploma.setString(10, governorate);
            diploma.setString(11, nationality);
            diploma.setString(12, religion);
            diploma.setInt(13, Integer.valueOf(card_id));
            diploma.setString(14, card_src);
            diploma.setDate(15, Date.valueOf(card_date));
            diploma.setString(16, army);
            diploma.setString(17, job);
            diploma.setString(18, job_address);
            diploma.setString(19, phone);
            diploma.setString(20, b_in);
            diploma.setString(21, b_role);
            diploma.setString(22, b_rate);
            diploma.setString(23, b_dept);
            diploma.setString(24, b_sp_rate);
            diploma.setInt(25, Integer.valueOf(b_mark));
            diploma.setString(26, b_graduation_src);
            diploma.setString(27, b_graduation_year);
            diploma.setString(28, enrolling_dept);
            diploma.executeUpdate();
            studentForm = new StudentForm("In Reviewing","Waiting",dept,round,for_year,name,dob,city,country,governorate,nationality,religion,Integer.valueOf(card_id),card_src,card_date,army,job,job_address,phone,b_in,b_role,b_rate,b_dept,b_sp_rate,Integer.valueOf(b_mark),b_graduation_src,b_graduation_year,enrolling_dept,form_type,student.getId());
            if (form_type.equals("2") && diplomaForm == null)
                session.setAttribute("diploma",studentForm);
            else if (form_type.equals("3") && masterForm == null)
                session.setAttribute("master",studentForm);
            else {
                request.getRequestDispatcher("student_dashboard.jsp").include(request,response);
                request.getRequestDispatcher("/ErrorPages/FormError.jsp").include(request,response);
            }
            response.sendRedirect("student_dashboard.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    } else {
        request.getRequestDispatcher("student_dashboard.jsp").include(request,response);
        request.getRequestDispatcher("/ErrorPages/FormError.jsp").include(request,response);
    }
%>
