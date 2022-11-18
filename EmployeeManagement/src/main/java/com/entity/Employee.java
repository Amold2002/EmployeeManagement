package com.entity;

public class Employee {

	private int empid;
	private String empname;
	private String empDateOfJoining;
	private int empYearOfExperience;
	private String empDesignation;

	public Employee() {

	}
	public Employee(int empid, String empname, int yearOfExperience, String designation) {
		this.empid = empid;
		this.empname = empname;
		this.empYearOfExperience = yearOfExperience;
		this.empDesignation = designation;
	}

	public int getEmpid() {
		return empid;
	}

	public void setEmpid(int empid) {
		this.empid = empid;
	}

	public String getEmpname() {
		return empname;
	}

	public void setEmpname(String empname) {
		this.empname = empname;
	}

	public String getEmpDateOfJoining() {
		return empDateOfJoining;
	}

	public void setEmpDateOfJoining(String empDateOfJoining) {
		this.empDateOfJoining = empDateOfJoining;
	}

	public int getEmpYearOfExperience() {
		return empYearOfExperience;
	}

	public void setEmpYearOfExperience(int empYearOfExperience) {
		this.empYearOfExperience = empYearOfExperience;
	}

	public String getEmpDesignation() {
		return empDesignation;
	}

	public void setEmpDesignation(String empDesignation) {
		this.empDesignation = empDesignation;
	}

}
