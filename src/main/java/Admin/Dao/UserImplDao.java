package Admin.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Admin.Controler.Reservation;
import Admin.Controler.User;

public class UserImplDao implements UserDao {

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		List<User> livres= new ArrayList<User>();
		Connection conn=BdConnection.getConnection();
		try {
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM client");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				User l = new User();
				l.setCne(rs.getString("cnie"));
				l.setNom(rs.getString("nom"));
				l.setPrenom(rs.getString("prenom"));
				l.setEmail(rs.getString("email"));
				l.setTelephone(String.valueOf(rs.getInt("telephone")));
				l.setAdresse(rs.getString("adresse"));
				l.setMotpass(rs.getString("motdepasse"));
				l.setGender(rs.getString("gender"));
				l.setSolde(rs.getDouble("solde"));
				livres.add(l);
				
				}
			conn.close();
			}
		catch (Exception e) {
			// TODO: handle exception
		}
		return livres;
	}

	@Override
	public void deleteUser(String cne) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="DELETE FROM `client` WHERE cnie=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, cne);
			ps.executeUpdate();
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	@Override
	public User getUser(String cne) {
		// TODO Auto-generated method stub
		User l= new User();
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `client` WHERE cnie=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, cne);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				l.setCne(rs.getString("cnie"));
				l.setNom(rs.getString("nom"));
				l.setPrenom(rs.getString("prenom"));
				l.setEmail(rs.getString("email"));
				//l.setTelephone(rs.getString("telephone"));
				l.setTelephone(String.valueOf(rs.getInt("telephone")));
				l.setAdresse(rs.getString("adresse"));
				l.setMotpass(rs.getString("motdepasse"));
				l.setGender(rs.getString("gender"));
				l.setSolde(rs.getDouble("solde"));
			}
			
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return l;
	}

	@Override
	public void updateUser(User u, String cne) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="UPDATE  `client` set  nom=?,prenom=?, email=?, telephone=?, adresse=?, motdepasse=?, gender=?, solde=? WHERE cnie=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, u.getNom());
			ps.setString(2, u.getPrenom());
			ps.setString(3, u.getEmail());
			//ps.setString(4, u.getTelephone());
			ps.setInt(4, Integer.valueOf(u.getTelephone()));
			ps.setString(5, u.getAdresse());
			ps.setString(6, u.getMotpass());
			ps.setString(7, u.getGender());
			ps.setDouble(8, u.getSolde());
			ps.setString(9, cne);
			ps.executeUpdate();
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

	@Override
	public void addUser(User u) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="INSERT INTO `client`( `nom`, `prenom`, `email`, `telephone`, `adresse`, `motdepasse`, `gender`, `cnie`, `solde`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";
         
		try {
		
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, u.getNom());
			ps.setString(2, u.getPrenom());
			ps.setString(3, u.getEmail());
			//ps.setString(4, u.getTelephone());
			ps.setInt(4, Integer.valueOf(u.getTelephone()));
			ps.setString(5, u.getAdresse());
			ps.setString(6, u.getMotpass());
			ps.setString(7, u.getGender());
			ps.setString(8, u.getCne());
			ps.setDouble(9, u.getSolde());
			
			
			ps.executeUpdate();
			
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			}
		
	}

}
