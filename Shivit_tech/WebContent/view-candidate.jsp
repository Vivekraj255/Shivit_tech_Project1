<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="footer.jsp"%>
<%@ page import="comp.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
        <title> Candidate Details </title>

</head>
<body>
	<section> 
        <div class="topn">
        <%
            //Checking whether admin in session or not
            if (session.getAttribute("name") != null && session.getAttribute("name") != "") {
        %>

            <div class="content-wrapper">
                <div class="container-fluid">
                    	<h4 class="header-line"><span><center>View Candidate</center></span></h4>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="panel panel-success">
                                <div class="panel-heading">View Candidate</div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Name</th>
                                                    <th>Email-Id</th>
                                                    <th>Mobile</th>
                                                    <th>Gender</th>
                                                    <th>Address</th>
                                                    <th>Pin-Code</th>
                                                    <th>State</th>
                                                    <th>View Books</th>
                                                    
                                                    
                                                </tr>
                                            </thead>
                                        <%
                                            Connection connection = DatabaseConnection.getConnection();
                                            Statement statement = connection.createStatement();
                                            ResultSet resultSet = statement.executeQuery("select * from candidate");
                                            while (resultSet.next()) {
                                        %>
                                        <tbody>
                                            <tr>
                                                <td><%=resultSet.getInt(1)%></td>
                                                <td><%=resultSet.getString("name")%></td>
                                                <td><%=resultSet.getString("email")%></td>
                                                <td><%=resultSet.getString("phone")%></td>
                                                <td><%=resultSet.getString("gender")%></td>
                                                <td><%=resultSet.getString("address")%></td>
                                                <td><%=resultSet.getString("pin_code")%></td>
                                                <td><%=resultSet.getString("state")%></td>
                                                <td><li><a href="check.jsp">View... </a></li></td>
                                            </tr>
                                        </tbody>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            } else {
                response.sendRedirect("login.jsp");
            }
        %>
        </div>
	</section>
	
</body>
</html>