package web;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import dao.conexion;

public class Reservation {
	
	private List<Reservation> res= new ArrayList<Reservation>();
	
	public List<Reservation> getRes() {
		return res;
	}

	public void setRes(List<Reservation> res) {
		this.res = res;
	}
	private int id;
	private int id_user;
	private String nom;
	private String prenom;
	private String email;
	private String phone;
	private String CNE;
	private double prix;
	private String quartier;
	private int id_place;
	private String jour;
	private int date_debut;
	private int date_fin;
	
	public void reserver(Reservation R){
		Connection con= conexion.getConnection();
	       try{
	    	   
	    	    String query="INSERT INTO reservation (id_user, id_place, nom, prenom, email, phone, cne, prix, quartier, jour, date_debut, date_fin) "
	    	    		+ "VALUES ('"+R.id_user+"','"+R.id_place+"','"+R.nom+"','"+R.prenom+"','"+R.email+"','"+R.phone+"','"+R.CNE+"','"+R.prix+"','"+R.quartier+"','"+R.jour+"','"+R.date_debut+"', '"+R.date_fin+"');";    	    
	    	    java.sql.Statement stmt = con.createStatement();
	    		 stmt.executeUpdate(query);
	    		}catch(Exception e){ 
	    			System.out.println(e);
	    		} 
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCNE() {
		return CNE;
	}
	public void setCNE(String cNE) {
		CNE = cNE;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public String getQuartier() {
		return quartier;
	}
	public void setQuartier(String quartier) {
		this.quartier = quartier;
	}
	public int getId_place() {
		return id_place;
	}
	public void setId_place(int id_place) {
		this.id_place = id_place;
	}
	public String getJour() {
		return jour;
	}
	public void setJour(String jour) {
		this.jour = jour;
	}
	public int getDate_debut() {
		return date_debut;
	}
	public void setDate_debut(int date_debut) {
		this.date_debut = date_debut;
	}
	public int getDate_fin() {
		return date_fin;
	}
	public void setDate_fin(int date_fin) {
		this.date_fin = date_fin;
	}
		
	
}
