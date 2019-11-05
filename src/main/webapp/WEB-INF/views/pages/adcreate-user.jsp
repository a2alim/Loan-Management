<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="../layout/adminheader.jsp" />

<div>
	<div>
		<div class="signup-head">
			<h1>Registration Form</h1>
		</div>
		<div class="signup-block">
			<form action="/aduser-save" method="post">

				<div class="row">
					<div class="form-group" >
							<h3 align="center" style="color: green;">${msg}</h3>
					</div>
					<div class="col-md-1"></div>
					
					<div class="col-lg-5">
						
						<div class="form-group">
							<label>First Name</label> <input class="form-control" type="text"
								name="fName" placeholder="Enter First Name" required="">
						</div>
						<div class="form-group">
							<label>Last Name</label> <input class="form-control" type="text"
								name="lName" placeholder="Enter last Name" required="">
						</div>

						<div class="form-group">
							<label>Email</label> <input class="form-control" type="email"
								name="email" placeholder="Enter Email" required="">
						</div>
						<div class="form-group">
							<label>Phone</label> <input class="form-control" type="number"
								name="phone" placeholder="Enter Phone" required="">
						</div>

						<div class="form-group">
							<label>Role</label> <select class="form-control" name="role">
								<option value="Admin">Admin</option>
								<option value="User">User</option>
								<option value="Manager">Manager</option>
							</select>
						</div>
					</div>
					<div class="col-lg-5">
						<div class="form-group">
							<label>Address</label>
							<textarea class="form-control" name="address"
								placeholder="Enter Full Address " required=""></textarea>
						</div>

						<div class="form-group">
							<label>Username</label> <input class="form-control" type="text"
								name="username" placeholder="Enter Username" required="">
						</div>
						<div class="form-group">
							<label>Password</label> <input class="form-control" type="text"
								name="password" placeholder="Enter Password" required="">
						</div>
						<div class="form-group">
							<label>Enabled</label> <select class="form-control"
								name="enabled">
								<option value="True">True</option>
								<option value="False">False</option>
							</select>
						</div>
						<div class="form-group">
							<input type="submit" name="Sign In" value="Submit">
						</div>
					</div>
				</div>

			</form>
			<div class="sign-down">
				<h4>
					Already have an account? <a href="/logout"> Login here.</a>
				</h4>
				<h5>
					<a href="/adminhome">Go Back to Home</a>
				</h5>
			</div>
		</div>
	</div>
</div>



<jsp:include page="../layout/adminfooter.jsp" />