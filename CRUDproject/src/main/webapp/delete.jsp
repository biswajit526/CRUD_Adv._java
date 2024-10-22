<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #dc3545; /* Red background to signify deletion */
            color: white;
            text-align: center;
            padding: 15px 0;
            font-size: 1.5em;
        }

        main {
            margin: 50px auto;
            max-width: 400px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th {
            text-align: left;
            padding: 10px;
            font-size: 1.1em;
            color: #333;
        }

        td {
            padding: 10px;
        }

        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #dc3545; /* Red background for delete action */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
        }

        input[type="submit"]:hover {
            background-color: #c82333; /* Darker red on hover */
        }

        p.error {
            color: red;
            font-weight: bold;
            text-align: center;
            font-size: 1.1em;
            margin-top: 10px;
        }

    </style>
</head>
<body>
    <header> Perform Deletion </header>

    <main>
        <form method="get" action="./delete">
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
