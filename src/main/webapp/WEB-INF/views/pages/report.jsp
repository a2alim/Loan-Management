<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="../layout/adminheader.jsp" />

<div>
	<div>
		<div class="signup-head">
			<h1>Report</h1>
		</div>
		<div class="signup-block">
			<form action="/api/user/user-report" method="post">

				<div class="row justify-content-center">
					<div class="form-group" >
							<h3 align="center" style="color: green;">${msg}</h3>
					</div>
					<div class="col-md-1"></div>
					
					<div class="col-lg-5">
						
						<div class="form-group">
							<label>username</label> <input class="form-control" type="text"
								name="username" placeholder=" username" required="">
								<input type="submit" name="Show Report" value="Submit">
						</div>
						
					</div>
					</div>
				</div>
		</div>
	</div>
</div>



<jsp:include page="../layout/adminfooter.jsp" />