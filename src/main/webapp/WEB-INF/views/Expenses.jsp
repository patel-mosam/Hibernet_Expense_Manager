<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expense Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Add Expense</h1>
        <form action="saveexpenses" method="post" class="row g-3">
            <!-- Title -->
            <div class="col-md-6">
                <label for="title" class="form-label">Title</label>
                <input type="text" class="form-control" id="title" name="title" required>
            </div>

                         <!-- Status -->
            <div class="col-md-6">
                <label for="status" class="form-label">Status</label>
                <select id="status" name="status" class="form-select" required>
                    <option value="PENDING">Pending</option>
                    <option value="COMPLETED">Completed</option>
                    <option value="CANCELLED">Cancelled</option>
                </select>
            </div>

            <!-- Amount -->
            <div class="col-md-6">
                <label for="amount" class="form-label">Amount</label>
                <input type="number" class="form-control" id="amount" name="amount" step="0.01" required>
            </div>

            <!-- Transaction Date -->
            <div class="col-md-6">
                <label for="transactionDate" class="form-label">Transaction Date</label>
                <input type="datetime-local" class="form-control" id="transactionDate" name="transactionDate" required>
            </div>

            <!-- Description -->
            <div class="col-12">
                <label for="description" class="form-label">Description</label>
                <textarea id="description" name="description" class="form-control" rows="4" maxlength="500"></textarea>
            </div>

         
            <!-- Submit Button -->
            <div class="col-12 text-center">
                <button type="submit" class="btn btn-primary">Save Expense</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS (Optional for interactive components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
