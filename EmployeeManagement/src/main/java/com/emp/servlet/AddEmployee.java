package com.emp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.EmployeeDao;
import com.db.DBConnect;
import com.entity.Employee;

@WebServlet("/addEmployee")
public class AddEmployee extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String fullname = req.getParameter("fullName");
		int yearOfExperience = Integer.parseInt(req.getParameter("experience"));
		String designation = req.getParameter("designation");

		Employee employee = new Employee(id, fullname, yearOfExperience, designation);

		EmployeeDao dao = new EmployeeDao(DBConnect.getConn());

		HttpSession session = req.getSession();

		boolean i = dao.AddEmployee(employee);
		if (i) {
			session.setAttribute("sucMsg", "Sucessfully Employee added");
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("errMsg", "Something wrong on server");
			resp.sendRedirect("index.jsp");
		}

	}

}
