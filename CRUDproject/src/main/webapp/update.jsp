<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Check Update page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 10px 0;
        }

        form {
            background-color: white;
            margin: 50px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            max-width: 500px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            text-align: left;
            padding: 10px;
            font-size: 1.1em;
        }

        td {
            padding: 10px;
        }

        input[type="text"],
        input[type="file"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        p {
            font-size: 1.2em;
        }

        p.error {
            text-align: center;
            color: red;
            font-weight: bold;
        }

        .center {
            text-align: center;
            margin-top: 20px;
            color: #28a745; /* Green color for the "Choose what you want to update" text */
            font-weight: bold;
        }

    </style>
</head>
<body>
    <header>
        <p>Perform Update Operation</p>
    </header>

    <form method="post" action="./update" enctype="multipart/form-data">
        <%
        if (request.getAttribute("message") != null) {
        %>
        <p class="error">
            <%=request.getAttribute("message")%>
        </p>
        <%
        }
        %>

        <table>
            <tr>
                <th>Roll No</th>
                <td><input type="text" name='roll' /></td>
            </tr>
        </table>

        <p class="center">Choose what you want to update</p>

        <table>
            <tr>
                <th>Name</th>
                <td><input type="text" name='name' /></td>
            </tr>
            <tr>
                <th>Hostel Name</th>
                <td><input type="text" name='hostel_name' /></td>
            </tr>
            <tr>
                <th>Room No</th>
                <td><input type="text" name='room_no' /></td>
            </tr>
            <tr>
                <th>Select an image</th>
                <td><input type="file" id="imageInput" name="imageInput" accept="image/*"></td>
            </tr>
            <tr>
                <th></th>
                <td><input type="submit" value="Submit"></td>
            </tr>
        </table>
    </form>
</body>
</html>
