<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Income List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container {
            max-width: 900px;
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .card-header {
            background-color: #007bff;
            color: white;
        }
        .btn-sm {
            margin-right: 5px;
        }
        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .action-buttons a {
            text-decoration: none;
        }
    </style>
</head>
<body class="bg-light">

    <div class="container mt-5">
        <div class="card shadow-sm">
            <div class="card-header text-center">
                <h3>Income List</h3>
            </div>
            <div class="card-body">
             <!-- Add New Category Button -->
                <div class="mb-3">
                    <a href="income" class="btn btn-success">Add Income</a>
                </div>
                <table class="table table-bordered table-hover">
                    <thead class="table-primary">
                        <tr>
                            <th>IncomeId</th>
                            <th>Title</th>
                             <th>Status</th>
                            <th>Amount</th>
                             <th>Transaction Date</th>
                            <th>Description</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${income}" var="i">
                            <tr>
                                <td>${i.incomeId}</td>
                                <td>${i.title}</td>
                                <td>${i.status}</td>
                                <td>${i.amount}</td>
                                <td>${i.transactionDate}</td>
                                <td>${i.description}</td>
                                <td class="action-buttons">
                                    <a href="editincome?incomeId=${i.incomeId}" class="btn btn-warning btn-sm">Edit</a>
                                    <a href="deleteincome?incomeId=${i.incomeId}" class="btn btn-danger btn-sm"
                                       onclick="return confirm('Are you sure you want to delete this Category?')">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
