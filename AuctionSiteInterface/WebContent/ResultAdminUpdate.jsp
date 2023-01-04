<%@ page import = "main.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Result</title>
</head>
<body>
<%
   	String AuctionID = request.getParameter("AuctionID");
	if(AuctionID == null){
		response.sendRedirect("Admin.jsp");
	}
    String Status = request.getParameter("Status");
    String Approved = request.getParameter("Approved");
    boolean approved = false;
    if(Approved.equalsIgnoreCase("True")){
    	approved = true;
    }
    else{
    	approved = false;
    }
	Auction auction = new AuctionProxy().getAuction();
	boolean updated = auction.updateAuctionStatus(AuctionID, Status, approved);
	if(updated){
		out.println("Updated Successfully");
	}
	else{
		out.println("Updated Failed");
	}
%>
</body>
</html>