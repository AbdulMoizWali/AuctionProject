<%@page import="main_pkg.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auction</title>
</head>
<body>
<%
    String userID = session.getAttribute("userID").toString();
	String bidproductId = request.getParameter("bidproductId");
	String bidAmount = request.getParameter("bidAmount");
	
	int UserID = Integer.parseInt(userID);
	int AuctionID = Integer.parseInt(bidproductId);
	int BidAmount = Integer.parseInt(bidAmount);

	Bidding bidding = new BiddingProxy().getBidding();
	bidding.bidInsert(AuctionID, BidAmount, UserID);
%>	
</body>
</html>