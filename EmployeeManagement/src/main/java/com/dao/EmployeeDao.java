package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.entity.Employee;

public class EmployeeDao {

	private static Connection conn;

	public EmployeeDao(Connection conn) {
		
		this.conn = conn;
	}

	public boolean AddEmployee(Employee u) {

		boolean f = false;

		try {
			String sql = "insert into employee(empid,empname,empYearOfExperience,empDesignation) value(?,?,?,?);";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, u.getEmpid());
			ps.setString(2, u.getEmpname());
			ps.setInt(3, u.getEmpYearOfExperience());
			ps.setString(4, u.getEmpDesignation());
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public List<Employee> getAllEmployee() {
		List<Employee> list = new ArrayList();
		Employee emp = null;
		try {

			String sql = "select * from employee;";

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				emp = new Employee();
				emp.setEmpid(rs.getInt(1));
				emp.setEmpname(rs.getString(2));
				emp.setEmpDateOfJoining(rs.getString(3));
				emp.setEmpYearOfExperience(rs.getInt(4));
				emp.setEmpDesignation(rs.getString(5));
				list.add(emp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
