<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forget Password for Expense-Manager</title>
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
        .form-label {
            font-weight: 500;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1 class="brand-logo">Expense-Manager</h1>
        <h4 class="text-center mb-4">Forget Password</h4>
        <form action="forgetpassword" method="post">
            <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control" value="${email}" id="email" name="email" placeholder="Enter your email" required>
                
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-primary">Recover Password</button>
            </div>
        </form>
        <br>
        	<span class="text-danger">${error}</span>
        <p class="text-center mt-3">Remember your password? <a href="login">Login here</a></p>
        <p class="text-center mt-3">Don't have an account? <a href="signup">SignUp here</a></p>
    </div>

    <!-- Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
