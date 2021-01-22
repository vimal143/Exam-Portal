

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class examSchedule
 */
@WebServlet("/examSchedule")
public class examSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public examSchedule() {
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
		String examId=request.getParameter("examID");
		String examName=request.getParameter("examName");
		String examDate=request.getParameter("examDate");
		String examTime=request.getParameter("examTime");
		String examDuration=request.getParameter("examDuration");
		scheduleDAO schd=new scheduleDAO();
		String verify=schd.insert(examId, examName, examDate, examTime, examDuration);
		if(verify.equals("DI")) {
			String msg="Exam is Scheduled on " +examDate;
			request.setAttribute("message", msg);
			request.getRequestDispatcher("/examSchedule.jsp").forward(request,response);
			
		}
		else {
			String msg="Exam is Not Scheduled. Retry!";
			request.setAttribute("message", msg);
			request.getRequestDispatcher("/examSchedule.jsp").forward(request,response);
		}
	}

}
