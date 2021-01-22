import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminlogin() {
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
		String adminUserID=request.getParameter("admin_email");
		String adminPassword=request.getParameter("admin_password");
		adminLoginDAO dao=new adminLoginDAO();
		HttpSession session=request.getSession();
		boolean check=dao.fetchdata(adminUserID, adminPassword);
		if (check) {
			session.setAttribute("userid", adminUserID);
			request.getRequestDispatcher("adminHome.jsp").forward(request, response);
		} else {
			request.setAttribute("message", "Username or Password is incorrect");
			request.getRequestDispatcher("admin.jsp").forward(request, response);
		}
		
		
	}

}

