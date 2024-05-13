package ro.management.pojo;

import java.sql.Date;
import java.time.LocalDate;

public class Employee {

	private int id;
	private String firstname;
	private String lastname;
	private LocalDate date_of_employment;
	private int phone_number;
	private String role;
	private String email;
	private int salary;
	private String qualification;

	public Employee(int id, String firstname, String lastname, String role, LocalDate date_of_employment, String email,
			int phone_number, int salary, String qualification) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.date_of_employment = date_of_employment;
		this.phone_number = phone_number;
		this.role = role;
		this.email = email;
		this.salary = salary;
		this.qualification = qualification;
	}

	public Employee() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public LocalDate getDate_of_employment() {
		return date_of_employment;
	}

	public void setDate_of_employment(LocalDate date_of_employment) {
		this.date_of_employment = date_of_employment;
	}

	public int getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(int phone_number) {
		this.phone_number = phone_number;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

}
