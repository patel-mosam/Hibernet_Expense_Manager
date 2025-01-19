<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Vendor</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            border-radius: 15px;
            padding: 60px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.4);
            max-width: 600px;
            width: 100%;
        }
        h2 {
            text-align: center;
            margin-bottom: 50px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        .form-control {
            border-radius: 8px;
            border: 1px solid #ccc;
            height: 50px;
        }
        .form-control:focus {
            outline: none;
            border-color: #007bff;
        }
        .btn-primary {
            border: none;
            border-radius: 8px;
            padding: 16px;
            font-size: 18px;
            display: block;
            width: 100%;
        }
        .btn-primary:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Edit Vendor</h2>
    <form method="post" action="updatevendor">
        
        <!-- Title -->
        <div class="mb-4">
            <label for="title" class="form-label">Title</label>
            <input type="text" class="form-control" id="title" name="title" value="${vendor.title}">
        </div>
        
        <!-- Hidden input for vendor ID -->
        <input type="hidden" name="vendorId" value="${vendor.vendorId}">
        
        <!-- Submit Button -->
        <button type="submit" class="btn btn-primary">Update Vendor</button>
        
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
