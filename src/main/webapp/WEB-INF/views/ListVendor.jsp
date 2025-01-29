<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>List Vendors</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa; /* Light gray background for simplicity */
        color: #000; /* Black text for readability */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background-color: #fff; /* White background for the form */
        border-radius: 10px;
        padding: 40px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2); /* Subtle shadow for depth */
        max-width: 1200px; /* Increased container width */
        width: 100%;
    }
    h2 {
        text-align: center;
        margin-bottom: 30px;
    }
    .table {
        border-radius: 5px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2); /* Subtle shadow for depth */
        font-size: 1.1rem; /* Larger font size for better visibility */
        width: 100%; /* Make the table occupy full width */
    }
    .table th, .table td {
        padding: 15px; /* Increase padding for better spacing */
        text-align: center;
    }
    .table tr:hover {
        background-color: #f1f1f1; /* Light gray background on hover for rows */
    }
    .btn-danger, .btn-primary {
        border-radius: 5px;
    }
</style>
</head>
<body>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-12">
            
                <h2 class="text-center mb-4">Vendor List</h2>
                <div class="mb-3">
                  <a href="userdashboard" class="btn btn-primary">User Dashboard</a>
                    <a href="addvendor" class="btn btn-success">Add New Vendors</a>
                </div>
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                        <th>User_Id</th>
                        	<th>Vendor_Id</th>
                            <th>Title</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${vendors}" var="vendor">
                            <tr>
                            <td>${vendor.user.userId}</td>
                              	<td>${vendor.vendorId}</td>
                                <td>${vendor.title}</td>
                                <td>
                                    <!-- Hidden input to pass vendor ID -->
                                    <input type="hidden" name="vendorId" value="${vendor.vendorId}">
                                    <a href="deletevendor?id=${vendor.vendorId}" class="btn btn-danger btn-sm">DELETE</a>
                                    <a href="editvendor?id=${vendor.vendorId}" class="btn btn-primary btn-sm">EDIT</a>
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
