
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * Servlet implementation class ScheduleCheck
 */
@WebServlet("/ScheduleCheck")
public class ScheduleCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ScheduleCheck() {
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
		String examID = request.getParameter("examid");

		ScheduleCheckDAO scd = new ScheduleCheckDAO();
		boolean verify = scd.fetchdata(examID);
		String exid = scd.details.get(0);
		String exname = scd.details.get(1);
		String exdate = scd.details.get(2);
		String extime = scd.details.get(3);
		String exduration = scd.details.get(4);

		ScheduleDetails sd = new ScheduleDetails(exid, exname, exdate, extime, exduration);
		Date date = new Date();
		SimpleDateFormat DateFor = new SimpleDateFormat("dd-MM-yyyy");
		String stringDate = DateFor.format(date);

		DateFormat dateFormat = new SimpleDateFormat("hh:mm aa");
		String timeString = dateFormat.format(new Date()).toString();
		String[] exdatech = exdate.split(" ");
		String exdatesplit = exdatech[0];
		String[] againsplit = exdatesplit.split("-");
		String exdatenow = againsplit[2] + "-" + againsplit[1] + "-" + againsplit[0];

		String[] stringtime = timeString.split(":");
		String[] Am_PM = timeString.split(" ");
		String scheduledTime = sd.getExamTime();
		String[] Scheduledtime = scheduledTime.split(":");
		String[] Scheduled_Am_PM = scheduledTime.split(" ");
		System.out.println(Scheduled_Am_PM[1]);

		if (verify) {

			if (stringDate.equals(exdatenow) && Am_PM[1].equals(Scheduled_Am_PM[1])
					&& (Integer.parseInt(stringtime[0]) >= Integer.parseInt(Scheduledtime[0]))
					&& (Integer.parseInt(stringtime[0]) <Integer.parseInt(Scheduledtime[0]+1))) {
				request.setAttribute("details", sd);
				request.getRequestDispatcher("/welcome.jsp").forward(request, response);
			} else {
				request.setAttribute("message", "Something Went Wrong ! Check Your Exam ID and Date Time");
				request.getRequestDispatcher("/ScheduleError.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("message", "Something Went Wrong ! Check Your Exam ID and Date Time");
			request.getRequestDispatcher("/selectExam.jsp").forward(request, response);
		}

	}

}
