<%-- 
    Document   : newjsp
    Created on : Apr 6, 2024, 2:34:56 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%@ page import = "java.sql.*"%>Obtaining a Connection 
        <%
Connection conn=null;
ResultSet result=null;
Statement stmt=null;
ResultSetMetaData rsmd=null;
try {
  Class c=Class.forName("com.mysql.jdbc.Driver");
}
catch(Exception e){
  out.write("Error!!!!!!" + e);
}
try {
  conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/testdatabase",
   "root","admin");
  out.write("Connected!");
}
catch(SQLException e) {
  System.out.println("Error!!!!!!" + e);
}
%>
    </body>
</html>
