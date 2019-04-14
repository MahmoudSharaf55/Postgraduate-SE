<%@ page import="Model.Doctor" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>
<%@ page import="Model.Staff" %>
<%@ page pageEncoding="UTF-8" %>

<%
    request.setCharacterEncoding("UTF-8");
    String email= request.getParameter("email");
    String password= CipherEncryptionAndDecryption.encrypt(request.getParameter("password"),"nerds");
    int flag=0;
    Connection c = DBConnection.getConnection();

    Statement statement = c.createStatement();
    ResultSet resultSet = statement.executeQuery("select username, email, phone, password from staff;");
    while (resultSet.next()) {
        if (resultSet.getString("email").equals(email)&&resultSet.getString("password").equals(password)){
            flag = 1;
            break;
        }
    }
    if(flag==1){
        String encryptPass=CipherEncryptionAndDecryption.encrypt(resultSet.getString("password"),"nerds");
        Staff staff =new Staff();
        staff.setStuffName(resultSet.getString("username"));
        staff.setStuffEmail(resultSet.getString("email"));
        staff.setStuffphone(resultSet.getString("phone"));
        staff.setStuffPassword(encryptPass);
        session.setAttribute("staff", staff);
        session.setAttribute("currentUser","staff");
        request.getServletContext().setAttribute("profile","/staff/staff_homePage.jsp");
        response.sendRedirect("staff_homePage.jsp");
    }

    else{
        request.getRequestDispatcher("../ErrorPages/EmailOrPasswordError.jsp").include(request, response);
        request.getRequestDispatcher("login_staff.jsp").include(request, response);

        flag =0;
    }


%>