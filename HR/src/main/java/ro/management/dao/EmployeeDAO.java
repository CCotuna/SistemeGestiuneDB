package ro.management.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import ro.management.helpers.DBHelper;
import ro.management.pojo.Employee;

public class EmployeeDAO {

	public static ArrayList<Employee> listEmployees() throws SQLException {
		Connection conn = DBHelper.getConnection();
		String query = "SELECT * FROM employees";

		PreparedStatement ps = conn.prepareStatement(query);
		ResultSet rs = ps.executeQuery();

		ArrayList<Employee> employees = new ArrayList<>();
		while (rs.next()) {
			Employee u = new Employee(rs.getInt("id"), rs.getString("firstname"), rs.getString("lastname"),
					rs.getString("role"), rs.getDate("date_of_employment").toLocalDate(), rs.getString("email"),
					rs.getInt("phone_number"), rs.getInt("salary"), rs.getString("qualification"));
			employees.add(u);
		}
		DBHelper.closeConnection();
		return employees;
	}

	// create an employee

	public static void create(Employee e) throws SQLException {
		EmployeeDAO.create(e.getFirstname(), e.getLastname(), e.getRole(), e.getDate_of_employment(), e.getEmail(),
				e.getPhone_number(), e.getSalary(), e.getQualification());
	}

	public static void create(String firstname, String lastname, String role, LocalDate date_of_employment,
			String email, int phone_number, int salary, String qualification) throws SQLException {
		// instructiunea sql
		String insert = "insert into employees (firstname, lastname, role, date_of_employment, email,  phone_number, salary, qualification)"
				+ "value(?,?,?,?,?,?,?,?)";

		// conexiune
		Connection con = DBHelper.getConnection();

		// prepared statement
		PreparedStatement stmt = con.prepareStatement(insert);
		stmt.setString(1, firstname);
		stmt.setString(2, lastname);
		stmt.setString(3, role);
		stmt.setDate(4, Date.valueOf(date_of_employment));
		stmt.setString(5, email);
		stmt.setInt(6, phone_number);
		stmt.setInt(7, salary);
		stmt.setString(8, qualification);

		// executie stmt
		stmt.executeUpdate();

		DBHelper.closeConnection();
	}

	public static Employee getById(int id) throws SQLException, IOException {
		Connection conn = DBHelper.getConnection();
		String query = "select * from employees where id = ?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setInt(1, id);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			Employee employee = new Employee(rs.getInt("id"), rs.getString("firstname"), rs.getString("lastname"),
					rs.getString("role"), rs.getDate("date_of_employment").toLocalDate(), rs.getString("email"),
					rs.getInt("phone_number"), rs.getInt("salary"), rs.getString("qualification"));
			DBHelper.closeConnection();
			return employee;
		}
		DBHelper.closeConnection();
		return null;

	}

	public static void update(Employee e) throws SQLException {

		String update = "update employees set firstname=?, lastname=?,  role=?,  date_of_employment=?,  email=?,   phone_number=?,  salary=?,  qualification=?  where id=?";

		// conexiune
		Connection con = DBHelper.getConnection();

		// prepared statement
		PreparedStatement stmt = con.prepareStatement(update);
		stmt.setString(1, e.getFirstname());
		stmt.setString(2, e.getLastname());
		stmt.setString(3, e.getRole());
		stmt.setDate(4, Date.valueOf(e.getDate_of_employment()));
		stmt.setString(5, e.getEmail());
		stmt.setInt(6, e.getPhone_number());
		stmt.setInt(7, e.getSalary());
		stmt.setString(8, e.getQualification());
		stmt.setInt(9, e.getId());
		// executie stmt
		stmt.executeUpdate();

		DBHelper.closeConnection();
	}

	public static void delete(Employee e) throws SQLException {
		EmployeeDAO.delete(e.getId());
	}

	public static void delete(int id) throws SQLException {
		String delete = "delete from employees where id=?";
		// conexiune
		Connection con = DBHelper.getConnection();

		// prepared statement
		PreparedStatement stmt = con.prepareStatement(delete);
		stmt.setInt(1, id);

		// executie stmt
		stmt.executeUpdate();

		DBHelper.closeConnection();
	}
}
