package web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import dao.conexion;

public class client {
private String cne , nom , prenom , email , motdepasse, adresse , gender ;
private int telephone ,  id ;
private double solde;
public String getCne() {
	return cne;
}


public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public void setCne(String cne) {
	this.cne = cne;
}
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public String getPrenom() {
	return prenom;
}
public void setPrenom(String prenom) {
	this.prenom = prenom;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMotdepasse() {
	return motdepasse;
}
public void setMotdepasse(String motdepasse) {
	this.motdepasse = motdepasse;
}
public String getAdresse() {
	return adresse;
}
public void setAdresse(String adresse) {
	this.adresse = adresse;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public int getTelephone() {
	return telephone;
}
public void setTelephone(int telephone) {
	this.telephone = telephone;
}


public double getSolde() {
	return solde;
}


public void setSolde(double solde) {
	this.solde = solde;
}


public client find(int id){
	client c=new client();
	Connection con= conexion.getConnection();
       try{
    	    String query="select * from client where id='"+id+"'";	
    	    
    	    PreparedStatement ps=con.prepareStatement(query);
    	    ResultSet rs=ps.executeQuery();
    	    
    	    while(rs.next()) {
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
    		}catch(Exception e){ 
    			System.out.println(e);
    		} 
	
	  return c;
}
//public double returnSolde(int id) {
//	Client client =new Client();
//	Connection con= SingletonConnection.getConnection();
//       try{
//    	    
// 	       String query = "select * from client where id = "+id+" ";
// 	       PreparedStatement ps= con.prepareStatement(query);
// 	   
// 	       ResultSet rs=ps.executeQuery();
//	 	      while(rs.next()) {
//		       double solde =rs.getDouble("solde");
//	 	      }
//    		}catch(Exception e){ 
//    			System.out.println(e);
//    		} 
//	return solde;
//}

public void updateSolde(int id ,double price) {
	Connection con= conexion.getConnection();
       try{
    	    
    	 // create the java mysql update preparedstatement
 	       String query = "update client set solde = solde - ? where id = ?";
 	       PreparedStatement preparedStmt = con.prepareStatement(query);
 	       preparedStmt.setDouble(1, price);
 	       preparedStmt.setInt(2, id);

 	       // execute the java preparedstatement
 	       preparedStmt.executeUpdate();

    		}catch(Exception e){ 
    			System.out.println(e);
    		} 
} 

public client login(String email, String pw){
	client c=new client();
	Connection con= conexion.getConnection();
       try{
    	    String query="select * from client where email='"+email+"' and password='"+pw+"'";	
    	    
    	    PreparedStatement ps=con.prepareStatement(query);
    	    ResultSet rs=ps.executeQuery();
    	    
    	    while(rs.next()) {
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
    		}catch(Exception e){ 
    			System.out.println(e);
    		} 
	
	  return c;
}

}
