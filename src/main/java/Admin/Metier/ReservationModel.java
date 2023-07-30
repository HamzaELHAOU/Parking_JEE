package Admin.Metier;

import java.util.ArrayList;
import java.util.List;

import Admin.Controler.Reser;
import Admin.Controler.Reservation;

public class ReservationModel {
	 private int id,place,heures;
	   private String park,debut,fin;
	   private double prix;
	   List<Reservation> livres = new ArrayList<>();
	   List<Reser> resers = new ArrayList<>();

	   public List<Reser> getResers() {
		return resers;
	}

	public void setResers(List<Reser> resers) {
		this.resers = resers;
	}

	public ReservationModel() {
		// TODO Auto-generated constructor stub
	}

	public ReservationModel(int id, int place, int heures, String park, String debut, String fin, double prix,
			List<Reservation> livres) {
		super();
		this.id = id;
		this.place = place;
		this.heures = heures;
		this.park = park;
		this.debut = debut;
		this.fin = fin;
		this.prix = prix;
		this.livres = livres;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPlace() {
		return place;
	}

	public void setPlace(int place) {
		this.place = place;
	}

	public int getHeures() {
		return heures;
	}

	public void setHeures(int heures) {
		this.heures = heures;
	}

	public String getPark() {
		return park;
	}

	public void setPark(String park) {
		this.park = park;
	}

	public String getDebut() {
		return debut;
	}

	public void setDebut(String debut) {
		this.debut = debut;
	}

	public String getFin() {
		return fin;
	}

	public void setFin(String fin) {
		this.fin = fin;
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix(double prix) {
		this.prix = prix;
	}

	public List<Reservation> getLivres() {
		return livres;
	}

	public void setLivres(List<Reservation> livres) {
		this.livres = livres;
	}
	   
	
}
