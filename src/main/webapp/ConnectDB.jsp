<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ConnectDB</title>
</head>
<body>
<%@ include file="home.html" %>
 <% 
 

 out.println("<html><body>"); 
 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
	 System.out.println("Connect to DB");
	 Statement sta = con.createStatement();
	 String sailorTable = "SELECT * FROM Sailors order by sid ";
	 ResultSet res = sta.executeQuery(sailorTable);
	 out.println("<div style=margin-top:100px>");
	 out.println("<div style=margin-left:300px>");
	 out.println("<table width=50%; cellpadding=2px; style=color:black; >");
	 out.println("<tr  ><th >Sid</th><th>Sname</th><th>Rating</th><tr>");
	 while(res.next()){
		 String col1 = res.getString(1);
		 String col2 = res.getString(2);
		 int col3 = res.getInt(3);
		 
		 out.println("<tr><td>" + col1 + "</td><td>" + col2 + "</td><td>" + col3 + "</td></tr>");
	 }
	 
	 out.println("</table>");
	 out.println("</div>");
	 out.println("</div>");
	 out.println("</html></body>");  
     con.close(); 
 }catch (Exception e){
	 System.out.println(e);
 }
 
 %>
 <button 
  style="margin-left:300px;
  margin-top:100px;  
  background-color: #DAE8FC;
  border: 2px solid #6C8EBF;
  border-radius: 10px; 
  width: 200px;
  height:50px;
  font-size:20px;"
  onclick="document.location='http://localhost:8080/OTCHandBook/Symptom.jsp'"
  >
  Back
 </button>
</body>
</html>