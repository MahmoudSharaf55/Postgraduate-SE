<%@ page import="Model.Doctor" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>
<%@ page import="java.sql.SQLException" %>
<%
String email= request.getParameter("email");
String password= CipherEncryptionAndDecryption.encrypt(request.getParameter("password"),"nerds");
    int flag=0;
    Connection c = DBConnection.getConnection();

    Statement statement = c.createStatement();
    ResultSet resultSet = statement.executeQuery("select  username, email, phone, password,department from doctor;");
    while (resultSet.next()) {
        if (resultSet.getString("email").equals(email)&&resultSet.getString("password").equals(password)){
            flag = 1;
            break;
        }
    }
    if(flag==1){
        String Encryptpassword=CipherEncryptionAndDecryption.encrypt(resultSet.getNString("password"),"nerds");
        Doctor doctor=new Doctor();
        doctor.setDoctorName(resultSet.getString("username"));
        doctor.setDoctorEmail(resultSet.getString("email"));
        doctor.setDoctorphone(resultSet.getString("phone"));
        doctor.setDoctordepartment(resultSet.getString("department"));
        doctor.setDoctorPassword(Encryptpassword);
        session.setAttribute("doctor",doctor);
        session.setAttribute("currentUser","doctor");
        request.getServletContext().setAttribute("profile","/doctor/doctor_homePage.jsp");
        response.sendRedirect("doctor_homePage.jsp");
    }

    else{

        request.getRequestDispatcher("login_doctor.jsp").include(request, response);
        request.getRequestDispatcher("../ErrorPages/EmailOrPasswordError.jsp").include(request, response);
        flag =0;
    }


%>
