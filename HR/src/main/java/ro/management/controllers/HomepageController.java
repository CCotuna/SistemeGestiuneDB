package ro.management.controllers;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import ro.management.dao.EmployeeDAO;
import ro.management.pojo.Employee;



@Controller
public class HomepageController {

	@GetMapping("/")
	public ModelAndView homepage() throws SQLException {
		ModelAndView mav = new ModelAndView("homepage");

		ArrayList<Employee> covoare = EmployeeDAO.listEmployees();

		mav.addObject("covoare", covoare);

		return mav;
	}
}
