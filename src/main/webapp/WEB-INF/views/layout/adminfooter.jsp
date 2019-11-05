<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="copyrights" style="background-color: gray;">
	<div class="container py-md-3">
		<p style="color: white;">MD. Abdul Alim</p>
		<p style="color: white;">Student of IDB-BISEW</p>
		<p style="color: white;">New Horizon Computer Learning Center</p>
	</div>
</div>
<!--COPY rights end here-->
</div>
</div>
<!--slider menu-->
<div class="sidebar-menu">
	<div class="logo">
		<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
		</a> <a href="#"> <span id="logo"></span> <!--<img id="logo" src="" alt="Logo"/>-->
		</a>
	</div>
	<div class="menu">
		<ul id="menu">
			<li id="menu-home"><a href="/userinfo"><i class="fa fa-users"></i><span>Manage
						user</span><span class="fa fa-angle-right" style="float: right"></span></a>
				<ul>
					<li><a href="/userinfo">View User Info</a></li>
					<li><a href="/adcreate-user">Create User</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-bank"></i><span>Loans</span><span
					class="fa fa-angle-right" style="float: right"></span></a>
				<ul>
					<li><a href="/pending-loan">Approve Loan</a></li>
					<li><a href="/admanage-loan">Manage Loan</a></li>
				</ul></li>
			<li id="menu-comunicacao"><a href="#"><i
					class="fa fa-book nav_icon"></i><span>View Report</span><span
					class="fa fa-angle-right" style="float: right"></span></a>
				<ul id="menu-comunicacao-sub">
					<li id="menu-mensagens"><a href="buttons.html">Loan Report</a></li>
					<li id="menu-arquivos"><a href="typography.html">Installment Report</a></li>
					<li id="menu-arquivos"><a href="icons.html">User Report</a></li>
				</ul></li>
			<li id="menu-academico"><a href="#"><i
					class="fa fa-file-text"></i><span>Pages</span><span
					class="fa fa-angle-right" style="float: right"></span></a>
				<ul id="menu-academico-sub">
					<li id="menu-academico-boletim"><a href="/logout">Login</a></li>
					<li id="menu-academico-avaliacoes"><a href="/adcreate-user">Sign
							Up</a></li>
				</ul></li>
			<li><a href="/admanage-installment""><i class="	fa fa-cc-mastercard"></i><span>Installment</span></a></li>
			<li><a href="/adcreate-user"><i class="fa fa-user"></i><span>Create
						user</span></a></li>
			<li><a href="#"><i class="fa fa-envelope"></i><span>Mailbox</span><span
					class="fa fa-angle-right" style="float: right"></span></a>
				<ul id="menu-academico-sub">
					<li id="menu-academico-avaliacoes"><a href="/messageinbox">Mail Inbox </a></li>
					<li id="menu-academico-boletim"><a href="/compose-email">Compose
							Email</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-cog"></i><span>System</span><span
					class="fa fa-angle-right" style="float: right"></span></a>
				<ul id="menu-academico-sub">
					<li id="menu-academico-avaliacoes"><a href="/errorpage">404</a></li>
					<li id="menu-academico-boletim"><a href="/blankpage">Blank</a></li>
				</ul></li>

		</ul>
	</div>
</div>
<div class="clearfix"></div>
</div>
<!--slide bar menu end here-->
<script>
	var toggle = true;

	$(".sidebar-icon").click(
			function() {
				if (toggle) {
					$(".page-container").addClass("sidebar-collapsed")
							.removeClass("sidebar-collapsed-back");
					$("#menu span").css({
						"position" : "absolute"
					});
				} else {
					$(".page-container").removeClass("sidebar-collapsed")
							.addClass("sidebar-collapsed-back");
					setTimeout(function() {
						$("#menu span").css({
							"position" : "relative"
						});
					}, 400);
				}
				toggle = !toggle;
			});
</script>
<!--scrolling js-->
<script src="/assets/js/jquery.nicescroll.js"></script>
<script src="/assets/js/scripts.js"></script>
<!--//scrolling js-->
<script src="/assets/js/bootstrap.js">
	
</script>
<!-- mother grid end here-->
</body>
</html>