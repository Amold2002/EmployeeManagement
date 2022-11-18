<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.EmployeeDao"%>
<%@page import="com.entity.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<style>
* {
	margin: 0;
	padding: 0;
}

main {
	width: 65%;
	margin: 5% auto;
	border: 5px solid black;
	color: white;
	display: grid;
}

.container {
	width: 400px;
	margin: 5% auto;
	border: 3px solid black;
	color: black;
	display: grid;
	grid-template-rows: 30px 30px;
	grid-template-columns: 1fr 100px 90px 40px 120px;
}

.div1 {
	border: 1px solid black;
	text-align: center;
}

.div2 {
	border: 1px solid black;
	text-align: center;
}

.div3 {
	border: 1px solid black;
	text-align: center;
}

.div4 {
	border: 1px solid black;
	text-align: center;
}

.div5 {
	border: 1px solid black;
	text-align: center;
}

.div6 {
	border: 1px solid black;
	text-align: center;
}

.bar {
	padding: 20px;
	margin: 10px;
	display: grid;
	align-items: center;
	grid-template-rows: 2px 50px;
	grid-template-columns: repeat(2, 1fr) 90px;
}

.search {
	grid-column-start: 1;
	grid-column-end: 3;
	box-sizing: border-box;
	padding: 30px;
	margin: 30px;
	border-radius: 20px;
}

input[type=text]:focus {
	width: 100%;
}

h3 {
	font-size: 30px;
	padding: 2px;
	margin-top: 30px;
	text-align: center;
	color: black;
}

.contain {
	width: 30%;
	margin: 5% auto;
	border: 5px solid black;
	/* color: white; */
}

td {
	margin: 20px;
	padding: 20px;
	font-size: large;
}

.btn {
	padding: 12px;
	margin: 10px 20px 22px 20px;
	display: inline-block;
	border: 3px solid black;
}

input[type=submit], input[type=reset] {
	padding: 10px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: 1px solid black;
}
.message{
text-align: center;
color: green;
}

</style>
</head>

<body>

	<header>
		<h3
			style="font-size: 30px; padding: 2px; margin-top: 30px; text-align: center; color: black;">Employee
			Management</h3>
	</header>
	<main>

		<div class="bar">
			<div class="search">
				<input type="text" placeholder="Search.."
					style="border: 2px solid black; padding: 10px; transition: width 0.4s ease-in-out;">
			</div>
			<div class="button">
				<a href="Add.jsp"><button class="btn" type="button">ADD</button></a>
			</div>
		</div>

		<c:if test="${not empty sucMsg}">
			<p class="message">${sucMsg}</p>

			<c:remove var="sucMsg" scope="session" />
		</c:if>
		<c:if test="${not empty errMsg}">
			<p class="text-center text-success fs-5">${errMsg}</p>

			<c:remove var="errMsg" scope="session" />
		</c:if>
		<div class="container">
			<div class="div1">Eid</div>
			<div class="div2">Ename</div>
			<div class="div3">DOJ</div>
			<div class="div4">YOE</div>
			<div class="div5">Designation</div>
			<%
			EmployeeDao dao = new EmployeeDao(DBConnect.getConn());

			List<Employee> list = dao.getAllEmployee();
			for (Employee emp : list) {
			%>
			<div class="div1"><%=emp.getEmpid()%></div>
			<div class="div1"><%=emp.getEmpname()%></div>
			<div class="div1"><%=emp.getEmpDateOfJoining()%></div>
			<div class="div1"><%=emp.getEmpYearOfExperience()%></div>
			<div class="div1"><%=emp.getEmpDesignation()%></div>
			<%
			}
			%>
		</div>
	</main>






















	<!-- <div class="col-md-4 ">
		<div class="card paint-card">
			<div class="card-body">
				<p class="fs-3 text-center">Add Employe</p>
				<form action="addEmployee" method="post">
					<div class="mb-3">
						<label class="form-label">Employee Id</label> <input type="text"
							required name="id">
					</div>
					<div class="mb-3">
						<label class="form-label">Employee Name</label> <input type="text"
							required name="fullName">
					</div>
					<div class="mb-3">
						<label class="form-label">Year of Experience</label> <input type="text"
							required name="experience">
					</div>
					<div class="mb-3">
						<label class="form-label">Designation</label> <input type="text"
							required name="designation">
					</div>
					<a href="index.jsp"><button type="button" class="btn btn-primary">Cancal</button></a>
					<button type="submit" class="btn btn-primary">Submit</button>
					
				</form>
			</div>
		</div>
	</div> -->




	<%-- <div class="col-md-8">
		<div class="card paint-card">
			<div class="card-body">
				<p class="fs-3 text-center">Employee Detail</p>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Eid</th>
							<th scope="col">Ename</th>
							<th scope="col">DOJ</th>
							<th scope="col">YOE</th>
							<th scope="col">Designation</th>
						</tr>
					</thead>
					<tbody>
						<%
						EmployeeDao dao = new EmployeeDao(DBConnect.getConn());

						/* List<Employee> list = new dao.getAllEmployee(); */
						List<Employee> list = dao.getAllEmployee();
						for (Employee emp : list) {
						%>
						<tr>
							<td><%=emp.getEmpid()%></td>
							<td><%=emp.getEmpname()%></td>
							<td><%=emp.getEmpDateOfJoining()%></td>
							<td><%=emp.getEmpYearOfExperience()%></td>
							<td><%=emp.getEmpDesignation()%></td>
						</tr>
						<%
						}
						%>




					</tbody>

				</table>


			</div>
		</div>
	</div>








	 <button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#exampleModal">Launch demo modal</button>

	
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="col-md-15 ">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-3 text-center">Add Employe</p>
								<form action="addEmployee" method="post">
									<div class="mb-3">
										<label class="form-label">Employee Id</label> <input
											type="text" required name="id" >
									</div>
									<div class="mb-3">
										<label class="form-label">Employee Name</label> <input
											type="text" required name="fullName">
									</div>
									<div class="mb-3">
										<label class="form-label">Year of Experience</label> <input
											type="text" required name="experience">
									</div>
									<div class="mb-3">
										<label class="form-label">Designation</label> <input
											type="text" required name="designation">
									</div>
									<button type="submit" class="btn btn-primary">Save</button>
									<a href="index.jsp"><button type="button"
											class="btn btn-primary">Cancal</button></a>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 
 --%>

</body>
</html>