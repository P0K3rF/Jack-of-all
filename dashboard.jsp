<%@page import="om.springmvc.entity.Transaction"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>


<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>

	<div class="container-fluid">

		<%
			
		
		String email = (String) session.getAttribute("email"); 
		List<Transaction> transaction = (List<Transaction>) request.getAttribute("tx");
		%>
		<h1>
			Welcome
			<%=email
			%></h1>
		<br> <br>


	 	<table class="table-bordered table table-responsive">
			<tr>
				<th>TransactionID</th>
				<th>Email</th>
				<th>Amount</th>
			</tr>
			<%
			for (Transaction t : transaction) {
			%>
			<tr class="success">
				<td><%=t.getTransactionId()%></td>
				<td><%=t.getEmail()%></td>
				<td><%=t.getAmount()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<div class="container">
		<form action="logout" method="post">
			<button type="submit" class="btn btn-primary">Log out</button>
		</form>
	</div>

</body>
</html>