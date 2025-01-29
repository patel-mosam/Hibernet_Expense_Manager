<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Vendor</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa; /* Light gray background */
	color: #212529; /* Default Bootstrap text color */
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	font-family: 'Arial', sans-serif;
}

.container {
	background-color: #ffffff; /* White form background */
	border-radius: 10px;
	padding: 40px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
	max-width: 500px;
	width: 90%;
}

h2 {
	color: #212529; /* Default heading color */
	text-align: center;
	margin-bottom: 20px;
	font-weight: bold;
}

label {
	font-weight: 500;
	margin-bottom: 8px;
	display: block;
}

.form-control {
	background-color: #f8f9fa; /* Light gray input background */
	color: #212529;
	border-radius: 5px;
	border: 1px solid #ced4da; /* Default Bootstrap border */
	height: 45px;
}

.form-control:focus {
	border-color: #86b7fe; /* Default Bootstrap focus border */
	box-shadow: 0 0 5px rgba(13, 110, 253, 0.25); /* Subtle focus shadow */
}

.btn-primary {
	background-color: #0d6efd; /* Bootstrap primary button color */
	border: none;
	border-radius: 5px;
	padding: 10px;
	font-size: 16px;
}

.btn-primary:hover {
	background-color: #084298; /* Darker blue on hover */
}
</style>
</head>
<body>
	<div class="container">
		<h2>Add Vendor</h2>
		<form method="post" action="savevendor">

			<div class="mb-3">
				<a href="userdashboard" class="btn btn-primary">User Dashboard</a>
			</div>

			<!-- Title -->
			<div class="mb-3">
				<label for="title" class="form-label">Title</label> <input
					type="text" class="form-control" id="title" name="title"
					placeholder="Enter Title" required>
			</div>
			<!-- Submit Button -->
			<button type="submit" class="btn btn-primary w-100">Add
				Vendor</button>
		</form>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
