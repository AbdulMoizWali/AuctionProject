<%@ page import="main.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auction</title>
</head>
<body>
<h1>View</h1>

<%
    String userID = "1";
	String productName = request.getParameter("ProductName");
	String productDescription = request.getParameter("ProductDescription");
	String category = request.getParameter("Category"); 
	String location = request.getParameter("Location"); 
	String auctionStartDate = request.getParameter("AuctionStartDate");
	String minBidPrice = request.getParameter("MinBidPrice");

	Auction auction = new AuctionProxy().getAuction();
	auction.insertAuctionWithProduct(userID, productName, productDescription, category, location, auctionStartDate, minBidPrice);
	out.println(auction.getAuctions());
%>	

</body>
</html>
