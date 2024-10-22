<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Failure</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        color: #333;
    }
    header {
        background-color: #f44336; /* Red color for error */
        color: white;
        padding: 10px 0;
        text-align: center;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    h1 {
        margin: 0;
    }
    main {
        max-width: 600px;
        margin: 30px auto;
        background: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h2 {
        margin: 20px 0;
        color: #f44336; /* Red color for error message */
    }
    footer {
        margin-top: 20px;
        text-align: center;
        padding: 10px;
        font-size: 14px;
        color: #777;
    }
</style>
</head>
<body>
    <header>
        <h1>Retrieve Failed</h1>
    </header>
    <main>
        <h2>No Record Available with respect to the user id: <%=request.getAttribute("Roll")%></h2>
    </main>
    <footer>
        <p>&copy; 2024 University of North Bengal - All rights reserved</p>
    </footer>
</body>
</html>
