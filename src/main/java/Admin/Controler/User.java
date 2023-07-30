package Admin.Controler;

import java.io.Serializable;

public class User implements Serializable {
	private String cne,nom,prenom,email,telephone,adresse,motpass,gender;
	private double Solde;
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	
	
		public String getAdresse() {
		return adresse;
	}



	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}



		public User(String cne, String nom, String prenom, String email, String telephone, String adresse, String motpass, String gender) {
		super();
		this.cne = cne;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.telephone = telephone;
		this.adresse = adresse;
		this.motpass = motpass;
		
		this.gender = gender;
	}
		public User(String cne, String nom, String prenom, String email, String telephone, String adresse, String motpass, String gender, double solde) {
			super();
			this.cne = cne;
			this.nom = nom;
			this.prenom = prenom;
			this.email = email;
			this.telephone = telephone;
			this.adresse = adresse;
			this.motpass = motpass;
			
			this.gender = gender;
			this.Solde=solde;
		}



		public double getSolde() {
			return Solde;
		}



		public void setSolde(double solde) {
			Solde = solde;
		}



		public String getCne() {
		return cne;
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
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getMotpass() {
		return motpass;
	}
	public void setMotpass(String motpass) {
		this.motpass = motpass;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	

}
