<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<link rel="stylesheet" href="Index.css"> 
<link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>


  <section> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> 

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

     <form method="post" action="registrationAction.jsp" class="form" id="form">  

        <div class="inputBox"> 

            <input type="text" name="name"  required=""> <i>Username</i> 
     
           </div> 

      <div class="inputBox"> 

       <input type="email" name="email"  required=""> <i>Email</i> 

      </div> 

      
      <div class="inputBox"> 

       <input type="mobile" name="mobile"  required=""> <i>Mobile No.</i> 

      </div>
      
      <div class="inputBox">
           <h4>Gender :</h4>  <br> 
         <select name="gender">
             <option>Male</option>
             <option>Female</option>
         </select>
     </div>
       
      <div class="inputBox"> 

       <input type="mobile" name="address"  required=""> <i>Address</i> 

      </div> 
      
      <div class="inputBox"> 

       <input type="mobile" name="pincode"  required=""> <i>Pin Code</i> 

      </div> 
      
      <div class="inputBox"> 

       <input type="mobile" name="state"  required=""> <i>State</i> 

      </div> 

      <div class="inputBox"> 
          
          <input type="submit" value="Register"> 
          
        </div> 
        
        
        <div class="links"> <a href="#"></a> <a href="login.jsp">Back</a> </div> 

     </form> 

    </div> 

   </div> 

  </section>


</body>
</html>