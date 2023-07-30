package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import dao.conexion;
import metier.InterfaceAdminMetier;
import metier.InterfaceclientMetier;
import metier.adminmetierimpl;
import metier.clientmetierImp;

//@WebServlet("/controleur")
public class controleur extends HttpServlet {
	 HttpSession session ;
	private static final long serialVersionUID = 1L;
       InterfaceclientMetier metier ;
       InterfaceAdminMetier metierAdmin;
   
    public controleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    String path =request.getServletPath();

	// liste parking 	 
	 if(path.equals("/liste.do")) {
		 parkings p =new parkings();
		 metier = new clientmetierImp();
		 p.setParc(metier.listeparc());
		 request.setAttribute("liste", p);
	     request.getRequestDispatcher("listeparc.jsp").forward(request, response);
	   }
	 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path =request.getServletPath();  
		
		// ajouter client (creer compte)
		 if(path.equals("/creationClient.do")) {
			 String cne =request.getParameter("cne");
			 String nom=request.getParameter("nom");
			 String prenom=request.getParameter("prenom");
			 String email=request.getParameter("email");
			 String code=request.getParameter("code");
			 String adresse = request.getParameter("adresse");
			 String gender = request.getParameter("gender");
			 int tele=Integer.parseInt(request.getParameter("tele"));
			 int numeroCompte=Integer.parseInt(request.getParameter("compte"));
			 client clientAjoute = new client();
			 clientAjoute.setCne(cne);
			 clientAjoute.setNom(nom);
			 clientAjoute.setPrenom(prenom);
			 clientAjoute.setAdresse(adresse);
			 clientAjoute.setEmail(email);
			 clientAjoute.setMotdepasse(code);
			 clientAjoute.setGender(gender);
			 clientAjoute.setSolde(numeroCompte);
			 clientAjoute.setTelephone(tele);
			 
			 metier = new clientmetierImp();
			 metier.ajouterClient(clientAjoute); 
		
    request.getRequestDispatcher("home.jsp").forward(request, response);
		    	}
		 
		 
		 // message de conactez nous 
		 if(path.equals("/contact.do")) {
			 String nom=request.getParameter("nom");
			 String prenom=request.getParameter("prenom");
			 String email=request.getParameter("email");
			 int tele=Integer.parseInt(request.getParameter("tele"));
			 String message=request.getParameter("message");
			contact con = new contact();
			 con.setNom(nom);
			 con.setPrenom(prenom);
			 con.setEmail(email);
			 con.setTele(tele);
			 con.setMessage(message );
			 metier = new clientmetierImp();
			 metier.contact(con);
			 request.getRequestDispatcher("user.jsp").forward(request, response);
	
		    	}
		 
		 
		 
		 

		    	
		 // login Admin
		 
		 
		 if(path.equals("/loginAdmin.do")) {
			  session = request.getSession();
			 String email=request.getParameter("email");
			String motdepasse=request.getParameter("codea");
	      admin a  = new admin();
			 metierAdmin = new adminmetierimpl();
		      a=metierAdmin.LoginAdmin(email, motdepasse);      
		     if(a.getEmail()!=null){
		        	 session.setAttribute("admin",a);  
		        	 request.getRequestDispatcher("user.jsp").forward(request, response);
		           }
		           else  { request.getRequestDispatcher("home.jsp").forward(request, response);}
			       }
		 
		 
		 // modefier compte client 
		 
		 if(path.equals("/modefierCompte.do")) {
			 session = request.getSession(false);
			 String cne =request.getParameter("cne");
			 String nom=request.getParameter("nom");
			 String prenom=request.getParameter("prenom");
			 String email=request.getParameter("email");
			 String code=request.getParameter("codem");
			 String adresse = request.getParameter("adresse");
			 String gender = request.getParameter("gender");
			 int tele=Integer.parseInt(request.getParameter("tele"));
			 int numeroCompte=Integer.parseInt(request.getParameter("compte"));
			 client c = new client();
			 c.setCne(cne);
			 c.setNom(nom);
			 c.setPrenom(prenom);
			 c.setAdresse(adresse);
			c.setEmail(email);
			c.setMotdepasse(code);
			c.setGender(gender);
			 c.setSolde(numeroCompte);
			 c.setTelephone(tele);
			 
			 session.setAttribute("cnie",c.getCne());
        	 session.setAttribute("nom",c.getNom());
        	 session.setAttribute("prenom",c.getPrenom());
        	 session.setAttribute("email",c.getEmail());
        	 session.setAttribute("tele",c.getTelephone());
        	 session.setAttribute("gender",c.getGender());
        	 session.setAttribute("code",c.getMotdepasse());
        	 session.setAttribute("adresse",c.getAdresse());
        	 session.setAttribute("compte",c.getSolde());
			 
			 
			 metier = new clientmetierImp();
			 metier.modefierClient(c);
		
    request.getRequestDispatcher("user.jsp").forward(request, response);
			       }
		 
		 
		 ////////////////////////////////////////////////////////////////////////////////
		 
	
			
