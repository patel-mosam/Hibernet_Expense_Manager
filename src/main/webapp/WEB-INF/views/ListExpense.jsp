<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>List Expense</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa; /* Light background for the body */
        color: #343a40; /* Dark text color for readability */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* Full height of the viewport */
        margin: 0; /* Remove default margin */
    }
    .container {
        background-color: #ffffff; /* White background for the container */
        border-radius: 15px;
        padding: 40px;
        box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.1); /* Light shadow for depth */
        max-width: 900px;
        width: 100%;
    }
    h2 {
        color: #007bff; /* Blue for the heading */
        text-align: center;
        margin-bottom: 30px;
    }
    .table {
        background-color: #ffffff; /* White background for the table */
        color: #343a40; /* Dark text color for the table */
        border-radius: 8px;
        box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.1); /* Light shadow for depth */
    }
    .table th {
        background-color: #007bff; /* Blue background for table headers */
        color: #fff;
        font-weight: bold;
        text-align: center;
    }
    .table td {
        font-weight: 600; /* Bold text for table values */
        text-align: center;
    }
    .table tr:hover {
        background-color: #f1f1f1; /* Slightly lighter background on hover for rows */
    }
    .btn-danger, .btn-primary {
        border-radius: 8px;
    }
    .btn-danger:hover, .btn-primary:hover {
        background-color: #0056b3; /* Darker blue on hover for buttons */
    }
    /* Custom styles for the table values */
    .title {
        color: #007bff; /* Blue for title */
    }
    .amount {
        color: #dc3545; /* Red for amount */
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
                <h2 class="text-center mb-4">Expense List</h2>
                   <div class="mb-3">
				<a href="homepage" class="btn btn-success">HomePage</a>
				<a href="addexpense" class="btn btn-success">Add Expense</a>
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
                        <c:forEach items="${expense}" var="expense">
                            <tr>
                                <td class="title">${expense.title}</td>
                                <td class="amount">${expense.amount}</td>
                                <td class="amount">${expense.transactionDate}</td>
                                <td class="description">${expense.description}</td>
                                <td class="description">${expense.status}</td>
                                <td>
                                    <input type="hidden" name="expenseId" value="${expense.expenseId}">
                                    <a href="deleteexpense?id=${expense.expenseId}" class="btn btn-danger btn-sm">DELETE</a>
                                    <a href="editexpense?id=${expense.expenseId}" class="btn btn-primary btn-sm">EDIT</a>
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
