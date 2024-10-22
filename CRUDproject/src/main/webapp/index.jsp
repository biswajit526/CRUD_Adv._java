<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    header {
        background-color: #333;
        color: #fff;
        padding: 20px 0;
        text-align: center;
    }

    main {
        padding: 20px;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        margin: 0;
        font-size: 2em;
    }

    b {
        display: block;
        margin-bottom: 20px;
        font-size: 1.2em;
        color: #333;
    }

    a {
        display: block;
        text-decoration: none;
        color: #007bff;
        font-size: 1.1em;
        margin: 10px 0;
        padding: 10px;
        border-radius: 5px;
        transition: background-color 0.3s, color 0.3s;
    }

    a:hover {
        background-color: #007bff;
        color: #fff;
    }
</style>
</head>
<body>
<header>
    <h1>Play with CRUD Operations</h1>
</header>

<main>
    <div class="container">
        <b>Choose what you want to perform</b>
        <a href="./select.jsp" target="_main">Click here to perform select operation</a>
        <a href="./insert.jsp" target="_main">Click here to perform insert operation</a>
        <a href="./update.jsp" target="_main">Click here to perform update operation</a>
        <a href="./delete.jsp" target="_main">Click here to perform delete operation</a>
    </div>
</main>
</body>
</html>
