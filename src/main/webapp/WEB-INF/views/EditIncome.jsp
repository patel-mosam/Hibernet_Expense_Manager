<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Income</title>
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
                <h2>Edit Income</h2>
            </div>
            <form action="updateincome" method="post">
               <input type="hidden" name="incomeId" value="${income.incomeId}" />
                <div class="mb-4">
                    <label for="title" class="form-label">Income Title:</label>
                    <input type="text" class="form-control" id="title" name="title" value="${income.title}" required />
                </div>
                
                 <!-- Income Status -->
            <div class="mb-4">
                <label for="status" class="form-label">Income Status:</label>
                <select class="form-control" id="status" name="status"   required>
                    <option value="">Select Status</option>
                    <option value="PENDING">PENDING</option>
                    <option value="COMPLETED">COMPLETED</option>
                    <option value="CANCELLED">CANCELLED</option>
                </select>
            </div>
            
            <!-- Amount -->
            <div class="mb-4">
                <label for="amount" class="form-label">Amount:</label>
                <input type="number" class="form-control" id="amount" name="amount" value="${income.amount}"  required  step="0.01">
            </div>
            
            <!-- Transaction Date -->
            <div class="mb-4">
                <label for="transactionDate" class="form-label">Transaction Date:</label>
                <input type="date" class="form-control" id="transactionDate" value="${income.transactionDate}" name="transactionDate" required>
            </div>
            
            <!-- Description -->
            <div class="mb-4">
                <label for="description" class="form-label">Description:</label>
              <input type="text" class="form-control" id="description" name="description" value="${expenses.description}" required  />
            </div>
            
                
                <div class="mb-3">
                    <button type="submit" class="btn btn-primary btn-submit">Updated Income</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Link to Bootstrap JS (optional for additional functionality) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
