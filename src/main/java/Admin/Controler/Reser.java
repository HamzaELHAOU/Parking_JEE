package Admin.Controler;

import java.io.Serializable;

public class Reser implements Serializable {
	private int id,debut,fin,idplace;
	private String nom,prenom,adresse,jour;
	private double prix;
	public Reser() {
		// TODO Auto-generated constructor stub
	}
	
	public Reser(int debut, int fin, int idplace, String nom, String prenom, String adresse, String jour, double prix) {
		super();
		this.debut = debut;
		this.fin = fin;
		this.idplace = idplace;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.jour = jour;
		this.prix = prix;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getDebut() {
		return debut;
	}
	public void setDebut(int debut) {
		this.debut = debut;
	}
	public int getFin() {
		return fin;
	}
	public void setFin(int fin) {
		this.fin = fin;
	}
	public int getIdplace() {
		return idplace;
	}
	public void setIdplace(int idplace) {
		this.idplace = idplace;
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
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getJour() {
		return jour;
	}
	public void setJour(String jour) {
		this.jour = jour;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	
	

}
