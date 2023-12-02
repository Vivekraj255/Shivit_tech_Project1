<%@ page import="comp.connection.DatabaseConnection"%>
<%@page import="java.sql.*"%>
<%
try{
	Connection con=DatabaseConnection.getConnection();
	Statement st=con.createStatement();
	String q1="create table candidate(name varchar(100)primary key,email varchar(100),phone bigint,gender varchar(10),address varchar(100),pin_code varchar(100),state varchar(100))";
	String q2="create table product(id int(100),book_name varchar(100),subject varchar(200),price int,costumer_name varchar(100))";

//	System.out.println(q1);
	//System.out.println(q2);
	
	st.execute(q1);
	st.execute(q2);

	System.out.println("Table created");
	con.close();
}catch(Exception e){
	System.out.print(e);
}
%>