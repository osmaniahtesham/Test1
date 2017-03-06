package db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtils {

	static Connection con=null;
	static Statement stmt=null;
	static PreparedStatement pstmt=null;
	static
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static Connection getConnection1()
	{
		try {
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ahtesham","root","root");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
		
	}
	
	public static Statement getStatement()
	{
		try {
			stmt=con.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return stmt;
		
	}
	
	public static PreparedStatement getPreparedStatement(int r,String q)
	{
		
		try {
			pstmt=con.prepareStatement("update student set roll_no=? where name=?");
			
			pstmt.setInt(1, r);
			pstmt.setString(2, q);
			
			int i=pstmt.executeUpdate();
			System.out.println(i+" rows updated.");
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
		return pstmt;
		
	}

}
