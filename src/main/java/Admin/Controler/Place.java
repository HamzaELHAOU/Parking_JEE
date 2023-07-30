package Admin.Controler;

import java.io.Serializable;

public class Place implements Serializable {
  private int id,idPark;
  String nom,etat;
  public Place() {
	// TODO Auto-generated constructor stub
}
public Place(int idPark, String nom, String etat) {
	super();
	this.idPark = idPark;
	this.nom = nom;
	this.etat = etat;
}

public Place(int id, int idPark, String nom, String etat) {
	super();
	this.id = id;
	this.idPark = idPark;
	this.nom = nom;
	this.etat = etat;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getIdPark() {
	return idPark;
}
public void setIdPark(int idPark) {
	this.idPark = idPark;
}
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public String getEtat() {
	return etat;
}
public void setEtat(String etat) {
	this.etat = etat;
}
  
}
