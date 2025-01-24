<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Expense</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa; /* Light theme background */
	color: #495057; /* Dark text for readability */
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh; /* Full viewport height */
	margin: 0;
}

.container {
	background-color: #ffffff; /* White background for form */
	border-radius: 15px;
	padding: 40px;
	box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.1); /* Shadow for depth */
	max-width: 600px;
	width: 100%;
}

h2 {
	color: #007bff; /* Blue for heading */
	text-align: center;
	margin-bottom: 30px;
}

label {
	color: #495057; /* Dark text for labels */
}

.form-control {
	background-color: #ffffff; /* White input fields */
	color: #495057; /* Dark text inside inputs */
	border-radius: 8px;
	border: 1px solid #ced4da; /* Light border for inputs */
	height: 50px; /* Increased height for input fields */
}

.form-control:focus {
	background-color: #e9ecef; /* Light gray focus background */
	color: #495057; /* Dark text when focused */
	border-color: #007bff; /* Blue border on focus */
}

.btn-primary {
	background-color: #007bff; /* Blue for button */
	border: none;
	border-radius: 8px;
	padding: 16px; /* Larger padding for button */
	font-size: 18px; /* Larger text for button */
}

.btn-primary:hover {
	background-color: #0056b3; /* Darker blue on hover */
}

.form-label {
	font-size: 1.1rem;
	font-weight: 500;
}

.btn-custom {
	background-color: #6c757d;
	border-radius: 8px;
	padding: 12px;
	font-size: 16px;
	width: 100%;
}

.btn-custom:hover {
	background-color: #5a6268;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Add Expense</h2>
		<form method="post" action="saveexpense">

			<div class="mb-3">
				<a href="homepage" class="btn btn-success">HomePage</a>
			</div>


			<!-- Title -->
			<div class="mb-4">
				<label for="title" class="form-label">Title</label> <input
					type="text" class="form-control" id="title" name="title" required>
			</div>

			<!-- Amount -->
			<div class="mb-4">
				<label for="amount" class="form-label">Amount</label> <input
					type="number" class="form-control" id="amount" name="amount"
					required>
			</div>

			<!-- Description -->
			<div class="mb-4">
				<label for="description" class="form-label">Description</label>
				<textarea class="form-control" id="description" name="description"
					rows="3"></textarea>
			</div>

			<!-- Transaction Date -->
			<div class="mb-4">
				<label for="transactionDate" class="form-label">Transaction
					Date</label> <input type="date" class="form-control" id="transactionDate"
					name="transactionDate" required>
			</div>

			<!-- Status Dropdown -->
			<div class="mb-4">
				<label for="status" class="form-label">Status</label> <select
					name="status" id="status" class="form-control">
					<option value="COMPLETED">Completed</option>
					<option value="CANCELLED">Cancelled</option>
					<option value="PENDING">Pending</option>
				</select>
			</div>

			<!-- Submit Button -->
			<button type="submit" class="btn btn-primary w-100">Add
				Expense</button>

		</form>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
