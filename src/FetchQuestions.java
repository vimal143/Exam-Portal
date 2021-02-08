
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FetchQuestions
 */

@WebServlet("/FetchQuestions")
public class FetchQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FetchQuestions() {
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
		String examName = request.getParameter("examname");
		String username = request.getParameter("user");

		String Button = request.getParameter("next");
		String nextquest = " ";
		String selectedOpt = request.getParameter("radio");
		String ans = request.getParameter("answer");
		String[] questno = { "Q1", "Q2", "Q3", "Q4", "Q5", "Q6", "Q7", "Q8", "Q9", "Q10", "Q11" };
		FetchDAO fd = new FetchDAO();
		if ("Save & next".equals(Button)) {
			String id = (String) request.getParameter("nextid");

			if (!id.replace(" ", "").equals("Q10")) {
				if (ans.replace(" ", "").equals(selectedOpt.replace(" ", ""))) {
					Result result = new Result();
					result.addMarks(username.replace("  ", ""), examName, 1);
				}

				for (int i = 0; i < 10; i++) {
					if (id.replace("  ", "").equals(questno[i])) {
						nextquest = questno[i + 1];

						break;
					}
				}

			}
			System.out.println(id.replace(" ", "").equals("Q10"));
			if (id.replace(" ", "").equals("Q10")) {
				if (ans.replace(" ", "").equals(selectedOpt.replace(" ", ""))) {
					Result result = new Result();
					result.addMarks(username.replace("  ", ""), examName, 1);
				}
				request.setAttribute("exname", examName);
				request.setAttribute("stdid", username);
				request.getRequestDispatcher("/Result.jsp").forward(request, response);

			}

			FetchNextQuest fnq = new FetchNextQuest();
			boolean verify = fnq.fetchnextquest(nextquest, examName);
			String iD = fnq.nextquestion.get(0);
			String Quest = fnq.nextquestion.get(1);
			String Opt1 = fnq.nextquestion.get(2);
			String Opt2 = fnq.nextquestion.get(3);
			String Opt3 = fnq.nextquestion.get(4);
			String Opt4 = fnq.nextquestion.get(5);
			String Ans = fnq.nextquestion.get(6);
			QuestionBank qb = new QuestionBank(examName, iD, Quest, Opt1, Opt2, Opt3, Opt4, Ans);
			if (verify) {

				request.setAttribute("questions", qb);
				request.getRequestDispatcher("/exam.jsp").forward(request, response);
			} else {
				request.setAttribute("message", "Something Went Wrong !");
				request.getRequestDispatcher("/ScheduleError.jsp").forward(request, response);
			}

		}

		else {
			boolean verify = fd.fetchdata(examName);
			String iD = fd.details.get(0);
			String Quest = fd.details.get(1);
			String Opt1 = fd.details.get(2);
			String Opt2 = fd.details.get(3);
			String Opt3 = fd.details.get(4);
			String Opt4 = fd.details.get(5);
			String Ans = fd.details.get(6);
			QuestionBank qb = new QuestionBank(examName, iD, Quest, Opt1, Opt2, Opt3, Opt4, Ans);
			if (verify) {
				request.setAttribute("questions", qb);
				request.getRequestDispatcher("/exam.jsp").forward(request, response);
			} else {
				request.setAttribute("message", "Something Went Wrong !");
				request.getRequestDispatcher("/ScheduleError.jsp").forward(request, response);
			}

		}

	}

}
