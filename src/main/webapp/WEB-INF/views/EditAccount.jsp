<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Expense-Manager</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS for additional styling -->
<style>
    body {
        background-color: #f8f9fa;
    }
    .form-container {
        max-width: 400px;
        margin: auto;
        padding: 30px;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .brand-logo {
        font-size: 2rem;
        font-weight: bold;
        text-align: center;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
	<div class="form-container">
		<h1 class="brand-logo">Expense-Manager</h1>
		<h4 class="text-center mb-4">Edit Account</h4>
		
		<form method="post" action="updateaccount">
        
        	 <input type="hidden" name="accountId" value="${account.accountId}" />
        <!-- Title -->
        <div class="mb-4">
            <label for="title" class="form-label">Title</label>
            <input type="text" class="form-control" id="title" value="${account.title}" name="title" required>
        </div>

        <!-- Amount -->
        <div class="mb-4">
            <label for="amount" class="form-label">Amount</label>
            <input type="number" class="form-control" id="amount" value="${account.amount}" name="amount" required>
        </div>

        <!-- Description -->
        <div class="mb-4">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description"  name="description" rows="3">${account.description}</textarea>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-primary w-100">Update Account</button>
   

	<!-- Bootstrap JS (Optional) -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
