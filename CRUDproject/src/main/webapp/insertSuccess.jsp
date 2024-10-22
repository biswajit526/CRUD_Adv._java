<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Success Page</title>
</head>
<body>
<header>
<h1 style="text-align:center; color:green">Insertion Succeed</h1>
</header>
<main>
<p style="text-align:center">Record Successfully inserted of id:: <%= request.getAttribute("key") %></p>
</main>
</body>
</html>