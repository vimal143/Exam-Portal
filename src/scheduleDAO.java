import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class scheduleDAO {
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

	public String insert(String examID, String examName, String examDate, String examTime, String examDuration) {
		loadJDBCDriver(dbDriver);
//		Connection conn = getConnection();
		String verify = "DI";
		String sql = "Insert into system.schedule values(?,?,?,?,?)";
		try {
			Connection conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, examID);
			ps.setString(2, examName);
			ps.setString(3, examDate);
			ps.setString(4, examTime);
			ps.setString(5, examDuration);
			ps.executeUpdate();
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
			verify = "DNI";
		}
		return verify;
	}

}
