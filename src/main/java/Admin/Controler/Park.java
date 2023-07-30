package Admin.Controler;

import java.io.Serializable;

public class Park implements Serializable{
	private int id,nplace;
	private String nom,adresse;
	public Park() {
		// TODO Auto-generated constructor stub
	}
	public Park(int nplace, String nom, String adresse) {
		super();
		this.nplace = nplace;
		this.nom = nom;
		this.adresse = adresse;
	}
	public Park(int id, int nplace, String nom, String adresse) {
		super();
		this.id = id;
		this.nplace = nplace;
		this.nom = nom;
		this.adresse = adresse;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNplace() {
		return nplace;
	}
	public void setNplace(int nplace) {
		this.nplace = nplace;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	
	
	

}
