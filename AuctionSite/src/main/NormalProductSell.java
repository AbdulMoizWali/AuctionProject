package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;

public class NormalProductSell {

	/*public static void main(String[] args) {
		// TODO Auto-generated method stub
		NormalBuying normalBuying = new NormalBuying();
		//normalBuying.insertNormalSellingWithProduct("Product A", "dnbgfnbdfb", "category", "Loc", "15000");
		//normalBuying.updateNormalSellingtoSold("2");
		normalBuying.getNormalSellingProducts();
	}
	*/
	
	public void insertNormalSellingWithProduct(String UserID, String Title, String Description, String Category, String Location, String Price) {
		Product product = new Product();
		product.insertProduct(UserID, Title, Description, Category, Location);
		
		if(product.getProductID() != 0) {
			insertNormalSelling(product.getProductID() + "", Price);							
		}
	}
	
	
	public void insertNormalSelling(String ProductID, String Price) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm");  
		Date date = new Date();
		String uploaddate = formatter.format(date);
		String query = null;
		query = "INSERT INTO `normal sell product` (`SellingID`, `ProductID`, `UploadDate`, `price`, `Status`) " + "VALUES (NULL, '" + ProductID + "', '"+ uploaddate +"', '" + Price + "', 'Available');";

		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =
			DriverManager.getConnection("jdbc:mysql://localhost:3306/AuctionSite","root","");
			Statement stmt=con.createStatement();
			int index = stmt.executeUpdate(query);
			if(index > 0) {
				System.out.println("Normal Selling Product Data Inserted");
			}
			else {
				System.out.println("Normal Selling Product Failed Insertion");
			}
			con.close();
		} catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	
	public boolean updateNormalSellingtoSold(String normalSellingProductID) { 
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		Date date = new Date();
		String purchasedDate = formatter.format(date);
		boolean result = false;
		String Updatequery = null;
		
		Updatequery = "UPDATE `normal sell product` SET `Status` = 'Sold' WHERE `normal sell product`.`SellingID` = " + normalSellingProductID + ";";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =
			DriverManager.getConnection("jdbc:mysql://localhost:3306/AuctionSite","root","");
			Statement stmt=con.createStatement();
			int index = stmt.executeUpdate(Updatequery);
			if(index > 0) {
				System.out.println("Data Updated");
				result = true;
			}
			else {
				System.out.println("Failed Updation");
				result = false;
			}
			con.close();
		} catch(Exception e)
		{
			System.out.println(e);
		}
		return result;
	}
	
	
	public String getNormalSellingProducts() {
		String result = "";
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AuctionSite","root","");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM `normal sell product`;");

			while(rs.next())
			{
			result += 
					" SellingID: " + rs.getInt(1) +     
					" ProductID: " + rs.getInt(2) +
					" UploadDate: " + rs.getDate(3).toString() + 
					" Price: " + rs.getInt(4) + 
					" Status: " + rs.getString(5) + "\n"
					;
			}
			System.out.println(result);
			con.close();
		} catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e + "bfdsb");
		}
		return result;
	}

}
