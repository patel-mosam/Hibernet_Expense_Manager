<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account List</title>
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- CSS -->
<link rel="stylesheet" href="assets/vendors/feather/feather.css">
<link rel="stylesheet"
	href="assets/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="shortcut icon" href="assets/images/favicon.png" />
<style>
body {
	background-color: #f4f6f9;
	font-family: 'Arial', sans-serif;
}

.auth-form-light {
	background: #fff;
	border-radius: 10px;
	box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
	padding: 20px;
	width: 100%; /* Ensure it spans the full width */
	max-width: none; /* Remove width limitation */
	margin: 0 auto;
}

h2 {
	text-align: center;
	font-size: 2rem;
	font-weight: bold;
	color: navy;
	text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
	margin-bottom: 20px;
}

.table-container {
	overflow-x: visible; /* Ensure no horizontal scrolling */
}

.table {
	background: #fff;
	border-radius: 10px;
	margin: 0 auto;
	width: 100%; /* Take full width */
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
	border-collapse: collapse; /* Reduce extra spacing */
}

.table th, .table td {
	text-align: center;
	vertical-align: middle;
	padding: 10px;
	word-wrap: break-word; /* Break long text */
	white-space: normal; /* Allow wrapping of content */
}

.table th {
	background-color: navy;
	color: #fff;
}

.btn {
	border-radius: 25px;
}

.btn-primary {
	background-color: navy;
	color: #fff;
}

.btn-danger {
	background-color: #d9534f;
	color: #fff;
}

.btn:hover {
	opacity: 0.9;
}
</style>

</head>
<body>
	<div class="container-fluid page-body-wrapper full-page-wrapper">
		<div class="content-wrapper d-flex align-items-center auth px-0">
			<div class="row w-100 mx-0">
				<div class="col-lg-8 mx-auto">
					<div class="auth-form-light text-left py-5 px-4 px-sm-5">
						<h2>Account List</h2>
						<div class="mb-3 d-flex justify-content-between">
							<a href="createaccount" class="btn btn-primary">Add Account</a> 
							<a href="userdashboard" class="btn btn-primary">User Dashboard</a>
						</div>
						<div class="table-container">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>User_Id</th>
										<th>Account_Id</th>
										<th>Title</th>
										<th>Amount</th>
										<th>Description</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${accounts}" var="a">
										<tr>
											<td>${a.user.userId}</td>
											<td>${a.accountId}</td>
											<td>${a.title}</td>
											<td>${a.amount}</td>
											<td>${a.description}</td>
											<td>
												<div class="d-flex justify-content-center gap-2">
													<a href="deleteaccount?id=${a.accountId}"
														class="btn btn-danger btn-sm">Delete</a> <a
														href="editaccount?id=${a.accountId}"
														class="btn btn-primary btn-sm">Edit</a>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- JS -->
	<script src="assets/vendors/js/vendor.bundle.base.js"></script>
	<script src="assets/js/off-canvas.js"></script>
	<script src="assets/js/template.js"></script>
	<script src="assets/js/settings.js"></script>
	<script src="assets/js/todolist.js"></script>
</body>
</html>
