<%@ page import="comp.connection.*"%>
<%@page import="java.sql.*"%>
<%
//Retrieving values from the frontend
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String gender = request.getParameter("gender");
String address = request.getParameter("address");
String pincode = request.getParameter("pincode");
String state = request.getParameter("state");

//Creating Session
HttpSession hs = request.getSession();

//Inserting all values inside the database
try {
    //Connecting database connection and querying in the database
    int addCandidate = DatabaseConnection.insertUpdateFromSqlQuery("insert into candidate(name,email,phone,gender,address,pin_code,state)values('" + name + "','" + email + "','" + mobile + "','"+ gender + "','" + address + "','" + pincode + "','" + state + "')");

    //If customer registered successfully
    if (addCandidate > 0) {
        String message = "Customer register successfully.";
        //Passing message via session.
        hs.setAttribute("success-message", message);
        //Sending response back to the user/customer
        response.sendRedirect("registration.jsp");
    } else {
        //If customer fails to register 
        String message = "Customer registration fail";
        //Passing message via session.
        hs.setAttribute("fail-message", message);
        //Sending response back to the user/customer
        response.sendRedirect("registration.jsp");
    }
} catch (Exception ex) {
    ex.printStackTrace();
}
%>