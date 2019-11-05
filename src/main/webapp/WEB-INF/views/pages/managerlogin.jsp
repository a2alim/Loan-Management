<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../layout/header.jsp" />
<section class="content-info py-5">
	<div class="container py-md-5" style="margin-top: 150px;">
		<form>
			<div class="form-row">
				<div class="card"  style="width: 25rem; margin: auto; padding-bottom: 20px; ">
					<div class="col-md-12">
						<h3 style="color: green; margin: 20px 20px" align="center">Manager Login</h3>
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroupPrepend3"><i class="fa fa-user"></i></span>
								</div>
								<input type="text"  class="form-control is-valid"
									placeholder="Username" aria-describedby="inputGroupPrepend3" required>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroupPrepend3"><i class="fa fa-key"></i></span>
								</div>
								<input type="password" class="form-control is-valid"
									placeholder="Password" aria-describedby="inputGroupPrepend3" required>
							</div>
						</div>
						<button class="btn btn-primary btn-block" type="submit">Login</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</section>
<jsp:include page="../layout/footer.jsp" />