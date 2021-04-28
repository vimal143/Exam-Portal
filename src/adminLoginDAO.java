import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class adminLoginDAO {
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
		
		try {
			Connection conn=DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			String sql = "select userid,password from system.admin where userid=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, pass);
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
