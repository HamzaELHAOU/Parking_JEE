package Admin.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Admin.Controler.Park;
import Admin.Controler.Reservation;

public class ParkImplDao implements ParkDao {

	@Override
	public List<Park> getAll() {
		// TODO Auto-generated method stub
		List<Park> livres= new ArrayList<Park>();
		Connection conn=BdConnection.getConnection();
		try {
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM parking");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				Park l = new Park();
				l.setId(rs.getInt("id_parc"));
				l.setNom(rs.getString("nom"));
				l.setAdresse(rs.getString("adresse"));
				l.setNplace(rs.getInt("nombrePlace"));
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
	public void deletePark(int id) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="DELETE FROM `parking` WHERE id_parc=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	@Override
	public Park getPark(int id) {
		// TODO Auto-generated method stub
		Park l= new Park();
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `parking` WHERE id_parc=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				l.setId(rs.getInt("id_parc"));
				l.setNom(rs.getString("nom"));
				l.setAdresse(rs.getString("adresse"));
				l.setNplace(rs.getInt("nombrePlace"));
			}
			
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return l;
	}

	@Override
	public void updatePark(Park p, int id) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="UPDATE  `parking` set nom=?, adresse=?, nombrePlace=? WHERE id_parc=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, p.getNom());
			ps.setString(2, p.getAdresse());
			ps.setInt(3, p.getNplace());
			ps.setInt(4, id);
			ps.executeUpdate();
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

	@Override
	public void addPark(Park p) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="INSERT INTO `parking` ( `nom`, `adresse`, `nombrePlace`) VALUES ( ?, ?, ?);";
         
		try {
			
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, p.getNom());
			ps.setString(2, p.getAdresse());
			ps.setInt(3, p.getNplace());
			ps.executeUpdate();
			
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			}
	}

}
