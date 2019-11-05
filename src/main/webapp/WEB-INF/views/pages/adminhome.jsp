<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../layout/adminheader.jsp" />

<div class="row" style="margin-left: 40px; padding-bottom: 5rem;">
	<div class="col-md-6">
		<div class="card"
			style="width: 25rem; margin-left: 6rem; margin-top: 2rem;">
			<a href="/userinfo"> <img src="../assets/images/aduser.png"
				style="width: 90%" class="card-img-top" alt="...">

				<div class="card-body">
					<h2 class="text-primary">Manage User Information</h2>
					<p class="card-text">Admin can Create user. Update user
						information and Delete user information.</p>
					<a href="/userinfo" class="btn btn-primary">Go For Action</a>
				</div>
			</a>
		</div>
		<div class="card"
			style="width: 25rem; margin-left: 6rem; margin-top: 5rem;">
			<a href="/admanage-loan"> <img src="../assets/images/adloan.jpg"
				style="width: 90%" class="card-img-top" alt="...">

				<div class="card-body">
					<h2 class="text-primary">Manage Loan Information</h2>
					<p class="card-text">Admin can Create Loan. Update Loan
						information and Delete Loan information.</p>
					<a href="/admanage-loan" class="btn btn-primary">Go For Action</a>
				</div>
			</a>
		</div>
	</div>
	<div class="col-md-6">
		<div class="card"
			style="width: 25rem; margin-left: 4rem; margin-top: 2rem;">
			<a href="/admanage-installment">
			<img src="../assets/images/installment.jpg" style="width: 90%"
				class="card-img-top" alt="...">

			<div class="card-body">
				<h2 class="text-primary">Manage User Installment</h2>
				<p class="card-text">Admin can Take installment. Update Installment
					information and Delete Installment information.</p>
				<a href="/admanage-installment" class="btn btn-primary">Go For Action</a>
			</div>
			</a>
		</div>

		<div class="card"
			style="width: 25rem; margin-left: 4rem; margin-top: 5rem;">
			<a href="/messageinbox">
			<img src="../assets/images/mail.png" style="width: 90%"
				class="card-img-top" alt="...">

			<div class="card-body">
				<h2 class="text-primary">Manage Customers Mail</h2>
				<p class="card-text">Admin communicate with user by mail. Admin can Reply Mail. Update Mai
					information and Delete user information.</p>
				<a href="/messageinbox" class="btn btn-primary">Go For Action</a>
			</div>
			</a>
		</div>
	</div>

	
</div>

<jsp:include page="../layout/adminfooter.jsp" />