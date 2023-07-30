package Admin.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Admin.Controler.Reser;
import Admin.Controler.Reservation;




public class ReservationImplDao  implements ReservationDao{

	
	
	@Override
	public List<Reservation> getAll() {
		// TODO Auto-generated method stub
		List<Reservation> livres= new ArrayList<Reservation>();
		Connection conn=BdConnection.getConnection();
		try {
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM reservation");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				Reservation l = new Reservation();
				l.setId(rs.getInt("id"));
				l.setPark(rs.getString("email"));
				l.setPlace(rs.getInt("id"));
				l.setHeures(rs.getInt("heures"));
				l.setDebut(String.valueOf(rs.getDate("date_debut")));
				l.setFin(String.valueOf(rs.getDate("date_fin")));
				l.setPrix(rs.getDouble("prix"));
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
	public void deleteReservation(int id) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="DELETE FROM `reservation` WHERE id=?;";

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
	public Reservation getReservation(int id) {
		// TODO Auto-generated method stub
		Reservation l= new Reservation();
		Connection conn=BdConnection.getConnection();
		String sql="SELECT *  FROM `reservation` WHERE id=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				l.setId(rs.getInt("id"));
				l.setPark(rs.getString("park"));
				l.setPlace(rs.getInt("place"));
				l.setHeures(rs.getInt("heures"));
				l.setDebut(String.valueOf(rs.getDate("debut")));
				l.setFin(String.valueOf(rs.getDate("fin")));
				l.setPrix(rs.getDouble("prix"));
			}
			
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return l;
	}

	@Override
	public void updateReservation(Reservation r, int id) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="UPDATE  `reservation` set park=?, place=?,heures=?, debut=?, fin=?, prix=? WHERE id=?;";

		try {
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, r.getPark());
			ps.setInt(2, r.getPlace());
			ps.setInt(3, r.getHeures());
			ps.setString(4, r.getDebut());
			ps.setString(5, r.getFin());
			ps.setDouble(6, r.getPrix());
			ps.setInt(7, id);
			ps.executeUpdate();
			conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}

	@Override
	public void addReservation(Reservation r) {
		// TODO Auto-generated method stub
		Connection conn=BdConnection.getConnection();
		String sql="INSERT INTO `reservation`( `park`, `place`, `heures`, `debut`, `fin`, `prix`) VALUES (?, ?, ?, ?, ?, ?);";
         
		try {
			System.out.println(" Open Tey");
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, r.getPark());
			ps.setInt(2, r.getPlace());
			ps.setInt(3, r.getHeures());
			ps.setString(4, r.getDebut());
			ps.setString(5, r.getFin());
			ps.setDouble(6, r.getPrix());
			System.out.println(" avant appel  Update");
			ps.executeUpdate();
			System.out.println(" apres appell Update");
			conn.close();
			System.out.println(" Fin Try");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			}
	}
	
	@Override
	public List<Reser> getAllR() {
		// TODO Auto-generated method stub
		List<Reser> livres= new ArrayList<Reser>();
		Connection conn=BdConnection.getConnection();
		try {
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM reservation");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				Reser l = new Reser();
				l.setId(rs.getInt("id"));
				l.setDebut(rs.getInt("date_debut"));
				l.setFin(rs.getInt("date_fin"));
				l.setIdplace(rs.getInt("id_place"));
				l.setNom(rs.getString("nom"));
				l.setPrenom(rs.getString("prenom"));
				l.setAdresse(rs.getString("quartier"));
				l.setJour(rs.getString("jour"));
				l.setPrix(Double.valueOf(rs.getString("prix")));
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
