<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>HomePage</title>
<!-- Add Bootstrap CSS for styling -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- Add custom CSS for mobile app-like design -->
<style>
    body {
        background-color: #f8f9fa;
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        padding-top: 60px;
        max-width: 400px;
        margin: 0 auto;
    }

    h2 {
        font-size: 2rem;
        font-weight: bold;
        color: #343a40;
        text-align: center;
        margin-bottom: 40px;
    }

    .card {
        border-radius: 20px;
        overflow: hidden;
        box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    .card-body {
        padding: 30px;
        text-align: center;
    }

    .btn {
        font-size: 1.2rem;
        padding: 20px;
        margin: 10px;
        width: 100%;
        border-radius: 10px;
        transition: background-color 0.3s ease;
    }

    .btn:hover {
        transform: scale(1.05);
    }

    .btn-primary {
        background-color: #007bff;
        border: none;
    }

    .btn-primary:hover {
        background-color: #0056b3;
    }

    .btn-success {
        background-color: #28a745;
        border: none;
    }

    .btn-success:hover {
        background-color: #218838;
    }

    .btn-info {
        background-color: #17a2b8;
        border: none;
    }

    .btn-info:hover {
        background-color: #138496;
    }

    .btn-warning {
        background-color: #ffc107;
        border: none;
    }

    .btn-warning:hover {
        background-color: #e0a800;
    }

    .btn-group {
        display: flex;
        flex-direction: column;
    }

    /* For mobile-first design */
    @media (max-width: 576px) {
        .container {
            padding-top: 40px;
        }
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Welcome to HomePage :))</h2>
        <!-- Card for the navigation buttons -->
        <div class="card">
            <div class="card-body">
                <div class="btn-group">
                    <!-- Button for List Account -->
                    <a href="/listuser" class="btn btn-primary btn-lg">List Users Account</a>
                    <!-- Button for Create Account -->
                    <a href="/createaccount" class="btn btn-success btn-lg">Create Account</a>
                      <!-- Button for Add Account -->
                    <a href="/listaccount" class="btn btn-success btn-lg">List Account</a>
                    <!-- Button for Vendor -->
                    <a href="/addvendor" class="btn btn-info btn-lg">Add Vendor</a>
                    <!-- Button for Category -->
                    <a href="/category" class="btn btn-warning btn-lg">Add Category</a>
                    <!-- Button for Category -->
                    <a href="/listcategory" class="btn btn-warning btn-lg">List Category</a>
                    <!-- Button for Sub Category -->
                    <a href="/subcategory" class="btn btn-warning btn-lg">Subcategory</a>
                    <!-- Button for List Sub Category -->
                    <a href="/listsubcategory" class="btn btn-warning btn-lg">List Sub Category</a>
                     <!-- Button for Expenses -->
                    <a href="/expenses" class="btn btn-warning btn-lg">Expenses</a>
                      <!-- Button for List Expenses -->
                    <a href="/listexpenses" class="btn btn-warning btn-lg">List Expenses</a>
                    <!-- Button for Income -->
                    <a href="/income" class="btn btn-warning btn-lg">Income</a>
                     <!-- Button for List Income -->
                    <a href="/listincome" class="btn btn-warning btn-lg">List Income</a>
                   
                </div>
            </div>
        </div>
    </div>

    <!-- Add Bootstrap JS for functionality (optional for features like dropdowns, modals, etc.) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
