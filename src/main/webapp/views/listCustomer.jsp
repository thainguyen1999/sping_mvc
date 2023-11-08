<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Customer form</title>
    <script src="https://kit.fontawesome.com/214f774cc1.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
<h1> List Customer</h1>
<table border="1" class="table" style="width: 50%; margin-top: 10px">
    <tr>
        <th  scope="col">STT</th>
        <th  scope="col">Name</th>
        <th  scope="col">Age</th>
        <th  scope="col">Address</th>
        <th  scope="col">Action</th>
    </tr>
    <c:forEach var="customer" items="${customer}" varStatus="loop">
        <tr>
            <td>${loop.index + 1}</td>
            <td>${customer.name}</td>
            <td>${customer.age}</td>
            <td>${customer.address}</td>
            <td>
                <a href="/customer/deleteCustomer/${customer.id}">
                    <button type="button" class="btn btn-danger" ><i class="fa-solid fa-trash"></i></button>
                </a>
                <a href="/customer/getFormUpdate/${customer.id}">
                    <button type="button" class="btn btn-primary" ><i class="fa-solid fa-file-pen"></i></button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<div>
    <a href="/customer/getFormCreateCustomer" class="btn btn-primary">Create New</a>
</div>


</body>
</html>