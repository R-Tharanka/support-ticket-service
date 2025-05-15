<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>SDB Bank - Support</title>
	<link rel="stylesheet" href="css/modern.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body>
	<header>
		<div class="header-container">
			<div class="logo-container">
				<div class="logo"><i class="fas fa-university"></i> SDB Bank</div>
				<div class="app-title">Online Banking System</div>
			</div>
			<nav>
				<ul>
					<li><a href="#"><i class="fas fa-home"></i> Home</a></li>
					<li><a href="#"><i class="fas fa-wallet"></i> Accounts</a></li>
					<li><a href="#"><i class="fas fa-exchange-alt"></i> Transactions</a></li>
					<li><a href="#"><i class="fas fa-file-invoice-dollar"></i> Bill Payments</a></li>
					<li><a href="#"><i class="fas fa-headset"></i> Support</a></li>
					<li><a href="#"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<jsp:include page="includes/crud_nav.jsp"/>

	<div class="container">
		<h2><i class="fas fa-ticket-alt"></i> Submit a Support Ticket</h2>

		<c:if test="${not empty successMsg}">
			<div class="status-message status-success">
				<i class="fas fa-check-circle"></i> ${successMsg}
			</div>
		</c:if>

		<form action="insert_ticket_servlet" method="POST">
			<input type="hidden" name="id" value="0">
			
			<div class="form-group">
				<label for="firstName"><i class="fas fa-user"></i> First Name</label>
				<input type="text" id="firstName" name="firstName" required>
			</div>

			<div class="form-group">
				<label for="lastName"><i class="fas fa-user"></i> Last Name</label>
				<input type="text" id="lastName" name="lastName" required>
			</div>

			<div class="form-group">
				<label for="email"><i class="fas fa-envelope"></i> Email</label>
				<input type="email" id="email" name="email" required>
			</div>

			<div class="form-group">
				<label for="date"><i class="fas fa-calendar"></i> Date</label>
				<input type="date" id="date" name="date" required>
			</div>

			<div class="form-group">
				<label for="subject"><i class="fas fa-tag"></i> Subject</label>
				<input type="text" id="subject" name="subject" required>
			</div>

			<div class="form-group">
				<label for="issue"><i class="fas fa-comment-alt"></i> Issue Description</label>
				<textarea id="issue" name="issue" rows="4" required></textarea>
			</div>

			<div class="btn-container">
				<button type="submit" class="btn btn-success">
					<i class="fas fa-paper-plane"></i> Submit Ticket
				</button>
				<button type="button" class="btn btn-outline" onclick="window.location.href='view_ticket_servlet'">
					<i class="fas fa-times"></i> Cancel
				</button>
			</div>
		</form>

		<div class="btn-container" style="margin-top: 2rem;">
			<a href="view_ticket_servlet" class="btn btn-primary">
				<i class="fas fa-history"></i> View Ticket History
			</a>
		</div>
	</div>

	<footer>
		<p>&copy; 2024 SDB Bank. All rights reserved.</p>
	</footer>

</body>

</html>