<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.SpringEmployeeform.Entity.Employee " %>
<%@ page import="com.example.SpringEmployeeform.Repository.EmployeRepo" %>
<%@ page import="java.util.Comparator" %>
<%@ page import="java.util.Collections" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>
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

<%--<ab:set var="jobPosts" value="${jobPosts}" />--%>

<%
    List<Employee> emp = (List<Employee>) request.getAttribute("emp");
    Collections.sort(emp, Comparator.comparingInt(Employee::getEmpId));
%>

<div class="container mt-5">
    <h2 class="mb-4 text-center font-weight-bold">Job Post List</h2>

    <table class="table">
        <thead>
        <tr>
            <th>Employee ID</th>
            <th>Employee Name</th>
            <th>Employee Position</th>
            <th>Employee Department</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <ab:forEach var="employee" items="${emp}">
            <tr>
                <td>${employee.empId}</td>
                <td>${employee.empName}</td>
                <td>${employee.empPosition}</td>
                <td>${employee.department}</td>
                <td>
                    <button class="btn btn-primary" onclick="location.href='editEmp?id=${employee.empId}'">Edit</button>
                    <button class="btn btn-danger" onclick="location.href='deleteEmp?id=${employee.empId}'">Delete</button>
                </td>
            </tr>
        </ab:forEach>
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
