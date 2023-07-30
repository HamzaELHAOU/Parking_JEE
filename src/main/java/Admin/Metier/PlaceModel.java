package Admin.Metier;

import java.util.ArrayList;
import java.util.List;

import Admin.Controler.Place;

public class PlaceModel {
	private int id,nplace;
	private String nom,adresse;
	private List<Place> places = new ArrayList<>();
	public PlaceModel() {
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
	public List<Place> getPlaces() {
		return places;
	}
	public void setPlaces(List<Place> places) {
		this.places = places;
	}
	

}
