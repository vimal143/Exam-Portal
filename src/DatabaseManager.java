import java.sql.*;

public class DatabaseManager {
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

	public String insert(Member member) {
		loadJDBCDriver(dbDriver);
//		Connection conn = getConnection();
		String verify = "DI";
		String sql = "Insert into system.examuser values(?,?,?,?)";
		try {
			Connection conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, member.getFirstName());
			ps.setString(2, member.getLastName());
			ps.setString(3, member.getEmail());
			ps.setString(4, member.getPassword());
			ps.executeUpdate();
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
			verify = "DNI";
		}
		return verify;
	}
}
