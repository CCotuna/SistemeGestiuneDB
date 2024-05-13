package ro.management.helpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBHelper {

	private static Connection conn;

	public static Connection getConnection() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}

		if (conn == null || conn.isClosed()) {
			Properties connProps = new Properties();
			connProps.put("user", "root");
			connProps.put("password", "");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr", connProps);
		}
		return conn;
	}

	public static void closeConnection() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
