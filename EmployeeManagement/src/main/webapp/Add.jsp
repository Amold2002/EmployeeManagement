<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
}

input[type=text]:focus {
	width: 100%;
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

input[type=submit], input[type=reset] {
	padding: 10px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: 1px solid black;
}
</style>
<body>
	
	<form class="contain" action="addEmployee" method="post">

		<table>
			<tr>
				<td>Add Employee</td>
			</tr>
			<tr>
				<td>Employee ID</td>
				<td><input type="number" min='1' max='100' name="id"></td>
			</tr>
			<tr>
				<td>Employee Name</td>
				<td><input type="text" name="fullName"></td>
			</tr>
			<tr>
				<td>Year of Experice</td>
				<td><input type="text" name="experience"></td>
			</tr>
			<tr>
				<td>Degisnation</td>
				<td><input type="text" name="designation"></td>
			</tr>
			<tr>
				<td></td>
				<td> <a href="index.jsp"><input type="submit" value="save"></a> 
				<a href="index.jsp"><input type="reset" value="Cancal"></a></td>
			</tr>
		</table>

	</form>
</body>
</html>