<html>
<head>
<style>
body {
    font-family: Arial;
    background-color: #f4f6f8;
}

.container {
    width: 400px;
    margin: 100px auto;
    padding: 20px;
    background: white;
    border-radius: 10px;
    box-shadow: 0 0 10px gray;
}

h2 {
    text-align: center;
}

input {
    width: 100%;
    padding: 8px;
    margin: 10px 0;
}

button {
    width: 100%;
    padding: 10px;
    background: #007bff;
    color: white;
    border: none;
    cursor: pointer;
}

button:hover {
    background: #0056b3;
}
</style>
</head>

<body>

<div class="container">
    <h2>Add Student</h2>

    <form action="save" method="post">
        Name:
        <input type="text" name="name" required/>

        Email:
        <input type="text" name="email" required/>

        <button type="submit">Save</button>
    </form>
</div>

</body>
</html>