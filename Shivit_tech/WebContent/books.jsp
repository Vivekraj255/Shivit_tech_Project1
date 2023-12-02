<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="comp.connection.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

  <section> 
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

   <div class="signin"> 

    <div class="content"> 

     <h2>Registration Form</h2> 

<%
   String success = (String) session.getAttribute("success-message");
   if (success != null) {
   session.removeAttribute("success-message");
%>
      <div class='alert alert-success' id='success' style="width: 680px;">Customer Register Successfully.</div>
<%
}
String fail = (String) session.getAttribute("fail-message");
if (fail != null) {
session.removeAttribute("fail-message");
%>
<div class="alert alert-danger" id='danger' style="width: 680px;">Customer Registration Fail,Please try again</div>
<%
}
%>
  <%
     //Checking whether admin in session or not
     if (session.getAttribute("name") != null && session.getAttribute("name") != "") {
  %>
     <form method="post" action="booksAction.jsp" class="form" id="form">  
          <%
            Connection connection = DatabaseConnection.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from candidate");
            while (resultSet.next()) {
          %>
 	  <div class="form-group">
                 <label>Your Name</label> <input type="text" name="candidate_name"
                             value="<%=resultSet.getString("name")%>" placeholder=""
                             required="" readonly>
      </div>

      <div class="inputBox"> 

       <input type="book_name" name="book_name"  required=""> <i>Book Name</i> 

      </div> 

      
      <div class="inputBox"> 

       <input type="text" name="subject"  required=""> <i>Subject</i> 

      </div>
       
      <div class="inputBox"> 

       <input type="price" name="price"  required=""> <i>Price</i> 

      </div> 

      <div class="inputBox"> 
          
          <input type="submit" value="Register"> 
          
        </div> 
        
  <%
      }
  %>
        <div class="links"> <a href="#"></a> <a href="login.jsp">Back</a> </div> 

     </form> 
     
       <%
            } else {
                response.sendRedirect("view-candidate.jsp");
            }
        %>
     
     
     

    </div> 

   </div> 

  </section>

</body>
</html>