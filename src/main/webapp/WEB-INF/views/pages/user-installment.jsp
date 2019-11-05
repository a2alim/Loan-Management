<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="../layout/header.jsp" />

<section class="content-info py-5">
	<div class="container py-md-5" style="margin-top: 125px;">
		<div class="text-center px-lg-5">
			<h3 style="color: green;">${msg}</h3>
			<h3 class="title-w3ls mb-5" style="color: green;">Installment Payment</h3>
		</div>
		<div class="contact-w3ls-form mt-5">
			<form action="/loaninfo-search">
				<div class="row" style="margin-left: 96px;">

					<div class="col-lg-6">
						<div class="form-group">
							<input class="form-controller" type="number" name="earchloanId"
								placeholder="Search bye loan ID" required="" />
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<button type="submit" class="btn btn-success" style="width: 200px; height: 55px;">Search</button>
						</div>
					</div>

				</div>
			</form>
			<form action="/save-installment" class="w3-pvt-contact-fm"
				method="post">
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<label>Nmae</label> <input class="form-control" type="text"
								name="name" readonly value="${loaninfo.firstName} ${loaninfo.lastName} "
								required="">
						</div>
						<div class="form-group">
							<label>Username</label> <input class="form-control" type="text"
								name="username"  readonly required="" value="${loaninfo.username}">
						</div>

						<div class="form-group">
							<label>Email</label> <input class="form-control" type="text"
								name="email"  readonly value="${loaninfo.email}" required="">
						</div>
						<div class="form-group">
							<label>Address</label> <input class="form-control" type="text"
								name="address" readonly value="${loaninfo.address}" required="">
						</div>
						<div class="form-group">
							<label>Category</label> <input class="form-control" type="text"
								name="category" readonly value="${loaninfo.category}" required="">
						</div>
					</div>
					<div class="col-lg-6">

						<div class="form-group">
							<label>Loan ID</label> <input class="form-control" type="number"
								id="loanId" readonly value="${loaninfo.loanId}" name="loanId" />
						</div>

						<div class="form-group">
							<label>Loan Amount</label> <input type="number"
								class="form-control"  name="loanAmount" 
								readonly value="${loaninfo.loanAmount}" required="" />
						</div>

						<div class="form-group">
							<label>Total Installment</label> <input class="form-control"
								type="number"   name="paybleInstallment"
								readonly value="${loaninfo.totalInstallment}" required="">
						</div>
						<div class="form-group">
							<label>Installment Amount</label> <input class="form-control"
								type="number"  name="installmentAmount"
								readonly value="${loaninfo.installmentAmount}" required="">
						</div>

						<div class="form-group mx-auto mt-3">
							<button type="submit" class="btn btn-success btn-block"
								style="margin-top: 43px;    height: 59px;">Submit Installment</button>
						</div>
					</div>

				</div>

			</form>
		</div>
	</div>
</section>


<jsp:include page="../layout/footer.jsp" />

