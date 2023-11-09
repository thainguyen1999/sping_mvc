<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Customer </title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 100%;
            margin: 20px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .search-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .search-form {
            width: 50%;
            display: flex;
            align-items: center;
        }

        .search-input {
            margin-right: 10px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .table-container {
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        /*th, td {*/
        /*    padding: 12px;*/
        /*    text-align: left;*/
        /*    border: 1px solid #ddd;*/
        /*}*/

        /*th {*/
        /*    background-color: #007bff;*/
        /*    color: #fff;*/
        /*    cursor: pointer;*/
        /*}*/
        .btn-create {
            background-color: #28a745;
            color: #fff;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
    <script src="https://kit.fontawesome.com/214f774cc1.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
<div  class="container">
    <h1> List Customer</h1>
    <div class="search-bar">
        <form action="/customer/findCustomerByName" method="post" class="search-form"  >
            <input type="text" id="name" name="name" class="search-input" placeholder="search..." required>
            <button type="submit" class="btn btn-primary"> <i class="fa-solid fa-magnifying-glass"></i></button>
        </form>
        <a href="/customer/getAll" class="btn btn-secondary"><i class="fa-sharp fa-solid fa-backward fa-bounce"></i></a>
    </div>
    <div class="table-container">
        <table border="1" class="table" style="width: 50%; margin-top: 10px">
            <tr>
                <th onclick="sortTable(0)">STT</th>
                <th onclick="sortTable(1)">Name</th>
                <th onclick="sortTable(2)">Age</th>
                <th onclick="sortTable(3)">Address</th>
                <th >Action</th>

            </tr>
            <c:forEach var="customer" items="${customer}" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td>${customer.name}</td>
                    <td>${customer.age}</td>
                    <td>${customer.address}</td>
                    <td>
                        <a href="/customer/deleteCustomer/${customer.id}" onclick="confirmDelete('${customer.id}')">
                            <button type="button" class="btn btn-danger" ><i class="fa-solid fa-trash"></i></button>
                        </a>

                        <a href="/customer/getFormUpdate/${customer.id}">
                            <button type="button" class="btn btn-primary" ><i class="fa-solid fa-file-pen"></i></button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <script>
        function sortTable(columnIndex) {
            // Your existing sorting logic here
        }
        function confirmDelete(customerId){
            var isConfirmed = confirm("Are you sure you want to delete this customer?");
            if (isConfirmed) {
                window.location.href = "/customer/deleteCustomer/" + customerId;
            }
        }
    </script>
    <div>
        <a href="/customer/getFormCreateCustomer" class="btn btn-create">Create New</a>
    </div>
</div>
</body>
</html>