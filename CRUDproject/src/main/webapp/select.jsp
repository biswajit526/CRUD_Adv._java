<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f7f6;
	margin: 0;
	padding: 0;
}

header {
	background-color: #2c3e50;
	color: white;
	padding: 20px;
	text-align: center;
	margin-bottom: 20px;
}

h1 {
	margin: 0;
}

main {
	display: flex;
	justify-content: center;
	align-items: center;
	height: calc(100vh - 80px);
}

form {
	background-color: white;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
}

table {
	width: 100%;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	font-weight: bold;
	color: #34495e;
}

input[type="text"] {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #3498db;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

input[type="submit"]:hover {
	background-color: #2980b9;
}

/* Responsive design */
@media ( max-width : 600px) {
	form {
		width: 90%;
	}
}
</style>
</head>
<body>
	<header>
		<h1>Perform Select Operation</h1>
	</header>
	<main>
		<form action="./select" method="post">
			<table>
				<tr>
					<th>Enter Roll No.</th>
					<td><input type="number" name='roll' /></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" value="Search"></td>
				</tr>
			</table>
		</form>
	</main>
</body>
</html>
