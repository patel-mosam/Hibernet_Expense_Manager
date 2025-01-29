<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>List Income</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa; /* Light background for the page */
        color: #212529; /* Dark text color for readability */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* Full height of the viewport */
        margin: 0; /* Remove default margin */
    }
    .container {
        background-color: #ffffff; /* White background for the form */
        border-radius: 15px;
        padding: 40px;
        box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        max-width: 900px;
        width: 100%;
    }
    h2 {
        color: #007bff; /* Blue color for the heading */
        text-align: center;
        margin-bottom: 30px;
    }
    .table {
        background-color: #ffffff; /* White background for the table */
        color: #212529;
        border-radius: 8px;
        box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
    }
    .table th {
        background-color: #007bff;
        color: #fff;
        font-weight: bold;
        text-align: center;
    }
    .table td {
        font-weight: 600; /* Bold text for table values */
        text-align: center;
    }
    .table tr:hover {
        background-color: #f1f1f1; /* Lighter background on hover for rows */
    }
    .btn-danger, .btn-primary {
        border-radius: 8px;
    }
    .btn-danger:hover, .btn-primary:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
    /* Custom styles for the table values */
    .title {
        color: #007bff; /* Blue for title */
    }
    .amount {
        color: #28a745; /* Green for amount */
        font-weight: bold;
    }
    .description {
        color: #6c757d; /* Gray for description */
        font-style: italic;
    }
</style>
</head>
<body>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <h2 class="text-center mb-4">Income List</h2>
                
                <div class="mb-3">
				<a href="userdashboard" class="btn btn-primary">User Dashboard</a>
				<a href="addincome" class="btn btn-success">Add Income</a>
			</div>
			
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Amount</th>
                            <th>Transaction Date</th>
                            <th>Description</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${income}" var="income">
                            <tr>
                                <td class="title">${income.title}</td>
                                <td class="amount">${income.amount}</td>
                                <td class="amount">${income.transactionDate}</td>
                                <td class="description">${income.description}</td>
                                <td class="description">${income.status}</td>
                                <td>
                                    <input type="hidden" name="incomeId" value="${income.incomeId}">
                                    <a href="deleteincome?id=${income.incomeId}" class="btn btn-danger btn-sm">DELETE</a>
                                    <a href="editincome?id=${income.incomeId}" class="btn btn-primary btn-sm">EDIT</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
