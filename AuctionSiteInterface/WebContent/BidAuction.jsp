<%@page import="main_pkg.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="ResultBidAuction.jsp" method="get">
  Enter product ID: <input type="text" name="bidproductId" /> <br>
  <label for="bidAmount">Bid Amount:</label><br>
  <input type="text" id="bidAmount" name="bidAmount"><br><br>
  <input type="submit" />
</form>

<br>
<%
    String userID = session.getAttribute("userID").toString();
	String productName = request.getParameter("ProductName");
	String productDescription = request.getParameter("ProductDescription");
	String category = request.getParameter("Category"); 
	String location = request.getParameter("Location"); 
	String auctionStartDate = request.getParameter("AuctionStartDate");
	String minBidPrice = request.getParameter("MinBidPrice");

 	Bidding bidding = new BiddingProxy().getBidding();
	out.println(bidding.getAuctionProduct());
%>	


</body>
</html>