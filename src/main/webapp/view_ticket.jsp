<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>SDB Bank - Ticket History</title>
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

            <jsp:include page="includes/crud_nav.jsp" />

            <div class="container">
                <h2><i class="fas fa-history"></i> Ticket History</h2>

                <div class="table-container">
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th>Date</th>
                                <th>Issue</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="ticket" items="${tickets}">
                                <tr>
                                    <td>${ticket.id}</td>
                                    <td>${ticket.f_name}</td>
                                    <td>${ticket.l_name}</td>
                                    <td>${ticket.email}</td>
                                    <td>${ticket.date}</td>
                                    <td>${ticket.issue}</td>
                                    <td>
                                        <div class="btn-container">
                                            <a href="view_update_TicketServlet?id=${ticket.id}" class="btn btn-primary"
                                                style="padding: 0.4rem 0.8rem">
                                                <i class="fas fa-edit"></i>
                                            </a>
                                            <button onclick="show_delete_confirm('${ticket.id}')" class="btn btn-danger"
                                                style="padding: 0.4rem 0.8rem">
                                                <i class="fas fa-trash-alt"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <div id="delete_confirm_div" class="confirmation-dialog">
                    <h3><i class="fas fa-exclamation-triangle"></i> Confirm Deletion</h3>
                    <p>Are you sure you want to delete this ticket? This action cannot be undone.</p>
                    <div id="con_btns" class="btn-container">
                        <form action="DeleteSupportTicketServlet" method="POST">
                            <input type="hidden" id="delete_ticket_id" name="id" value="">
                            <button type="submit" class="btn btn-danger"><i class="fas fa-trash-alt"></i>
                                Delete</button>
                        </form>
                        <button onclick="hide_delete_confirm()" class="btn btn-outline"><i class="fas fa-times"></i>
                            Cancel</button>
                    </div>
                </div>
            </div>

            <footer>
                <p>&copy; 2024 SDB Bank. All rights reserved.</p>
            </footer>

            <script>
                function show_delete_confirm(ticketId) {
                    document.getElementById("delete_ticket_id").value = ticketId;
                    document.getElementById("delete_confirm_div").style.display = "block";
                }

                function hide_delete_confirm() {
                    document.getElementById("delete_confirm_div").style.display = "none";
                }
            </script>
        </body>

        </html>