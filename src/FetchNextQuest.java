import java.sql.*;
import java.util.Vector;

public class FetchNextQuest {
	Vector<String> nextquestion = new Vector<>();
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

	public boolean fetchnextquest(String q, String examname) {
		loadJDBCDriver(dbDriver);
		// System.out.println(q); //Value is "Q2"
		boolean check = false;
		String sql="";
//		Connection conn = getConnection();
        if(examname.equals("Java")) {
        	sql = "Select * from system.javaquestions where QUESTID='" + q + "' ";
        }
        else if(examname.equals("DBMS")) {
        	sql = "Select * from system.dbmsquestions where QUESTID='" + q + "' ";
        }
        else if(examname.equals("Computer Network")) {
        	sql = "Select * from system.cnquestions where QUESTID='" + q + "' ";
        }
        else if(examname.equals("Numerical Methods")) {
        	sql = "Select * from system.nmquestions where QUESTID='" + q + "' ";
        }
		
		// String sql ="Select * from system.dbmsquestions where QUESTID='Q2'"; //This
		// way its Working

		try {
           Connection conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet resultset = ps.executeQuery();
			check = resultset.next();

			nextquestion.add(resultset.getString("questid"));
			nextquestion.add(resultset.getString("Question"));
			nextquestion.add(resultset.getString("option1"));
			nextquestion.add(resultset.getString("option2"));
			nextquestion.add(resultset.getString("option3"));
			nextquestion.add(resultset.getString("option4"));
			nextquestion.add(resultset.getString("answer"));
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
			check = false;
		}

		return check;

	}
}
