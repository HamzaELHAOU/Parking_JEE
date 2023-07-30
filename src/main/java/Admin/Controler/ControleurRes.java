package Admin.Controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import Admin.Dao.ReservationDao;
import Admin.Dao.ReservationImplDao;
import Admin.Metier.ReservationModel;

/**
 * Servlet implementation class ControleurRes
 */
@WebServlet("/controleur")
public class ControleurRes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ReservationDao op;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControleurRes() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		op=new ReservationImplDao();
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			
		
		if(request.getAttribute("x")!=null) {
			List<Reser> prods = op.getAllR();
			ReservationModel mod= new ReservationModel();
			mod.setResers(prods);
	        
			request.setAttribute("modele", mod);
			request.getRequestDispatcher("Admin1/fil.jsp").forward(request,response);
			
		}
		else if(request.getParameter("action")!=null) {
			if(request.getParameter("action").equals("s") && request.getParameter("id")!=null) {
				op.deleteReservation(Integer.parseInt(request.getParameter("id")));
				List<Reservation> prods = op.getAll();
				ReservationModel mod= new ReservationModel();
				mod.setLivres(prods);
		        
				request.setAttribute("modele", mod);
				//response.sendRedirect("Admin1/fil.jsp");
				request.getRequestDispatcher("Admin1/fil.jsp").forward(request,response);
				
			}
			if(request.getParameter("action").equals("u") && request.getParameter("id")!=null) {
				Reservation l = op.getReservation(Integer.parseInt(request.getParameter("id")));
				 request.setAttribute("livre", l);
				request.getRequestDispatcher("Admin1/edit.jsp").forward(request,response);
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
			 String park = request.getParameter("park");
		        int place = Integer.valueOf(request.getParameter("place"));
		        int heures = Integer.valueOf(request.getParameter("heures"));
		        String debut = request.getParameter("debut");
		        String fin = request.getParameter("fin");
		        double prix =Double.valueOf( request.getParameter("prix"));
		       
		     op.updateReservation(new Reservation(id,heures,place,park,debut,fin,prix), id);
		     System.out.println(" Avant appel save");
		     List<Reservation> prods = op.getAll();
		     ReservationModel mod= new ReservationModel();
			mod.setLivres(prods);
			System.out.println(" Open setatrubute");
			request.setAttribute("modele", mod);
			System.out.println(" Open Livres");
			response.sendRedirect("Admin1/fil.jsp");
			//request.getRequestDispatcher("Admin1/fil.jsp").forward(request,response);
	}
		if(request.getParameter("f") != null && Integer.parseInt(request.getParameter("f")) ==2) {
			 String park = request.getParameter("park");
		        int place = Integer.valueOf(request.getParameter("place"));
		        int heures = Integer.valueOf(request.getParameter("heures"));
		        String debut = request.getParameter("debut");
		        String fin = request.getParameter("fin");
		        double prix =Double.valueOf( request.getParameter("prix"));
		        op.addReservation(new Reservation(heures,place,park,debut,fin,prix));
			     System.out.println(" Avant appel save");
			     List<Reservation> prods = op.getAll();
			     ReservationModel mod= new ReservationModel();
				mod.setLivres(prods);
				System.out.println(" Open setatrubute");
				request.setAttribute("modele", mod);
				System.out.println(" Open Livres");
				response.sendRedirect("Admin1/fil.jsp");
			
		}

}
}
