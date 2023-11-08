<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    <title>Customer form</title>
</head>
<body >
<h1 style="color: #cb0b0b;">Create New Customer</h1>
<form action="/customer/createOrUpdate" method="post" modelAttribute="customer" style="width: 50%;margin-left: 20%">
    <div class="form-group">
        <input type="hidden" class="form-control" name="id" value="${customer.id}">
    </div>
    <div class="form-group">
        <input type="text" class="form-control" name="name"   placeholder="full name" value="${customer.name}">
    </div>
    <div class="form-group">
        <input type="text" class="form-control" name="age"   placeholder="age" value="${customer.age}">
    </div>
    <div class="form-group">
        <input type="text" class="form-control" name="address"   placeholder="address" value="${customer.address}">
    </div>
    <button type="submit" class="btn btn-primary" style="margin-top: 10%">Submit</button>
<%--    <input type="hidden" name="id" value="${customer.id}" />--%>
<%--    <input type="text" name="name" value="${customer.name}" />--%>
<%--    <input type="text" name="age" value="${customer.age}" />--%>
<%--    <input type="text" name="address" value="${customer.address}" />--%>
<%--    <input type="submit" value="submit" />--%>
</form>


</body>
</html>