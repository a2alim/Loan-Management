<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div >
		
	</div>

	<div>
		<form method="POST" enctype="multipart/form-data" action="/storage">
			<table>
				<tr>
					<td>File to upload:</td>
					<td><input type="file" name="file" accept="image/x-png,image/gif,image/jpeg"  /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Upload" /></td>
				</tr>
			</table>
		</form>
	</div>

	<div>
		<ul>
			
		</ul>
	</div>
</body>
</html>