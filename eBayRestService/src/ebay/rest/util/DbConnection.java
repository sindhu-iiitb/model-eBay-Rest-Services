package ebay.rest.util;

import java.sql.DriverManager;
import java.sql.*;

public class DbConnection {

	final static String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	final static String DB_URL = "jdbc:mysql://localhost:3306/ecommerce";
	final static String USER = "root";
	final static String PASS = "";
	public Connection con=null;
	public  Connection getConnection()
	{
		if(con==null)
		{
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = (Connection)DriverManager.getConnection(DB_URL, USER, PASS);
				System.out.println("hello in connection");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return con;
	}
	
	public void closeConnection()
	{
		try {
			if(con!=null)
				con.close();
			System.out.println("Connection Closed Successfully");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
}