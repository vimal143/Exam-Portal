import java.sql.*;
import java.util.Vector;

public class ScheduleCheckDAO {
	Vector<String> details = new Vector<>();
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

	public boolean fetchdata(String examID) {
		loadJDBCDriver(dbDriver);
		boolean check = false;
//		Connection conn = getConnection();
		String sql = "select * from system.schedule where examid=?";
		try {
			Connection conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, examID);

			ResultSet resultset = ps.executeQuery();
			check = resultset.next();

			details.add(resultset.getString("examid"));
			details.add(resultset.getString("examname"));
			details.add(resultset.getString("examdate"));
			details.add(resultset.getString("time"));
			details.add(resultset.getString("duration"));
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
			check = false;
		}

		return check;

	}

}
