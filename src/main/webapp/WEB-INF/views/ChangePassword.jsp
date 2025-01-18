<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Change Password</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f7f9fc;
	font-family: 'Arial', sans-serif;
}

.card {
	border-radius: 15px;
	box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
}

.card-header {
	background: linear-gradient(90deg, #0069d9, #0056b3);
	color: #fff;
	text-align: center;
	padding: 20px;
}

.btn-primary {
	background-color: #0069d9;
	border: none;
}

.btn-primary:hover {
	background-color: #0056b3;
}

.form-control:focus {
	border-color: #0069d9;
	box-shadow: 0 0 6px rgba(0, 105, 217, 0.5);
}

a {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

.text-primary {
	color: #0056b3 !important;
}
</style>
</head>
<body>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h3>Change Password</h3>
					</div>
					<div class="card-body">
						<form action="/changepassword" method="post">
							<input type="hidden" name="email" value="${email}">
							<div class="mb-4">
								<label for="otp" class="form-label">Enter OTP</label> <input
									type="text" class="form-control" id="otp" name="otp" required>
							</div>
							<div class="mb-4">
								<label for="newPassword" class="form-label">New Password</label>
								<input type="password" class="form-control" id="newPassword"
									name="newPassword" required>
							</div>
							<button type="submit" class="btn btn-primary w-100">Reset
								Password</button>
							<div class="text-center mt-4">
								<p>
									Don't have an account? <a href="/signup" class="text-primary">Sign
										Up</a>
								</p>
								<p>
									Already have an account? <a href="/login" class="text-primary">Login</a>
								</p>
							</div>
							<div class="mt-3">
								<span class="text-danger">${error}</span> 
								<span class="text-success">${success}</span>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
