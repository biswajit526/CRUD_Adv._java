<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Success</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        color: #333;
    }
    header {
        background-color: #4CAF50;
        color: white;
        padding: 10px 0;
        text-align: center;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    h1, h2 {
        margin: 10px 0;
    }
    main {
        max-width: 800px;
        margin: 30px auto;
        background: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    img {
        max-width: 150px;
        height: auto;
        border-radius: 50%;
        margin-bottom: 15px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        font-size: 18px;
    }
    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    .container {
        text-align: center;
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
    <h1>Record Successfully Retrieved</h1>
</header>
<main>
    <div class="container">
        <h2>Showing Record of Roll Number <%= request.getAttribute("Roll") %></h2>
        <br>
        
        <% byte[] imgArray = (byte[])request.getAttribute("Image");
        if(imgArray != null) {
            // Convert byte[] to Base64 string to display in HTML <img> tag
            String base64Image = Base64.getEncoder().encodeToString(imgArray);
        %>
        <img src="data:image/jpeg;base64,<%= base64Image %>" alt="User Image" />
        <% } else { %>
        <p>No image found for the provided User ID.</p>
        <% } %>
        
        <table>
            <tr>
                <th>Roll No</th>
                <td><%= request.getAttribute("Roll") %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= request.getAttribute("Name") %></td>
            </tr>
            <tr>
                <th>Hostel Name</th>
                <td><%= request.getAttribute("Hostel_name") %></td>
            </tr>
            <tr>
                <th>Hostel Room Number</th>
                <td><%= request.getAttribute("Room_no") %></td>
            </tr>
        </table>
    </div>
</main>
<footer>
    <p>&copy; 2024 University of North Bengal - All rights reserved</p>
</footer>
</body>
</html>
