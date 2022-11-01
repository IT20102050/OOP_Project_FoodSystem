package com.menu;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class MenuDButil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	

	
		public static boolean insertmenu(String name, String price) {
		
		boolean isSuccess = false;
		
		//create database connection
		
				String url = "jdbc:mysql://localhost:3306/restaurant";
				String user = "root";
				String password = "HiWisidagama123";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			String sql = "insert into menu values(0,'"+name+"', '"+price+"')";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		
		catch (Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
	}
		
		 public static boolean updatemenu(String id, String name, String price) {
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update menu set itemname='"+name+"',price="+price+" where id=" + id;
		    		int rs = stmt.executeUpdate(sql);
		    		
		    		if(rs > 0) {
		    			isSuccess = true;
		    		}
		    		else {
		    			isSuccess = false;
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}
		    	
		    	return isSuccess;
		    }
		 
		    public static boolean deletemenu(String id) {
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "delete from menu where id="+id;
		    		int r = stmt.executeUpdate(sql);
		    		
		    		if (r > 0) {
		    			isSuccess = true;
		    		}
		    		else {
		    			isSuccess = false;
		    		}
		    		
		    	}
		    	catch (Exception e) {
		    		e.printStackTrace();
		    	}
		    	
		    	return isSuccess;
		    }
		    
		    
		    public static List<FoodMenu> getMenuDetails(){
		    	
		  	    	
		    	ArrayList<FoodMenu> menu = new ArrayList<>();
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql ="Select * from Menu";
		    		rs = stmt.executeQuery(sql);
		    		
		    		while(rs.next()) {
		    			int ID = rs.getInt(1);
		    			String ItemName = rs.getString(2);
		    			float Price = rs.getFloat(3);
		    			
		    		  			
		    			
		    			FoodMenu mn = new FoodMenu(ID, ItemName,Price);
		    			menu.add(mn);
		    			
		    			
		       		}
		    	}
		    	
		    	catch (Exception e){
		    		e.printStackTrace();
		    	}
		    	
		    	return menu;
		    	
		    }
		    
		    public static FoodMenu getMenuDetailsById(String id){
		    	
		    	FoodMenu mn = null;
	  	    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql ="Select * from menu Where id =" + id;
		    		rs = stmt.executeQuery(sql);
		    		
		    		if(rs.next()) {
		    			int ID = rs.getInt(1);
		    			String ItemName = rs.getString(2);
		    			float Price = rs.getFloat(3);

		    			mn = new FoodMenu(ID, ItemName,Price);
		    		
		       		}
		    	}
		    	
		    	catch (Exception e){
		    		e.printStackTrace();
		    	}
		    	
		    	return mn;
		    	
		    }

		
		    
}