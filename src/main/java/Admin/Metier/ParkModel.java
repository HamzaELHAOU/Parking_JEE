package Admin.Metier;

import java.util.ArrayList;
import java.util.List;

import Admin.Controler.Park;

public class ParkModel {
	private int id,nplace;
	private String nom,adresse;
	private List<Park> parks = new ArrayList<>();
	public ParkModel() {
		// TODO Auto-generated constructor stub
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
	public List<Park> getParks() {
		return parks;
	}
	public void setParks(List<Park> parks) {
		this.parks = parks;
	}


}
