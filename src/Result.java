import java.sql.*;

public class Result {
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

	public boolean addMarks(String userid, String examname, int marks) {
		loadJDBCDriver(dbDriver);
		String sql = "";
		boolean check = false;
		Connection conn = getConnection();
		sql = "Insert into system.examresult values(?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setString(2, examname);
			ps.setInt(3, marks);
			ResultSet resultset = ps.executeQuery();
			check = resultset.next();

		} catch (SQLException e) {
			e.printStackTrace();
			check = false;
		}

		return check;

	}

}
