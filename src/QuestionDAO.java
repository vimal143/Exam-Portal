import java.sql.*;

public class QuestionDAO {
	private String dbUrl = "jdbc:oracle:thin:@localhost:1521:xe";
	private String dbUserName = "system";
	private String dbPassword = "7388";
	private String dbDriver = "oracle.jdbc.driver.OracleDriver";

	public void loadJDBCDriver(String driver) {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return con;
	}

	public String insertJava(AddQuestions addquestion) {
		loadJDBCDriver(dbDriver);
		Connection conn = getConnection();
		String verify = "DI";
		String sql = "Insert into system.JavaQuestions values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, addquestion.getQuestionID());
			ps.setString(2, addquestion.getQuestion());
			ps.setString(3, addquestion.getOption1());
			ps.setString(4, addquestion.getOption2());
			ps.setString(5, addquestion.getOption3());
			ps.setString(6, addquestion.getOption4());
			ps.setString(7, addquestion.getAnswer());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			verify = "DNI";
		}
		return verify;
	}

	public String insertDBMS(AddQuestions addquestion) {
		loadJDBCDriver(dbDriver);
		Connection conn = getConnection();
		String verify = "DI";
		String sql = "Insert into system.dbmsquestions values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, addquestion.getQuestionID());
			ps.setString(2, addquestion.getQuestion());
			ps.setString(3, addquestion.getOption1());
			ps.setString(4, addquestion.getOption2());
			ps.setString(5, addquestion.getOption3());
			ps.setString(6, addquestion.getOption4());
			ps.setString(7, addquestion.getAnswer());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			verify = "DNI";
		}
		return verify;
	}

	public String insertCN(AddQuestions addquestion) {
		loadJDBCDriver(dbDriver);
		Connection conn = getConnection();
		String verify = "DI";
		String sql = "Insert into system.CNQuestions values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, addquestion.getQuestionID());
			ps.setString(2, addquestion.getQuestion());
			ps.setString(3, addquestion.getOption1());
			ps.setString(4, addquestion.getOption2());
			ps.setString(5, addquestion.getOption3());
			ps.setString(6, addquestion.getOption4());
			ps.setString(7, addquestion.getAnswer());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			verify = "DNI";
		}
		return verify;
	}

	public String insertNM(AddQuestions addquestion) {
		loadJDBCDriver(dbDriver);
		Connection conn = getConnection();
		String verify = "DI";
		String sql = "Insert into system.NMQuestions values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, addquestion.getQuestionID());
			ps.setString(2, addquestion.getQuestion());
			ps.setString(3, addquestion.getOption1());
			ps.setString(4, addquestion.getOption2());
			ps.setString(5, addquestion.getOption3());
			ps.setString(6, addquestion.getOption4());
			ps.setString(7, addquestion.getAnswer());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			verify = "DNI";
		}
		return verify;
	}

}
