
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/regsiter")
public class regsiter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public regsiter() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String email = request.getParameter("email");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
//		String captchaResopnse=request.getParameter("g-recaptcha-response");

		boolean val = validateformData(firstName, lastName, email, password1, password2);
		if (val) {
			Member member = new Member(firstName, lastName, email, password1);
			DatabaseManager dbmanager = new DatabaseManager();
			dbmanager.insert(member);
			String msg = "You are Regsitered successfully. Login to Continue ";
			request.setAttribute("message", msg);
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		} else {
			String msg = "Both password didn't match ";
			request.setAttribute("message", msg);
			request.getRequestDispatcher("/signup.jsp").forward(request, response);
		}
	}

	private boolean validateformData(String firstName, String lastName, String email, String password1,
			String password2) {
		if (password1.equals(password2)) {
			return true;
		} else {
			return false;
		}

	}

}
