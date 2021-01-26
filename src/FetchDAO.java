import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

public class FetchDAO {
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

	public boolean fetchdata(String examname) {
		loadJDBCDriver(dbDriver);
		String sql="";
		boolean check = false;
		Connection conn = getConnection();
		if(examname.equals("Java")) {
			 sql = "select * from system.javaquestions";
		}
		else if(examname.equals("DBMS")) {
			sql = "select * from system.dbmsquestions";
		}
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet resultset = ps.executeQuery();
            check=resultset.next();    	
            details.add(resultset.getString("questid"));
            details.add(resultset.getString("Question"));
            details.add(resultset.getString("option1"));
            details.add(resultset.getString("option2"));
            details.add(resultset.getString("option3"));
            details.add(resultset.getString("option4"));
            details.add(resultset.getString("answer"));          
		
		} catch (SQLException e) {
			e.printStackTrace();
			check = false;
		}

		return check;

	}
	
	

}
