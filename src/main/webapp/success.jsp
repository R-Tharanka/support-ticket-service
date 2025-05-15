<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDB Bank - Success</title>
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
        <div class="status-message status-success">
            <i class="fas fa-check-circle" style="font-size: 3rem; display: block; margin-bottom: 1rem;"></i>
            <h2>Success!</h2>
            <p>Your support ticket has been successfully processed.</p>
        </div>
        
        <div class="btn-container" style="margin-top: 2rem; justify-content: center;">
            <a href="support.jsp" class="btn btn-primary">
                <i class="fas fa-ticket-alt"></i> New Support Ticket
            </a>
            <a href="view_ticket_servlet" class="btn btn-outline">
                <i class="fas fa-history"></i> View Ticket History
            </a>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 SDB Bank. All rights reserved.</p>
    </footer>
</body>

</html>