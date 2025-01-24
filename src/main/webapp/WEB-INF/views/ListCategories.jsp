<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Categories List</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.container {
	max-width: 900px;
}

.table th, .table td {
	vertical-align: middle;
}

.card-header {
	background-color: #007bff;
	color: white;
}

.btn-sm {
	margin-right: 5px;
}

.action-buttons {
	display: flex;
	justify-content: center;
	gap: 10px;
}

.action-buttons a {
	text-decoration: none;
}
</style>
</head>
<body class="bg-light">

	<div class="container mt-5">
		<div class="card shadow-sm">
			<div class="card-header text-center">
				<h3>Categories List</h3>
			</div>

			<div class="card-body">
				<!-- Add New Category Button -->
				<div class="mb-3">
					<a href="homepage" class="btn btn-success">HomePage</a> <a
						href="category" class="btn btn-success">Add New Category</a>
				</div>
				<table class="table table-bordered table-hover">
					<thead class="table-primary">
						<tr>
							<th>User_Id</th>
							<th>Category_Id</th>
							<th>Title</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${category}" var="c">
							<tr>
								<td>${c.user.userId}</td>
								<td>${c.categoryId}</td>
								<td>${c.title}</td>
								<td class="action-buttons"><a
									href="editcategory?categoryId=${c.categoryId}"
									class="btn btn-warning btn-sm">Edit</a> <a
									href="deletecategory?categoryId=${c.categoryId}"
									class="btn btn-danger btn-sm"
									onclick="return confirm('Are you sure you want to delete this Category?')">Delete</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
