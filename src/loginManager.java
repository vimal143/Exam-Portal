import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class loginManager {
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

	public boolean fetchdata(String email, String pass) {
		loadJDBCDriver(dbDriver);
		boolean check = false;
//		Connection conn = getConnection();
		String sql = "select email,password from system.examuser where email='" + email + "' and password='" + pass + "' ";
		try {
			Connection conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet resultset = ps.executeQuery();
			check = resultset.next();
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
			check = false;
		}

		return check;

	}
}
