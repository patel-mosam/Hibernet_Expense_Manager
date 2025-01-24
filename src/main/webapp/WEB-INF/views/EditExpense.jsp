<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Expense</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa; /* Light theme background */
            color: #495057; /* Dark gray text for better readability */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            margin: 0;
        }
        .container {
            background-color: #ffffff; /* White background for form */
            border-radius: 15px;
            padding: 60px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
            max-width: 600px;
            width: 100%;
        }
        h2 {
            color: #00796b; /* Green for heading */
            text-align: center;
            margin-bottom: 50px;
        }
        label {
            color: #495057; /* Dark gray for label text */
        }
        .form-control {
            background-color: #f1f1f1; /* Light background for input fields */
            color: #495057; /* Dark text inside inputs */
            border-radius: 8px;
            border: 1px solid #ccc; /* Light border for inputs */
            height: 50px; /* Increased height for input fields */
        }
        .form-control:focus {
            background-color: #ffffff; /* White background on focus */
            color: #495057; /* Dark text when focused */
            border-color: #00796b; /* Green border on focus */
        }
        .btn-primary {
            background-color: #00796b; /* Green for button */
            border: none;
            border-radius: 8px;
            padding: 16px; /* Larger padding for button */
            font-size: 18px; /* Larger text for button */
        }
        .btn-primary:hover {
            background-color: #004d40; /* Darker green on hover */
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Edit Expense</h2>
    <form method="post" action="updateexpense">
			
        <!-- Title -->
        <div class="mb-4">
            <label for="title" class="form-label">Title</label>
            <input type="text" class="form-control" id="title" name="title" value="${expense.title}" required >
        </div>

        <!-- Amount -->
        <div class="mb-4">
            <label for="amount" class="form-label">Amount</label>
            <input type="number" class="form-control" id="amount" name="amount" value="${expense.amount}" required>
        </div>
    
        <!-- Transaction Date -->
        <div class="mb-4">
            <label for="transactionDate" class="form-label">Transaction Date</label>
            <input type="date" class="form-control" id="transactionDate" name="transactionDate" value="${expense.transactionDate}" required>
        </div>
        
        <!-- Description -->
        <div class="mb-4">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description" name="description" rows="3">${expense.description}</textarea>
        </div>

        <!-- Status -->
        <div class="mb-4">
            <label for="status" class="form-label">Status:</label>
            <select class="form-control" id="status" name="status" required>
                <option value="PENDING" ${expense.status == 'PENDING' ? 'selected' : ''}>Pending</option>
                <option value="COMPLETED" ${expense.status == 'COMPLETED' ? 'selected' : ''}>Completed</option>
                <option value="CANCELLED" ${expense.status == 'CANCELLED' ? 'selected' : ''}>Cancelled</option>
            </select>
        </div>

        <input type="hidden" name="expenseId" value="${expense.expenseId}">
        
        <!-- Submit Button -->
        <button type="submit" class="btn btn-primary w-100">Update Expense</button>
        
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
