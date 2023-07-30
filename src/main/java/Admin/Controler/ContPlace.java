package Admin.Controler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Admin.Dao.PlaceDao;
import Admin.Dao.PlaceImplDao;

import Admin.Metier.PlaceModel;

/**
 * Servlet implementation class ContPlace
 */
@WebServlet("/ContPlace")
public class ContPlace extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PlaceDao op;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContPlace() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
   	public void init() throws ServletException {
   		// TODO Auto-generated method stub
   		op=new PlaceImplDao();
   		
   	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getAttribute("x")!=null) {
			List<Place> prods = op.getAll();
			PlaceModel mod= new PlaceModel();
			mod.setPlaces(prods);
	        
			request.setAttribute("modele", mod);
			request.getRequestDispatcher("Admin1/places.jsp").forward(request,response);
			
		}
		else if(request.getParameter("action")!=null) {
			if(request.getParameter("action").equals("s") && request.getParameter("id")!=null) {
				op.deletePlace(Integer.parseInt(request.getParameter("id")));
				List<Place> prods = op.getAll();
				PlaceModel mod= new PlaceModel();
				mod.setPlaces(prods);
		        
				request.setAttribute("modele", mod);
				response.sendRedirect("Admin1/places.jsp");
				//request.getRequestDispatcher("Admin1/parks.jsp").forward(request,response);
				
			}
			if(request.getParameter("action").equals("u") && request.getParameter("id")!=null) {
				Place l = op.getPlace(Integer.parseInt(request.getParameter("id")));
				 request.setAttribute("livre", l);
				request.getRequestDispatcher("Admin1/editPlace.jsp").forward(request,response);
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		if(request.getParameter("f") != null && Integer.parseInt(request.getParameter("f")) ==1) {
			 int id=Integer.parseInt(request.getParameter("id"));
			 String nom = request.getParameter("nom");
		        String etat = request.getParameter("etat");
		        int idPark = Integer.valueOf(request.getParameter("idPark"));
		        
		       
		     op.updatePlace(new Place(idPark, nom, etat), id);
		     System.out.println(" Avant appel save");
		     List<Place> prods = op.getAll();
		     PlaceModel mod= new PlaceModel();
			mod.setPlaces(prods);
			
			request.setAttribute("modele", mod);
			
			response.sendRedirect("Admin1/places.jsp");
			//request.getRequestDispatcher("Admin1/fil.jsp").forward(request,response);
	}
		if(request.getParameter("f") != null && Integer.parseInt(request.getParameter("f")) ==2) {
			
			 String nom = request.getParameter("nom");
		        String etat = request.getParameter("etat");
		        int idPark = Integer.valueOf(request.getParameter("idPark"));
		        op.addPlace(new Place(idPark, nom, etat));
			     
			     List<Place> prods = op.getAll();
			     PlaceModel mod= new PlaceModel();
				mod.setPlaces(prods);
				System.out.println(" Open setatrubute");
				request.setAttribute("modele", mod);
				System.out.println(" Open Livres");
				response.sendRedirect("Admin1/places.jsp");
			
		}
	}

}
