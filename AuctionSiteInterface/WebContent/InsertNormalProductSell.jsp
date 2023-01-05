<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sell a Product</title>
</head>
<body>
	
	<h1>Sell Product</h1>
	
	<form action="ResultInsertNormalProductSell.jsp">
		<label>Product Name</label>
		<input name="ProductSellName" type="text"></input>
		<br>
		<br>
		<label>Product Description</label>
		<input name="ProductSellDescription" type="text"></input>
		<br>
		<br>
		<label>Product Category</label>
		<select name = "ProductCategory">
			<option value = "Clothing, Shoes & Accessories">Clothing, Shoes & Accessories</option>
			<option value = "Sporting Goods">Sporting Goods</option>
			<option value = "Home & Garden">Home & Garden</option>
			<option value = "Toys & Hobbies">Toys & Hobbies</option>
			<option value = "Business & Industrial">Business & Industrial</option>
			<option value = "Health & Beauty">Health & Beauty</option>
			<option value = "Pet Supplies">Pet Supplies</option>
			<option value = "Baby Essentials">Baby Essentials</option>
			<option value = "Electronics">Electronics</option>
			<option value = "Collectibles & Art">Collectibles & Art</option>
			<option value = "Books">Books</option>
		</select>
		<br>
		<br>
		<label>Pickup Location</label>
		<input name="ProductLocation" type="text"></input>
		<br>
		<br>
		<label>Price</label>
		<input name="Price" type="text"></input>
		<br>
		<br>
	    <button type="submit">Sell it</button>
	    
	</form>

</body>
</html>