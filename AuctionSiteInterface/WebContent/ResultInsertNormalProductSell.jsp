<%@ page import = "main.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sell Product</title>
</head>
<body>
<h1>View</h1>

<%
    String userID = "1";
	String productName = request.getParameter("ProductSellName");
	String productDescription = request.getParameter("ProductSellDescription");
	String category = request.getParameter("ProductCategory"); 
	String location = request.getParameter("ProductLocation"); 
	String price = request.getParameter("Price");
	
	NormalProductSell Nproductsell = new NormalProductSellProxy().getNormalProductSell();
	Nproductsell.insertNormalSellingWithProduct(userID, productName, productDescription, category, location, price);
	out.println(Nproductsell.getNormalSellingProducts());
%>	
</body>
</html>