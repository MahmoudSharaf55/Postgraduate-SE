<%@ page import="Model.Doctor" %>
<%@ page import="Util.DBConnection" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="java.util.logging.Level" %>
<%@ page import="Util.CipherEncryptionAndDecryption" %>
<%@ page import="java.sql.*" %>
<%@ page import="Model.Staff" %>
<%@ page pageEncoding="UTF-8" %>
<%
    //session
    request.setCharacterEncoding("UTF-8");
    String stuffName=request.getParameter("fname");
    String stuffEmail=request.getParameter("email");
    String stuffPhone=request.getParameter("phone");
    String stuffPassword= CipherEncryptionAndDecryption.encrypt(request.getParameter("password"),"nerds");


%>

<% int flag=0;
    Connection c =DBConnection.getConnection();

    Statement statement = c.createStatement();
    ResultSet resultSet = statement.executeQuery("select email from staff;");
    while (resultSet.next()) {
        if (resultSet.getString("email").equals(stuffEmail)){
            flag = 1;
            break;
        }
    }
    if(flag==0){
        try {
            PreparedStatement per=c.prepareStatement("insert into staff (username,email,phone,password) values(?,?,?,?)");
            per.setString(1,stuffName);
            per.setString(2,stuffEmail);
            per.setString(3,stuffPhone);
            per.setString(4,stuffPassword);
            per.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        Staff staff =new Staff();

        staff.setStuffName(stuffName);
        staff.setStuffEmail(stuffEmail);
        staff.setStuffphone(stuffPhone);
        staff.setStuffPassword(stuffPassword);
        PreparedStatement ps2 = DBConnection.getConnection().prepareStatement("select id from staff where email = ?");
        ps2.setString(1,stuffEmail);
        ResultSet resultSet1 = ps2.executeQuery();
        resultSet1.next();
        staff.setId(resultSet1.getInt("id"));

        session.setAttribute("staff", staff);
        session.setAttribute("currentUser","staff");
        request.getServletContext().setAttribute("profile","/staff/staff_homePage.jsp");
        response.sendRedirect("staff_homePage.jsp");
    }

    else {
        request.getRequestDispatcher("signup_staff.jsp").include(request, response);
        request.getRequestDispatcher("../ErrorPages/EmailError.jsp").include(request, response);
        flag =0;

    }


%>