<%@ page import="comp.connection.*"%>
<%@page import="java.sql.*"%>
<% 
//Getting all data from user/customer
String usrname = request.getParameter("usrname");
String usrpass = request.getParameter("usrpass");
//Creating Session
session.setAttribute("email",usrname); 
try {
    //Creating Resultset
    ResultSet resultset = null;
    //Query to check Login Details
    resultset = DatabaseConnection.getResultFromSqlQuery("select * from users where email='" + usrname + "' and password='" + usrpass + "'");
    //Checking whether the details of user are null or not
    if (usrname != null && usrpass != null) {
        if (resultset.next()) {
            //Storing the login details in session
            session.setAttribute("id", resultset.getInt("id"));
            session.setAttribute("name", resultset.getString("name"));
            //Redirecting response to the index.jsp
            response.sendRedirect("home.jsp");
        } else {
            //If wrong credentials are entered
            String message = "You have enter wrong credentials";
            session.setAttribute("credential", message);
            //Redirecting response to the customer-login.jsp
            response.sendRedirect("login.jsp");
        }
    } else {
        //If username or password is empty or null
        String message = "User name or Password is null";
        session.setAttribute("credential", message);
        //Redirecting response to the customer-login.jsp
        response.sendRedirect("login.jsp");
    }

} catch (Exception e) {
    e.printStackTrace();
}
%>