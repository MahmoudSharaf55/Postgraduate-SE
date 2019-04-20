<%@ page import="Model.Doctor" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>
<%@ page pageEncoding="UTF-8" %>

<%
    //session
    request.setCharacterEncoding("UTF-8");
    String fName=request.getParameter("fname");
    String email=request.getParameter("email");
    String phone=request.getParameter("phone");
    String department=request.getParameter("department");
    String password= CipherEncryptionAndDecryption.encrypt(request.getParameter("password"),"nerds");

%>
<% int flag=0;
    Connection c = DBConnection.getConnection();

    Statement statement = c.createStatement();
    ResultSet resultSet = statement.executeQuery("select email from doctor;");
    while (resultSet.next()) {
        if (resultSet.getString("email").equals(email)){
            flag = 1;
            break;
        }
    }
    if(flag==0){
        try {
            PreparedStatement per=c.prepareStatement("insert into doctor (username,email,phone,password,department) values(?,?,?,?,?)");
            per.setString(1,fName);
            per.setString(2,email);
            per.setString(3,phone);
            per.setString(4,password);
            per.setString(5,department);
            per.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        Doctor doctor = new Doctor();
        doctor.setDoctorName(fName);
        doctor.setDoctorEmail(email);
        doctor.setDoctorphone(phone);
        doctor.setDoctordepartment(department);
        doctor.setDoctorPassword(password);
        PreparedStatement ps2 = DBConnection.getConnection().prepareStatement("select id from doctor where email = ?");
        ps2.setString(1,email);
        ResultSet resultSet1 = ps2.executeQuery();
        resultSet1.next();
        doctor.setId(resultSet1.getInt("id"));
        session.setAttribute("doctor",doctor);
        session.setAttribute("currentUser","doctor");
        request.getServletContext().setAttribute("profile","/doctor/doctor_homePage.jsp");
        response.sendRedirect("doctor_homePage.jsp");
    }
    else  {
        request.getRequestDispatcher("signup_doctor.jsp").include(request, response);
        request.getRequestDispatcher("../ErrorPages/EmailError.jsp").include(request, response);
        flag = 0;
    }


%>
