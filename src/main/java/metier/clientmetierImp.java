package metier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.conexion;
import web.Reservation;
import web.client;
import web.contact;

import web.parkings;

public class clientmetierImp implements InterfaceclientMetier {

	@Override
	public void ajouterClient(client c) {
String sql=" INSERT INTO `client` (`cnie`, `nom`, `prenom`, `email`, `telephone`, `adresse`, `motdepasse`, `solde`, `gender`)"
                      + " VALUES (?, ?, ?,?, ?, ?, ?, ?, ?);";
	
		Connection conn=conexion.getConnection();
		try {
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,c.getCne());
			ps.setString(2,c.getNom());
			ps.setString(3,c.getPrenom());
			ps.setString(4,c.getEmail());
			ps.setInt(5,c.getTelephone());
			ps.setString(6,c.getAdresse());
			ps.setString(7,c.getMotdepasse());
			ps.setDouble(8,c.getSolde());
			ps.setString(9, c.getGender());
			ps.executeUpdate();
			
		
			
		} catch (Exception e) {
		System.out.println(e.getMessage());
		}
		
	}

	@Override
	public void contact(contact c1) {
		String sql=" INSERT INTO `contact` (`nom`, `prenom`, `email`, `tele`, `message`) VALUES (?, ?, ?, ?,?)";

	Connection conn=conexion.getConnection();
	try {
		
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1,c1.getNom());
		ps.setString(2,c1.getPrenom());
		ps.setString(3,c1.getEmail());
		ps.setInt(4,c1.getTele());
		ps.setString(5,c1.getMessage());
		ps.executeUpdate();
		
	
		
	} catch (Exception e) {
	System.out.println(e.getMessage());
	}
		
	}

	@Override
	public client Loginclient(String email , String code ) {
			//List<client> clients= new ArrayList<client>();
			String sql=" select * FROM client";
			Connection conn=conexion.getConnection();
			client c =new client();
			
			try {
				
				PreparedStatement ps = conn.prepareStatement(sql);
				
				ResultSet rs = ps.executeQuery();
				
				while (rs.next()) {
					
				if (rs.getString("email").equalsIgnoreCase(email) && rs.getString("motdepasse").equals(code))
				{
					
				c.setId(Integer.parseInt(rs.getString("id")));	
			    c.setCne(rs.getString("cnie"));
				c.setEmail(rs.getString("email"));
				c.setMotdepasse(rs.getString("motdepasse"));
				c.setNom(rs.getString("nom"));
				c.setPrenom(rs.getString("prenom"));
				c.setAdresse(rs.getString("adresse"));
				c.setGender(rs.getString("gender"));
				c.setSolde(Double.parseDouble(rs.getString("solde")));
				c.setTelephone(Integer.parseInt(rs.getString("telephone")));
				}
				}
				
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			return c ;
			
	}

	@Override
	public void modefierClient(client c) {
		String sql=" UPDATE client SET  nom = ?, prenom = ?, email = ?, telephone = ?, "
				+ "adresse = ?, motdepasse = ?, solde = ?, gender = ? WHERE cnie ='"+c.getCne()+"' ;";

	Connection conn=conexion.getConnection();
	try {
		
		PreparedStatement ps=conn.prepareStatement(sql);
		
		ps.setString(1,c.getNom());
		ps.setString(2,c.getPrenom());
		ps.setString(3,c.getEmail());
		ps.setInt(4,c.getTelephone());
		ps.setString(5,c.getAdresse());
		ps.setString(6,c.getMotdepasse());
		ps.setDouble(7,c.getSolde());
		ps.setString(8, c.getGender());
		ps.execute();
		
	
		
	} catch (Exception e) {
	System.out.println(e.getMessage());
	}
		
	}

	@Override
	public List<parkings> listeparc() {
	List<parkings> parc= new ArrayList<parkings>();
		String sql=" select * FROM parking";
		Connection conn=conexion.getConnection();
	
		
		try {
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				parkings p=new parkings();
		p.setId(Integer.parseInt(rs.getString("id_parc")));
		p.setAddresse(rs.getString("adresse"));	
		p.setNombre(Integer.parseInt(rs.getString("nombrePlace")));
			parc.add(p);		
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return parc ;
	}

	@Override
	public List<Reservation> listeRéservation(String code) {
		List<Reservation> res= new ArrayList<Reservation>();
		String sql=" select * FROM reservation WHERE cne ='"+code+"' ";
		Connection conn=conexion.getConnection();
	
		
		try {
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				Reservation r = new Reservation();
            r.setId(Integer.parseInt(rs.getString("id")));
            r.setId_place(Integer.parseInt(rs.getString("id_place")));
            r.setDate_debut(Integer.parseInt(rs.getString("date_debut")));
            r.setDate_fin(Integer.parseInt(rs.getString("date_fin")));
            r.setJour(rs.getString("jour"));
            r.setQuartier(rs.getString("quartier"));
            r.setNom(rs.getString("nom"));
            r.setPrenom(rs.getString("prenom"));
            r.setPrix(Double.parseDouble(rs.getString("prix")));
			res.add(r);		
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return res ;
	}

}
