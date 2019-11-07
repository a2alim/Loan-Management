<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<jsp:include page="../layout/adminheader.jsp" />

<div class="row"
	style="margin-left: 40px; margin-right: 2rem; padding-bottom: 5rem; border: 2px solid green;">
	<h1 class="text-center text-success">Show User Report</h1>
	<div class="col-md-4">
		<div class="card"
			style="width: 25rem; margin-left: 3rem; margin-top: 2rem;">
			<a href="<c:url value="/user-report"/>" >
				<div class="card-body">
					<h2 class="text-primary">Show Total User</h2>
					<p class="card-text">View Total Information. And Can Download
						The Report</p>
					<a href="<c:url value="/user-report"/>" class="btn btn-primary">Show Report</a>
				</div>
			</a>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card"
			style="width: 25rem; margin-left: 3rem; margin-top: 2rem;">
			<div class="card-body">
				<form action="<c:url value="/user-report-byId"/>" method="post">
					<h2 class="text-primary">Show User By ID</h2>
					<input type="number" name="userId"  required=""/> <input type="submit"
						value="Show Report" class="btn btn-primary">
				</form>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card"
			style="width: 25rem; margin-left: 3rem; margin-top: 2rem;">
			<div class="card-body">
				<h2 class="text-primary">Show User By Username</h2>
				<form action="<c:url value="/user-report-byUsernmae"/>" method="post">
					<input type="text" name="username" /> <input type="submit"
						value="Show Report" class="btn btn-primary">
				</form>
			</div>
		</div>
	</div>
</div>


<div class="row"
	style="margin-left: 40px; margin-right: 2rem; margin-top: 10px; padding-bottom: 5rem; border: 2px solid blue;">
	<h1 class="text-center text-success">Show Loan Report</h1>
	<div class="col-md-4">
		<div class="card"
			style="width: 25rem; margin-left: 3rem; margin-top: 2rem;">
			<a href="#">

				<div class="card-body">
					<h2 class="text-primary">Manage User Information</h2>
					<p class="card-text">Admin can Create user. Update user
						information and Delete user information.</p>
					<a href="#" class="btn btn-primary">Go For Action</a>
				</div>
			</a>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card"
			style="width: 25rem; margin-left: 3rem; margin-top: 2rem;">
			<a href="#">

				<div class="card-body">
					<h2 class="text-primary">Manage User Information</h2>
					<p class="card-text">Admin can Create user. Update user
						information and Delete user information.</p>
					<a href="#" class="btn btn-primary">Go For Action</a>
				</div>
			</a>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card"
			style="width: 25rem; margin-right: 3rem; margin-top: 2rem;">
			<a href="#">
				<div class="card-body">
					<h2 class="text-primary">Manage User Installment</h2>
					<p class="card-text">Admin can Take installment. Update
						Installment information and Delete Installment information.</p>
					<a href="#" class="btn btn-primary">Go For
						Action</a>
				</div>
			</a>
		</div>
	</div>
</div>

<div class="row"
	style="margin-left: 40px; margin-top: 10px; margin-right: 2rem; margin-bottom: 10px; padding-bottom: 5rem; border: 2px solid green;">
	<h1 class="text-center text-success">Show Installment Report</h1>
	<div class="col-md-4">
		<div class="card"
			style="width: 25rem; margin-left: 3rem; margin-top: 2rem;">
			<a href="#">

				<div class="card-body">
					<h2 class="text-primary">Manage User Information</h2>
					<p class="card-text">Admin can Create user. Update user
						information and Delete user information.</p>
					<a href="#" class="btn btn-primary">Go For Action</a>
				</div>
			</a>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card"
			style="width: 25rem; margin-left: 3rem; margin-top: 2rem;">
			<a href="#">

				<div class="card-body">
					<h2 class="text-primary">Manage User Information</h2>
					<p class="card-text">Admin can Create user. Update user
						information and Delete user information.</p>
					<a href="#" class="btn btn-primary">Go For Action</a>
				</div>
			</a>
		</div>
	</div>
	<div class="col-md-4">
		<div class="card"
			style="width: 25rem; margin-right: 3rem; margin-top: 2rem;">
			<a href="#">
				<div class="card-body">
					<h2 class="text-primary">Manage User Installment</h2>
					<p class="card-text">Admin can Take installment. Update
						Installment information and Delete Installment information.</p>
					<a href="#" class="btn btn-primary">Go For
						Action</a>
				</div>
			</a>
		</div>
	</div>
</div>

<jsp:include page="../layout/adminfooter.jsp" />