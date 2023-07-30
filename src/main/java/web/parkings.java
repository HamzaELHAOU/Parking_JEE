package web;

import java.util.ArrayList;
import java.util.List;

public class parkings {
	private List<parkings> parc= new ArrayList<parkings>();
private int id , nombre ; 
private String addresse;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getNombre() {
	return nombre;
}
public void setNombre(int nombre) {
	this.nombre = nombre;
}
public String getAddresse() {
	return addresse;
}
public void setAddresse(String addresse) {
	this.addresse = addresse;
}
public List<parkings> getParc() {
	return parc;
}
public void setParc(List<parkings> parc) {
	this.parc = parc;
}




}
