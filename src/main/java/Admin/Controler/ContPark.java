package Admin.Controler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Admin.Dao.ParkDao;
import Admin.Dao.ParkImplDao;

import Admin.Metier.ParkModel;



/**
 * Servlet implementation class ContPark
 */
@WebServlet("/ContPark")
public class ContPark extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ParkDao op;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContPark() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
   	public void init() throws ServletException {
   		// TODO Auto-generated method stub
   		op=new ParkImplDao();
   		
   	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getAttribute("x")!=null) {
			List<Park> prods = op.getAll();
			ParkModel mod= new ParkModel();
			mod.setParks(prods);
	        
			request.setAttribute("modele", mod);
			request.getRequestDispatcher("Admin1/parks.jsp").forward(request,response);
			
		}
		else if(request.getParameter("action")!=null) {
			if(request.getParameter("action").equals("s") && request.getParameter("id")!=null) {
				op.deletePark(Integer.parseInt(request.getParameter("id")));
				List<Park> prods = op.getAll();
				ParkModel mod= new ParkModel();
				mod.setParks(prods);
		        
				request.setAttribute("modele", mod);
				response.sendRedirect("Admin1/parks.jsp");
				//request.getRequestDispatcher("Admin1/parks.jsp").forward(request,response);
				
			}
			if(request.getParameter("action").equals("u") && request.getParameter("id")!=null) {
				Park l = op.getPark(Integer.parseInt(request.getParameter("id")));
				 request.setAttribute("livre", l);
				request.getRequestDispatcher("Admin1/editPark.jsp").forward(request,response);
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
		        String adresse = request.getParameter("adresse");
		        int nplace = Integer.valueOf(request.getParameter("nplace"));
		        
		       
		     op.updatePark(new Park(nplace, nom, adresse), id);
		     System.out.println(" Avant appel save");
		     List<Park> prods = op.getAll();
		     ParkModel mod= new ParkModel();
			mod.setParks(prods);
			
			request.setAttribute("modele", mod);
			
			response.sendRedirect("Admin1/parks.jsp");
			//request.getRequestDispatcher("Admin1/fil.jsp").forward(request,response);
	}
		if(request.getParameter("f") != null && Integer.parseInt(request.getParameter("f")) ==2) {
			
			 String nom = request.getParameter("nom");
		        String adresse = request.getParameter("adresse");
		        int nplace = Integer.valueOf(request.getParameter("nplace"));
		        op.addPark(new Park(nplace, nom, adresse));
			     
			     List<Park> prods = op.getAll();
			     ParkModel mod= new ParkModel();
				mod.setParks(prods);
				System.out.println(" Open setatrubute");
				request.setAttribute("modele", mod);
				System.out.println(" Open Livres");
				response.sendRedirect("Admin1/parks.jsp");
			
		}
	}

}
