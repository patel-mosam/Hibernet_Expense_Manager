<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit for Expense-Manager</title>
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
		<h4 class="text-center mb-4">Edit users</h4>
		<form action="updateUser" method="post">
			<div class="mb-3">
				<label for="firstName" class="form-label">First Name</label>
				<input type="text" class="form-control" id="firstName" value="${user.firstName}" name="firstName" placeholder="Enter your first name" required>
			</div>
			<div class="mb-3">
				<label for="lastName" class="form-label">Last Name</label>
				<input type="text" class="form-control" id="lastName" value="${user.lastName}" name="lastName" placeholder="Enter your last name" required>
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email address</label>
				<input type="email" class="form-control" id="email" value="${user.email}" name="email" placeholder="Enter your email" required>
			</div>
			
			<div class="d-grid">
				<button type="submit" class="btn btn-primary">Update User</button>
			</div>
		</form>
		
	</div>

	<!-- Bootstrap JS (Optional) -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
