
<%@ page import="main.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auction Site</title>
</head>
<body>
<h1>User Profile</h1>
<%
User u1 = new UserProxy().getUser();
String username, password;
username=request.getParameter("username");
password=request.getParameter("password");
out.println(u1.getUserData(u1.getloginID(username, password)));
%>
<form action="UpdateProfile.jsp">
<%
session.setAttribute("username", username);
session.setAttribute("password", password);
%>
<br>
<br>
<label >Username</label>
<input name="updateusername" type="text"></input>
<br>
<br>
<label >Password</label>
<input name="updatepassword" type="text"></input>
<br>
<br>
<label >Firstname</label>
<input name="updateFname" type="text"></input>
<br>
<br>
<label >Lastname</label>
<input name="updateLname" type="text"></input>
<br>
<br>
<label >Phone</label>
<input name="updatephone" type="text"></input>
<br>
<br>
<label >Address</label>
<input name="updateaddress" type="text"></input>
<br>
<br>
<label >Balance</label>
<input name="updatebalance" type="text"></input>
<br>
<br>
<label >CNIC</label>
<input name="updatecnic" type="text"></input>
<br>
<br>
<button type="submit">Update</button>
</form>
</body>
</html>