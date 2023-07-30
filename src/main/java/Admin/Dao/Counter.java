package Admin.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Counter {

	
	public static int getReservations() {
		int x =0;
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `reservation` ";
      
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) { 
				x++;
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return x;
	}
	
	public static int getUsers() {
		int x =0;
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `client` ";
      
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) { 
				x++;
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return x;
	}
	
	public static int getParks() {
		int x =0;
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `parking` ";
      
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) { 
				x++;
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return x;
	}
	
	public static int getPlaces() {
		int x =0;
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `place` ";
      
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) { 
				x++;
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return x;
	}
	public static int getPlacesByPark(int id) {
		int x =0;
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `place` WHERE idPark=?; ";
      
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) { 
				x++;
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return x;
	}
	public static String[] getParkNames() {
		int a= Counter.getParks();
		int i=0;
		String[] x =new String[a];
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `parking` ";
      
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) { 
		    x[i]=rs.getString("nom");
		    i++;
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return x;

	}
	
	
}
