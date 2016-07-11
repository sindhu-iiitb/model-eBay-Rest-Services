package ebay.rest.service;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import ebay.rest.model.ItemModel;
import ebay.rest.util.DbConnection;


public class ColorandBrandService {
	
	@SuppressWarnings("null")
	public ArrayList<ItemModel> getItemModelsforColor(String color,String brand){
		ArrayList<ItemModel> ItemModelList = new ArrayList<>();
		DbConnection db=new DbConnection();
		Connection con=db.getConnection();
		String query="Select * from item where color=? and brand=?";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, color);
			ps.setString(2, brand);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				ItemModel u=new ItemModel();
				u.setBrand(rs.getString("brand"));
				u.setColor(rs.getString("color"));
				u.setPicture(rs.getString("picture"));
				u.setItem_Name(rs.getString("item_name"));
				ItemModelList.add(u);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ItemModelList;
		
	}

	public ArrayList<ItemModel> getItemModelsforColorandprice(String color, int price1, int price2) {
		ArrayList<ItemModel> ItemModelList = new ArrayList<>();
		DbConnection db=new DbConnection();
		Connection con=db.getConnection();
		String query="Select * from item where color=? and price between ? and ?";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, color);
			ps.setInt(2, price1);
			ps.setInt(3, price2);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				ItemModel u=new ItemModel();
				u.setPrice(rs.getInt("price"));
				u.setColor(rs.getString("color"));
				u.setPicture(rs.getString("picture"));
				u.setItem_Name(rs.getString("item_name"));
				ItemModelList.add(u);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ItemModelList;
	}
	
	
}
