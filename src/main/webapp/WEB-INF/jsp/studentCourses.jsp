<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 50%;
    margin: auto;
}
th, td {
    padding: 10px;
    border: 1px solid black;
}
th {
    background-color: #007bff;
    color: white;
}
</style>
</head>

<body>

<h2 style="text-align:center;">Student - Course Data</h2>

<table>
<tr>
    <th>Student Name</th>
    <th>Course</th>
</tr>

<c:forEach var="row" items="${data}">
<tr>
    <td>${row[0]}</td>
    <td>${row[1]}</td>
</tr>
</c:forEach>

</table>

</body>
</html>