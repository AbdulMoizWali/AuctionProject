<%@ page import="main.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
User u1= new UserProxy().getUser();
String userid, updateusername, updatepassword, updateFname, updateLname, updatePhone, updateaddress, updatebalance, updatecnic, username, password;

username=session.getAttribute("username").toString();
password=session.getAttribute("password").toString();
userid= u1.getloginID(username, password);

updateusername=request.getParameter("updateusername");
updatepassword=request.getParameter("updatepassword");
updateFname=request.getParameter("updateFname");
updateLname=request.getParameter("updateLname");
updatePhone=request.getParameter("updatePhone");
updateaddress=request.getParameter("updateaddress");
updatebalance=request.getParameter("updatebalance");
updatecnic=request.getParameter("updatecnic");

u1.updateUserdata(userid, updateusername, updatepassword, updateFname, updateLname, updatePhone, updateaddress, updatebalance, updatecnic);
%>
<form action="Login.jsp">
<%
session.setAttribute("username", username);
session.setAttribute("password", password);
%>
<label>Click to return to login</label>
<br>
<br>
<button type="submit">Return</button>
</form>
</body>
</html>