			if(path.equals("/chercher.do")) {
				Place place= new Place();
				String quartier = request.getParameter("quartier");
				String jour = request.getParameter("jour");
				int datedebut = Integer.valueOf(request.getParameter("datedebut"));
				int datefin = Integer.valueOf(request.getParameter("datefin"));
				int id_park = Integer.valueOf(request.getParameter("id_park"));

				List<Place> lists =  place.list(id_park,jour,datedebut,datefin);
				int n=lists.size();
				 place.setPlaces(lists);
				 
				 request.setAttribute("size_list", n);
				request.setAttribute("place",  place);
				request.getRequestDispatcher("listschercher.jsp").forward(request, response);

			}
			// demande reservation
			if(path.equals("/demande_reserve.do")) {
				int id=Integer.valueOf(request.getParameter("id"));
				double prix=Double.valueOf(request.getParameter("prix"));
				String jour = request.getParameter("jour");
				int date_debut = Integer.valueOf(request.getParameter("date_debut"));
				int date_fin = Integer.valueOf(request.getParameter("date_fin"));
				String quartier = request.getParameter("quartier");
				
				Place place =new Place();
				
				place.setId(id);
				place.setPrix(prix);
				place.setJour(jour);
				place.setDate_debut(date_debut);
				place.setDate_fin(date_fin);
				place.setQuartier(quartier);
				
				request.setAttribute("place", place);
				request.getRequestDispatcher("reserver.jsp").forward(request, response);
				
			}
			//reserver
			if(path.equals("/reserver.do")) {
				Reservation reservation =new Reservation();
				reservation.setId_user(Integer.valueOf(request.getParameter("id_user")) );
				reservation.setId_place(Integer.valueOf(request.getParameter("id_place")) );
				reservation.setNom(request.getParameter("nom"));
				reservation.setPrenom(request.getParameter("prenom"));
				reservation.setEmail(request.getParameter("email"));
				reservation.setCNE(request.getParameter("cne"));
				reservation.setPhone(request.getParameter("phone"));
				reservation.setQuartier(request.getParameter("quartier"));
				reservation.setPrix(Double.valueOf(request.getParameter("prix")));
				reservation.setJour(request.getParameter("jour"));
				reservation.setDate_debut(Integer.valueOf(request.getParameter("date_debut")));
				reservation.setDate_fin(Integer.valueOf(request.getParameter("date_fin")));
				
				client c = new client();
				int id = Integer.valueOf(request.getParameter("id_user"));
				double prix = Double.valueOf(request.getParameter("prix"));
				
				c=c.find(id);
				double solde=c.getSolde();
				System.out.println(c.getSolde());
				System.out.println(prix);
				
				Place place =new Place();
				place=place.find(Integer.valueOf(request.getParameter("id_place")));
				
				place.setDate_debut(Integer.valueOf(request.getParameter("date_debut")));
				place.setDate_fin(Integer.valueOf(request.getParameter("date_fin")));
				place.setQuartier(request.getParameter("quartier"));
				place.setPrix(prix);
				
				if(prix>solde) {
					request.setAttribute("message", "votre solde insufisant pour effectier cette reservation");
	                request.setAttribute("place", place);
					request.getRequestDispatcher("reserver.jsp").forward(request, response);
				}
				else {
					c.updateSolde(id, prix);
					reservation.reserver(reservation);
					request.setAttribute("message", "votre reservation est effectue avec succee");
	                request.setAttribute("place", place);
	                Reservation reserve= new Reservation();
					 metier = new clientmetierImp();
					reserve.setRes(metier.listeRéservation(c.getCne()));
		            request.setAttribute("reserve", reserve);
		            
		            
					 session.setAttribute("cnie",c.getCne());
		        	 session.setAttribute("nom",c.getNom());
		        	 session.setAttribute("prenom",c.getPrenom());
		        	 session.setAttribute("email",c.getEmail());
		        	 session.setAttribute("tele",c.getTelephone());
		        	 session.setAttribute("gender",c.getGender());
		        	 session.setAttribute("code",c.getMotdepasse());
		        	 session.setAttribute("adresse",c.getAdresse());
		        	 session.setAttribute("compte",c.getSolde());
		        	 session.setAttribute("message", "votre reservation est effectue avec succee");
					request.getRequestDispatcher("user.jsp").forward(request, response);
				}
				
			}
			// login client 
			 if(path.equals("/login.do")) {
				 
				String email=request.getParameter("email");
				String pw=request.getParameter("codel");
				int id_place = Integer.valueOf(request.getParameter("id_place"));
				int date_debut = Integer.valueOf(request.getParameter("date_debut"));
				int date_fin = Integer.valueOf(request.getParameter("date_fin"));
				double prix =Double.parseDouble(request.getParameter("prix"));
				String quartier=request.getParameter("quartier");
				
				client c=new client();
				 metier = new clientmetierImp();
				 c=metier.Loginclient(email,pw);
				if(c.getCne()==null) {
					request.setAttribute("message_login", "Email ou Mot de passe incorecte");
					request.getRequestDispatcher("loginClient.jsp").forward(request, response);
				}
				else {
					session=request.getSession();
					String ressession=session.getId();
					
					session.setAttribute("ids", ressession);
					session.setAttribute("id_user", c.getId());
					request.setAttribute("client", c);
					if(id_place > -1) {
						Place place =new Place();
						place = place.find(id_place);
			            place.setDate_debut(date_debut);
			            place.setDate_fin(date_fin);
			            place.setPrix(prix);
			            place.setQuartier(quartier);
						request.setAttribute("place", place);
						
						request.getRequestDispatcher("reserver.jsp").forward(request, response);
					}
					else {
						
						Reservation reserve= new Reservation();
						 metier = new clientmetierImp();
						reserve.setRes(metier.listeRéservation(c.getCne()));
			            request.setAttribute("reserve", reserve);
			            
			            
						 session.setAttribute("cnie",c.getCne());
			        	 session.setAttribute("nom",c.getNom());
			        	 session.setAttribute("prenom",c.getPrenom());
			        	 session.setAttribute("email",c.getEmail());
			        	 session.setAttribute("tele",c.getTelephone());
			        	 session.setAttribute("gender",c.getGender());
			        	 session.setAttribute("code",c.getMotdepasse());
			        	 session.setAttribute("adresse",c.getAdresse());
			        	 session.setAttribute("compte",c.getSolde());
						request.getRequestDispatcher("user.jsp").forward(request, response);
					}
				}
				
			}
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
	}

}
