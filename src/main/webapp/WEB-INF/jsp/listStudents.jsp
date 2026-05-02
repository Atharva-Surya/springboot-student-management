<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>
<style>
body {
    font-family: Arial;
    background-color: #f4f6f8;
}

.container {
    width: 80%;
    margin: 50px auto;
}

h2 {
    text-align: center;
}

table {
    width: 100%;
    border-collapse: collapse;
    background: white;
}

th, td {
    padding: 12px;
    text-align: center;
}

th {
    background-color: #007bff;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

button {
    padding: 6px 10px;
    border: none;
    cursor: pointer;
}

.update-btn {
    background-color: #28a745;
    color: white;
}

.delete-btn {
    background-color: red;
    color: white;
}

.add-btn {
    display: block;
    width: 200px;
    margin: 20px auto;
    text-align: center;
    padding: 10px;
    background: green;
    color: white;
    text-decoration: none;
}
</style>
</head>

<body>

<div class="container">
    <h2>Student List</h2>

    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>

        <c:forEach var="s" items="${students}">
            <tr>

                <!-- UPDATE FORM -->
                <form action="update" method="post">
                    <td>
                        <input type="text" name="name" value="${s.name}" />
                    </td>

                    <td>
                        <input type="text" name="email" value="${s.email}" />
                    </td>

                    <td>
                        <input type="hidden" name="id" value="${s.id}" />
                        <button class="update-btn" type="submit">Update</button>
                    </td>
                </form>

                <!-- DELETE BUTTON -->
                <td>
                    <a href="/delete/${s.id}">
                        <button class="delete-btn">Delete</button>
                    </a>
                </td>

            </tr>
        </c:forEach>

    </table>

    <a href="/add" class="add-btn">Add New Student</a>
</div>

</body>
</html>