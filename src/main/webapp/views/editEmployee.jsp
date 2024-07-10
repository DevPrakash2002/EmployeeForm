<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Employee</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="home"> Employee Portal</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Employee">All Employees</a>
            </li>
        </ul>
    </div>
</nav>



<div class="container mt-5">
    <h2 class="mb-4 text-center font-weight-bold">Edit Employee</h2>
    <form:form action="editForm" method="post" modelAttribute="employee">
        <form:hidden path="empId" />
        <div class="form-group">
            <label for="empName">Employee Name</label>
            <form:input path="empName" class="form-control" />
        </div>

        <div class="form-group">
            <label for="empPosition">Employee Position</label>
            <form:input path="empPosition" class="form-control" />
        </div>

        <div class="form-group">
            <label for="department">Department</label>
            <form:input path="department" class="form-control" />
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
    </form:form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>