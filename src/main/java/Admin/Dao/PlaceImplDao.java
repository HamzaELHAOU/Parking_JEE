package Admin.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Admin.Controler.Place;

public class PlaceImplDao implements PlaceDao {

	
	@Override
	public List<Place> getAll() {
		// TODO Auto-generated method stub
		List<Place> livres= new ArrayList<Place>();
		Connection conn=BdConnection.getConnection();
		try {
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM place");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				Place l = new Place();
				l.setId(rs.getInt("id"));
				l.setIdPark(rs.getInt("idPark"));
				l.setNom(rs.getString("nom"));
				l.setEtat(rs.getString("etat"));
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
	public void deletePlace(int id) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="DELETE FROM `place` WHERE id=?;";

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
	public Place getPlace(int id) {
		// TODO Auto-generated method stub
		Place l= new Place();
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `place` WHERE id=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				l.setId(rs.getInt("id"));
				l.setIdPark(rs.getInt("idPark"));
				l.setNom(rs.getString("nom"));
				l.setEtat(rs.getString("etat"));
			}
			
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return l;
	}

	@Override
	public void updatePlace(Place p, int id) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="UPDATE  `place` set  idPark=?, nom=?, etat=? WHERE id=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1, p.getIdPark());
			ps.setString(2, p.getNom());
			ps.setString(3, p.getEtat());
			ps.setInt(4, id);
			ps.executeUpdate();
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

	@Override
	public void addPlace(Place p) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="INSERT INTO `place` ( `idPark`, `nom`,  `etat`) VALUES ( ?, ?, ?);";
         
		try {
			
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1, p.getIdPark());
			ps.setString(2, p.getNom());
			ps.setString(3, p.getEtat());
			ps.executeUpdate();
			
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			}
	}

	@Override
	public List<Place> getAllById(int idPark) {
		// TODO Auto-generated method stub
		List<Place> livres= new ArrayList<Place>();
		Connection conn=BdConnection.getConnection();
		try {
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM place WHERE idPark=?;");
			ps.setInt(1, idPark);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				Place l = new Place();
				l.setId(rs.getInt("id"));
				l.setIdPark(rs.getInt("idPark"));
				l.setNom(rs.getString("nom"));
				l.setEtat(rs.getString("etat"));
				livres.add(l);
				
				}
			conn.close();
			}
		catch (Exception e) {
			// TODO: handle exception
		}
		return livres;
	}
}
