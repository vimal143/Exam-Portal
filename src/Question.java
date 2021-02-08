
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Question
 */
@WebServlet("/Question")
public class Question extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Question() {
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
		String examName = request.getParameter("examName");
		String QuestId = request.getParameter("questionID");
		String Question = request.getParameter("question");
		String Option1 = request.getParameter("opt1");
		String Option2 = request.getParameter("opt2");
		String Option3 = request.getParameter("opt3");
		String Option4 = request.getParameter("opt4");
		String answer = request.getParameter("answer");

		AddQuestions add = new AddQuestions(QuestId, Question, Option1, Option2, Option3, Option4, answer);
		QuestionDAO quest = new QuestionDAO();
		if (examName.equals("java")) {
			String Verify = quest.insertJava(add);
			if (Verify.equals("DI")) {

				request.setAttribute("message", add);
				request.getRequestDispatcher("/Questions.jsp").forward(request, response);

			} else {
				String msg = "Something Went Wrong ! ";
				request.setAttribute("error", msg);
				request.getRequestDispatcher("/Questions.jsp").forward(request, response);

			}

		} else if (examName.equals("dbms")) {
			String Verify = quest.insertDBMS(add);
			if (Verify.equals("DI")) {

				request.setAttribute("message", add);
				request.getRequestDispatcher("/Questions.jsp").forward(request, response);

			} else {
				String msg = "Something Went Wrong ! ";
				request.setAttribute("error", msg);
				request.getRequestDispatcher("/Questions.jsp").forward(request, response);

			}

		} else if (examName.equals("computerNetwork")) {
			String Verify = quest.insertCN(add);
			if (Verify.equals("DI")) {

				request.setAttribute("message", add);
				request.getRequestDispatcher("/Questions.jsp").forward(request, response);

			} else {
				String msg = "Something Went Wrong ! ";
				request.setAttribute("error", msg);
				request.getRequestDispatcher("/Questions.jsp").forward(request, response);

			}

		} else if (examName.equals("numericalMethods")) {
			String Verify = quest.insertNM(add);
			if (Verify.equals("DI")) {

				request.setAttribute("message", add);
				request.getRequestDispatcher("/Questions.jsp").forward(request, response);

			} else {
				String msg = "Something Went Wrong ! ";
				request.setAttribute("error", msg);
				request.getRequestDispatcher("/Questions.jsp").forward(request, response);

			}

		}
	}

}
