<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f4f7;
        margin: 0;
        padding: 0;
    }

    header {
        background-color: #34495e;
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
    }

    table {
        width: 100%;
    }

    th, td {
        padding: 10px;
        text-align: left;
    }

    th {
        color: #2c3e50;
        font-weight: bold;
    }

    input[type="text"], input[type="file"] {
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

    td {
        vertical-align: top;
    }

    /* Responsive design */
    @media (max-width: 600px) {
        form {
            width: 90%;
        }
    }
</style>
</head>
<body>
    <header>
        <h1>Fill the given details to perform Insert operation</h1>
    </header>
    <main>
        <div>
            <form method="post" action="./insert" enctype="multipart/form-data">
                <table>
                    <tr>
                        <th>Roll No</th>
                        <td><input type="text" name='roll' /></td>
                    </tr>
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
        </div>
    </main>
</body>
</html>
