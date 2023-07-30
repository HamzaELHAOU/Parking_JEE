package Admin.Controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Admin.Dao.*;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		 if(request.getParameter("l")!=null ) {
		System.out.println("hello Post");
		String user = request.getParameter("username");
        String pass = request.getParameter("password");
        System.out.println("user  "+user+"pass  "+pass);
        boolean x=Login1.Log(user, pass);
        if(x==true) {
        	System.out.println("Login Succes");
        	HttpSession s= request.getSession(false);
        	Admin d=Login1.getAdmin(user, pass);
        	int id=d.getId();
        	s.setAttribute("admin", d);
        	response.sendRedirect("Admin1/dashboard.jsp");}
        else {
        	System.out.println("Login Echec");
        	//out.println("Username Or PassWord incorret");
        	//request.setAttribute("x", 1);
        	//request.getRequestDispatcher("Admin1/index.jsp").forward(request, response);
        	response.sendRedirect("Admin1/index.jsp?x=1");
		}
		 }
        
      if(request.getParameter("m")!=null ) {
    	  String fullName=request.getParameter("fullName");
    	  String username=request.getParameter("username");
    	  String email=request.getParameter("email");
    	  String telephone=request.getParameter("telephone");
    	  int id = Integer.valueOf(request.getParameter("id"));
    	  Login1.updateAdmine(fullName, username, email, telephone, id);
    	//request.getRequestDispatcher("Admin1/myprofile.jsp").forward(request, response);
    	  response.sendRedirect("Admin1/myprofile.jsp");
      }
      if(request.getParameter("p")!=null ) {
    	  String old=request.getParameter("old");
    	  String new1=request.getParameter("new1");
    	  String new2=request.getParameter("new2");
    	  Login1.updatePass(old, new1);
    	//request.getRequestDispatcher("Admin1/myprofile.jsp").forward(request, response);
    	  response.sendRedirect("Admin1/myprofile.jsp");
      }
	}

}
