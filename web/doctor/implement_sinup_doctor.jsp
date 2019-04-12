<%@ page import="Model.Doctor" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>

<%
    //session

    String fName=request.getParameter("fname");
    String email=request.getParameter("email");
    String phone=request.getParameter("phone");
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
            PreparedStatement per=c.prepareStatement("insert into doctor (username,email,phone,password) values(?,?,?,?)");
            per.setString(1,fName);
            per.setString(2,email);
            per.setString(3,phone);
            per.setString(4,password);
            per.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        Doctor doctor = new Doctor();
        doctor.setDoctorName(fName);
        doctor.setDoctorEmail(email);
        doctor.setDoctorphone(phone);
        doctor.setDoctorPassword(password);
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
