<%@ page import = "main.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>
	<h1>Admin</h1>
	<form action="ResultAdminUpdate.jsp">
		<label>Auction ID</label>
		<input name="AuctionID" type="text"></input>
		<br>
		<br>
		<label>Status</label>
		<select name = "Status">
			<option value = "Available">Available</option>
			<option value = "Not Available">Not Available</option>
		</select>
		<br>
		<br>
		<label>Approved</label>
		<select name = "Approved">
			<option value = "True">Yes</option>
			<option value = "False">No</option>
		</select>
		<br>
		<br>
	    <button type="submit">Update Status of Auction</button>
	</form>
	<%
	Auction auction = new AuctionProxy().getAuction();
	out.println(auction.getAuctions());
%>
</body>
</html>