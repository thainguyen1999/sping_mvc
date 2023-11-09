<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    <title>Customer form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        .btn-submit {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }

        .btn-cancel {
            background-color: #dc3545;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body >
<%--<h1 style="color: #cb0b0b;">Create New Customer</h1>--%>
<%--<form action="/customer/createOrUpdate" method="post" modelAttribute="customer" style="width: 50%;margin-left: 20%">--%>
<%--    <div class="form-group">--%>
<%--        <input type="hidden" class="form-control" name="id" value="${customer.id}">--%>
<%--    </div>--%>
<%--    <div class="form-group">--%>
<%--        <input type="text" class="form-control" name="name"   placeholder="full name" value="${customer.name}" required>--%>
<%--    </div>--%>
<%--    <div class="form-group">--%>
<%--        <input type="text" class="form-control" name="age"   placeholder="age" value="${customer.age}" required>--%>
<%--    </div>--%>
<%--    <div class="form-group">--%>
<%--        <input type="text" class="form-control" name="address"   placeholder="address" value="${customer.address}" required>--%>
<%--    </div>--%>
<%--    <button type="submit" class="btn btn-primary" style="margin-top: 10%">Submit</button>--%>
<%--</form>--%>
<div class="container">
    <h2>Create Customer</h2>
    <form action="/customer/createOrUpdate" method="post">
        <div class="form-group">
            <input type="hidden" class="form-control" name="id" value="${customer.id}">
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value="${customer.name}" required>
        </div>
        <div class="form-group">
            <label for="age">Age:</label>
            <input type="number" class="form-control" id="age" name="age" value="${customer.age}" required>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" class="form-control" id="address" name="address" value="${customer.address}" required>
        </div>
        <button type="submit" class="btn btn-submit">Submit</button>
        <a href="/customer/getAll" class="btn btn-cancel">Cancel</a>
    </form>
</div>


</body>
</html>