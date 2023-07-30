package metier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dao.conexion;
import web.admin;


public class adminmetierimpl implements InterfaceAdminMetier {

	@Override
	public admin LoginAdmin(String email, String code) {
		
		String sql="SELECT * FROM admin";
		Connection conn=conexion.getConnection();
		admin a =new admin();
		
		try {
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				
			if (rs.getString("email").equalsIgnoreCase(email) && rs.getString("motdepasse").equals(code))
			{
				
			a.setEmail(rs.getString("email"));
			a.setMotdepasse(rs.getString("motdepasse"));
			
			}
		
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return a ;

	}

}
