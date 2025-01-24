<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Category</title>
    <!-- Link to Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 30px;
            background-color: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .btn-submit {
            width: 100%;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
            font-size: 1.5rem;
            font-weight: bold;
        }
    </style>
</head>
<body class="bg-light">

    <div class="container mt-5">
        <!-- Card container for the form -->
        <div class="form-container">
            <div class="header">
                <h2>Add New Category</h2>
            </div>
            <form action="savecategory" method="post">
            <div class="mb-3">
				<a href="homepage" class="btn btn-success">HomePage</a>
			</div>
                <div class="mb-4">
                    <label for="title" class="form-label">Category Title:</label>
                    <input type="text" class="form-control" id="title" name="title" required placeholder="Enter category title" />
                </div>
                
                <div class="mb-3">
                    <button type="submit" class="btn btn-primary btn-submit">Add Category</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Link to Bootstrap JS (optional for additional functionality) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
