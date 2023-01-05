<%@ page import="main.*" %>
<%
	User u1 = new UserProxy().getUser();
	String username, password, UserID;
	username=request.getParameter("username");
	password=request.getParameter("password");
	try{
		UserID = u1.getloginID(username, password);
		if(UserID.equalsIgnoreCase("")){
			response.sendRedirect("Login.jsp");
		}
		session.setAttribute("userID", UserID);
	}
	catch(Exception ex1){
		out.println("Invalid Username or Password");
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<a href="Sell.jsp"><button>Sell</button></a>
<a href="Buy.jsp"><button>Buy</button></a>
<a href="Userprofile.jsp"><button>Update</button></a>
</body>
</html>