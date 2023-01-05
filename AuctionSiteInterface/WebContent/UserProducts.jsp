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
User u1 = new UserProxy().getUser();
u1.getProductUserData(3);
String username, password;
username = session.getAttribute("username").toString();
password = session.getAttribute("password").toString();
out.println(u1.getloginID(username, password));
%>

<form action="Userprofile.jsp">
<%
session.setAttribute("username", username);
session.setAttribute("password", password);
%>
<input type="submit">Back</input>
</form>
</body>
</html>