package Admin.Controler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Admin.Dao.UserDao;
import Admin.Dao.UserImplDao;
import Admin.Metier.ReservationModel;
import Admin.Metier.UserModel;

/**
 * Servlet implementation class ContUser
 */
@WebServlet("/ContUser")
public class ContUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
     private UserDao op;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContUser() {
        super();
        // TODO Auto-generated constructor stub
    }
 
    @Override
   	public void init() throws ServletException {
   		// TODO Auto-generated method stub
   		op=new UserImplDao();
   		
   	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getAttribute("x")!=null) {
			List<User> prods = op.getAll();
			UserModel mod= new UserModel();
			mod.setUsers(prods);
	        
			request.setAttribute("modele", mod);
			request.getRequestDispatcher("Admin1/users.jsp").forward(request,response);
			
		}
		else if(request.getParameter("action")!=null) {
			if(request.getParameter("action").equals("s") && request.getParameter("cne")!=null) {
				op.deleteUser(request.getParameter("cne"));
				List<User> prods = op.getAll();
				UserModel mod= new UserModel();
				mod.setUsers(prods);
		        
				request.setAttribute("modele", mod);
				//response.sendRedirect("Admin1/fil.jsp");
				response.sendRedirect("Admin1/users.jsp");
				//request.getRequestDispatcher("Admin1/users.jsp").forward(request,response);
				
			}
			if(request.getParameter("action").equals("u") && request.getParameter("cne")!=null) {
				User l = op.getUser(request.getParameter("cne"));
				 request.setAttribute("livre", l);
				request.getRequestDispatcher("Admin1/editUser.jsp").forward(request,response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("f") != null && Integer.parseInt(request.getParameter("f")) ==1) {
			 String cne =request.getParameter("cne");
			 String nom = request.getParameter("nom");
		      String prenom = request.getParameter("prenom");
		      String email = request.getParameter("email");
		      String telephone = request.getParameter("telephone");
		      String adresse = request.getParameter("adresse");
		      String motpass = request.getParameter("motpass");
		      String gender = request.getParameter("gender");
		      Double solde = Double.valueOf(request.getParameter("solde"));
		        
		        
		       
		     op.updateUser(new User(cne, nom, prenom, email, telephone, adresse, motpass, gender,solde),cne);
		     System.out.println(" Avant appel save");
		     List<User> prods = op.getAll();
		     UserModel mod= new UserModel();
			mod.setUsers(prods);
			System.out.println(" Open setatrubute");
			request.setAttribute("modele", mod);
			System.out.println(" Open Livres");
			response.sendRedirect("Admin1/users.jsp");
			//request.getRequestDispatcher("Admin1/fil.jsp").forward(request,response);
	}
		if(request.getParameter("f") != null && Integer.parseInt(request.getParameter("f")) ==2) {
			 String cne =request.getParameter("cne");
			 String nom = request.getParameter("nom");
		      String prenom = request.getParameter("prenom");
		      String email = request.getParameter("email");
		      String telephone = request.getParameter("telephone");
		      String adresse = request.getParameter("adresse");
		      String motpass = request.getParameter("motpass");
		      String gender = request.getParameter("gender");
		      Double solde = Double.valueOf(request.getParameter("solde"));
		        op.addUser(new User(cne, nom, prenom, email, telephone, adresse, motpass, gender,solde) );
			     System.out.println(" Avant appel save");
			     List<User> prods = op.getAll();
			     UserModel mod= new UserModel();
				mod.setUsers(prods);
				System.out.println(" Open setatrubute");
				request.setAttribute("modele", mod);
				System.out.println(" Open Livres");
				response.sendRedirect("Admin1/users.jsp");
			
		}
	}

}
