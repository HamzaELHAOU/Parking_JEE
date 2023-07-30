package Admin.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Admin.Controler.Admin;

public class Login1 {

	
	public static boolean Log(String u,String p) {
		boolean x=false;
		
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `admin` WHERE userName=? and passe=?;";
      
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, u);
			ps.setString(2, p);
			ResultSet rs=ps.executeQuery();
			System.out.println(rs.getRow()+"  hh"+rs.getFetchSize()+" ");
			if(rs.next()) { System.out.println("exist");
				x=true;}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return x;
	}
	public static Admin getAdmin(String u,String p) {
      Admin a = new Admin();		
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `admin` WHERE userName=? and passe=?;";
      
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, u);
			ps.setString(2, p);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
		    a.setId(rs.getInt("id"));
			a.setFullName(rs.getString("fullName"));
			a.setUserName(rs.getString("userName"));
			a.setTelephone(rs.getString("telephone"));
			a.setEmail(rs.getString("email"));
			a.setPass(rs.getString("passe"));
				
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return a;
	}
	
	public static void updateAdmine(String fullName,String userName, String email, String telephone,int id) {
		Connection conn=BdConnection.getConnection();
		String sql="UPDATE  `admin` set fullName=?, userName=?, email=? , telephone=? WHERE id=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, fullName);
			ps.setString(2, userName);
			ps.setString(3, email);
			ps.setString(4, telephone);
			ps.setInt(5, id);
			ps.executeUpdate();
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	public static Admin getAdminById(int id) {
	      Admin a = new Admin();		
			Connection conn=BdConnection.getConnection();
			String sql="SELECT *  FROM `admin` WHERE id=?;";
	      
			try {
				PreparedStatement ps= conn.prepareStatement(sql);
				ps.setInt(1, id);

				ResultSet rs=ps.executeQuery();
				while (rs.next()) {
			    a.setId(rs.getInt("id"));
				a.setFullName(rs.getString("fullName"));
				a.setUserName(rs.getString("userName"));
				a.setTelephone(rs.getString("telephone"));
				a.setEmail(rs.getString("email"));
				a.setPass(rs.getString("passe"));
					
				}
			}catch (Exception e) {
				// TODO: handle exception
			}
			return a;
		}
	public static void updatePass(String old,String pass) {
		Connection conn=BdConnection.getConnection();
		String sql="UPDATE  `admin` set  passe=? WHERE id=? AND passe=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, pass);
			ps.setInt(2, 1);
			ps.setString(3, old);
			ps.executeUpdate();
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	public static String getAdminName(int id) {
		String x="";
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `admin` WHERE id=?;";
      
		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
			x=rs.getString("fullName");
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return x;
		
	}
	
}
