package web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.conexion;


public class Place {
	private int id;
	private String jour;
	private int date_debut;
	private int date_fin;
	private String quartier;
	private double prix;
	private String etat;
	private List<Place> places = new ArrayList<Place>();
	
	
	public String getQuartier() {
		return quartier;
	}
	public void setQuartier(String quartier) {
		this.quartier = quartier;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public String getJour() {
		return jour;
	}
	public void setJour(String jour) {
		this.jour = jour;
	}
	public List<Place> getPlaces() {
		return places;
	}
	public void setPlaces(List<Place> places) {
		this.places = places;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	
	public Place find(int id){
		Place place =new Place();
		Connection con= conexion.getConnection();
	       try{
	    	    String query="select * from place where id='"+id+"'";	
	    	    
	    	    PreparedStatement ps=con.prepareStatement(query);
	    	    ResultSet rs=ps.executeQuery();
	    	    
	    	    while(rs.next()) {
	    	    	 place.setId(rs.getInt("id"));
	    	    	 place.setJour(rs.getString("jour"));
	    	    	 
	    	    	 place.setDate_debut(rs.getInt("datedebut"));
	    	    	 place.setDate_fin(rs.getInt("datefin"));
	    	    }
	    		}catch(Exception e){ 
	    			System.out.println(e);
	    		} 
		  return place;
	}
	public String name_park(int id) {	
		Connection con= conexion.getConnection();
		String name="";
	       try{
	    	    String query="select * from parking where id_parc="+id+" ";	
	    	    
	    	    PreparedStatement ps=con.prepareStatement(query);
	    	    ResultSet rs=ps.executeQuery();
	    	    
	    	    while(rs.next()) {
	    	    	name=rs.getString("adresse");
	    	    }
	    		}catch(Exception e){ 
	    			System.out.println(e);
	    		} 
		return name;
	}
	public void reserver(Place R) {
		Connection con= conexion.getConnection();
	       try{
	    	   
	    	    String query="INSERT INTO place ( jour,datedebut, datefin, etat) VALUES ('"+R.jour+"','"+R.date_debut+"', '"+R.date_fin+"', '"+R.etat+"');";    	    
	    	    java.sql.Statement stmt = con.createStatement();
	    		 stmt.executeUpdate(query);
	    		}catch(Exception e){ 
	    			System.out.println(e);
	    		} 
		
	}
	 public List<Place> list(int id, String jour,int date_debut, int date_fin){
			Connection con= conexion.getConnection();
			List<Place> list = new ArrayList<Place>();
		       try{
		    	   
		    	    String query="select * from place where idPark="+id+"";   	    
		    	    
		    	    PreparedStatement ps=con.prepareStatement(query);
		    	    ResultSet rs=ps.executeQuery();
		    	     
			        while(rs.next()) {
			        	     int nb=0; 
			        	     Place place =new Place();
			        	     int id_place = rs.getInt("id");
			    			 System.out.println("pls "+id_place); 
			    			 
				    			 String query2 ="select * from reservation"; 
				    			 PreparedStatement ps2=con.prepareStatement(query2);
						    	 ResultSet rs2=ps2.executeQuery();
						    	
						    	 boolean statut = false;
						    	 
						    	
						    	 while(rs2.next()) {
						    		 int nb1=0;
							    	 int nb2=0;
						    		 //nb++; 
						    		 int id_place_reserver = rs2.getInt("id_place");
						    		 String day=rs2.getString("jour");
						    		 int date1=rs2.getInt("date_debut");
						    		 int date2=rs2.getInt("date_fin");
						    		 
						    		 if(date1<date_debut && date_debut<date2) {nb1=1;}
						    		 if(date1<date_fin && date_fin<date2) {nb2=1;}
						    		 
						    		 if(date_debut<date1 && date1<date_fin) {nb1=1;}
						    		 if(date_debut<date2 && date2<date_fin) {nb2=1;}
						    		 
						    		 if(date_debut==date1 && date2==date_fin) {nb2=1;}
						    		 if(date_debut >= date_fin) {nb2=1;}
						    		 
						    		 if(id_place == id_place_reserver) {
							    		 if(day.equals(jour)) {
							    			 if( nb1==1  || nb2==1) {
							    				 nb=2; 
							    			 }
							    		 }
						    		 }
						    	 }
			    			     if(nb!=2) {
			    			    	 place.setId(rs.getInt("id"));
					    	    	 place.setJour(jour);
					    	    	 place.setQuartier(place.name_park(id));
					    	    	 System.out.println("park "+place.name_park(id));
					    	    	 place.setDate_debut(date_debut);
					    	    	 place.setDate_fin(date_fin);
					    	    	 
					    	    	 
					    	    	 int duree = date_fin - date_debut ;
					    	    	 
						    	     place.setPrix(5*duree);
						    	     list.add(place); 
			    			     }		
					    		 
			    		 }
		    		}catch(Exception e){ 
		    			System.out.println(e);
		    		}
		       return list;
		}
	

}
