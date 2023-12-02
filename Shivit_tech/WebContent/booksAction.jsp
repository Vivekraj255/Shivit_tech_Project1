<%@ page import="comp.connection.*"%>
<%@page import="java.sql.*"%>
<%
//Retrieving values from the frontend
String book_name = request.getParameter("book_name");
String subject = request.getParameter("subject");
String price = request.getParameter("price");
String candidate_name = request.getParameter("candidate_name");

//Creating Session
HttpSession hs = request.getSession();

//Inserting all values inside the database
try {
    //Connecting database connection and querying in the database
    int addCandidate = DatabaseConnection.insertUpdateFromSqlQuery("insert into tblcustomer(book_name,subject,price,candidate_name)values('" + book_name + "','" + subject + "','"+ price + "','" + candidate_name + "')");

    //If customer registered successfully
    if (addCandidate > 0) {
        String message = "Customer register successfully.";
        //Passing message via session.
        hs.setAttribute("success-message", message);
        //Sending response back to the user/customer
        response.sendRedirect("books.jsp");
    } else {
        //If customer fails to register 
        String message = "Customer registration fail";
        //Passing message via session.
        hs.setAttribute("fail-message", message);
        //Sending response back to the user/customer
        response.sendRedirect("books.jsp");
    }
} catch (Exception ex) {
    ex.printStackTrace();
}
%>