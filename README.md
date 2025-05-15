# SDB Bank Support Ticket Management System

![SDB Bank Logo](https://img.shields.io/badge/SDB-Bank-blue)
[![Java](https://img.shields.io/badge/Java-1.8%2B-orange)](https://www.java.com)
[![JSP](https://img.shields.io/badge/JSP-2.3-green)](https://www.oracle.com/java/technologies/jspt.html)
[![Servlet](https://img.shields.io/badge/Servlet-4.0-yellow)](https://javaee.github.io/servlet-spec/)

A modern web-based support ticket management system for SDB Bank's online banking platform, allowing customers to submit, track, and manage their support requests.

## Table of Contents
- [SDB Bank Support Ticket Management System](#sdb-bank-support-ticket-management-system)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Technologies Used](#technologies-used)
  - [Project Structure](#project-structure)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Screenshots](#screenshots)
  - [Servlets and Database](#servlets-and-database)
    - [Key Servlets:](#key-servlets)
    - [Database Operations:](#database-operations)
  - [Contributing](#contributing)
  - [License](#license)

## Features

- **Submit Support Tickets**: Users can submit new support tickets with personal details and issue descriptions
- **View Ticket History**: All submitted tickets are displayed in a clean, sortable table
- **Update Tickets**: Existing tickets can be modified with updated information
- **Delete Tickets**: Unwanted or resolved tickets can be removed from the system
- **Modern UI/UX**: Responsive design with intuitive navigation and professional styling
- **Real-time Feedback**: Success and error messages provide immediate feedback to users

## Technologies Used

- **Frontend**:
  - JSP (JavaServer Pages)
  - HTML5
  - CSS3
  - JavaScript
  - Font Awesome Icons
  
- **Backend**:
  - Java Servlets
  - JSTL (JSP Standard Tag Library)
  
- **Database**:
  - MySQL Database
  
- **Build Tools**:
  - Maven

## Project Structure

```
proj_support/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── proj_support_package/
│   │   │       ├── DBConnectionManager.java     # Database connection handling
│   │   │       ├── delete_ticket_servlet.java   # Handles ticket deletion
│   │   │       ├── insert_ticket_servlet.java   # Handles ticket creation
│   │   │       ├── support_ticket_utill.java    # Core ticket operations
│   │   │       ├── ticket_details.java          # Ticket model class
│   │   │       ├── update_ticket_servlet.java   # Handles ticket updates
│   │   │       ├── view_ticket_servlet.java     # Displays ticket history
│   │   │       └── view_update_TicketServlet.java # Prepares ticket for editing
│   │   │
│   │   └── webapp/
│   │       ├── css/                            # Styling for all pages
│   │       ├── includes/                       # Common UI components
│   │       ├── WEB-INF/                        # Web configuration
│   │       ├── support.jsp                     # New ticket form
│   │       ├── view_ticket.jsp                 # Ticket history view
│   │       ├── update.jsp                      # Update ticket form
│   │       ├── success.jsp                     # Success notification page
│   │       └── db_failed.jsp                   # Error notification page
│   │
├── pom.xml                                     # Maven project configuration
└── README.md                                   # Project documentation
```

## Installation

1. **Prerequisites**:
   - Java JDK 1.8 or higher
   - Apache Tomcat 9.0 or higher
   - MySQL 5.7 or higher
   - Maven 3.6 or higher

2. **Database Setup**:
   ```sql
   -- Create database
   CREATE DATABASE support_db;
   
   -- Use the database
   USE support_db;
   
   -- Create support_ticket table
   CREATE TABLE support_ticket (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name  VARCHAR(100) NOT NULL,
    email      VARCHAR(100) NOT NULL,
    date       DATE NOT NULL,
    subject    VARCHAR(200) NOT NULL,
    issue      TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

   ```

3. **Configure Database Connection**:
   - Update the database connection details in `DBConnectionManager.java`

4. **Required Libraries**:
   If not using Maven for dependency management, ensure the following JAR files are present in your `WEB-INF/lib/` directory:
   ```
   WEB-INF/
   └── lib/
       ├── javax.servlet-3.1.jar          # Servlet API (if not provided by the container)
       ├── jstl-1.2.jar                   # JSTL implementation
       ├── jstl-api-1.2.jar               # JSTL API
       ├── mysql-connector-j-9.3.0.jar    # Newer MySQL JDBC driver (optional)
       ├── mysql-connector-java-5.1.48-bin.jar  # MySQL JDBC driver (commonly used version)
       └── servlet-api.jar                # May be redundant if using servlet container like Tomcat
   ```

5. **Build the Project**:
   ```bash
   mvn clean install
   ```

6. **Deploy to Tomcat**:
   - Copy the generated WAR file from the `target` directory to Tomcat's `webapps` folder
   - Or deploy directly from your IDE

## Usage

1. **Starting the Application**:
   - Start Tomcat server
   - Access the application at `http://localhost:8081/proj_support/`

2. **Creating a Support Ticket**:
   - Navigate to the "New Ticket" page
   - Fill in all required fields
   - Click "Submit Ticket"

3. **Viewing Tickets**:
   - Click on "Ticket History" in the navigation
   - View all submitted tickets in the table

4. **Updating a Ticket**:
   - From the Ticket History page, click the edit icon on the desired ticket
   - Update the information
   - Click "Update Ticket"

5. **Deleting a Ticket**:
   - From the Ticket History page, click the delete icon on the desired ticket
   - Confirm deletion in the popup dialog

## Screenshots

*[Consider adding screenshots of the main interfaces here]*

## Servlets and Database

### Key Servlets:
- **insert_ticket_servlet**: Processes new ticket submissions
- **view_ticket_servlet**: Retrieves and displays all tickets
- **view_update_TicketServlet**: Prepares a ticket for editing
- **update_ticket_servlet**: Processes ticket updates
- **delete_ticket_servlet**: Handles ticket deletion

### Database Operations:
All database operations are encapsulated in the `support_ticket_utill.java` class, which includes methods for:
- Inserting new tickets
- Retrieving all tickets
- Getting a specific ticket for updating
- Updating ticket information
- Deleting tickets

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/new-feature`
3. Commit your changes: `git commit -am 'Add new feature'`
4. Push to the branch: `git push origin feature/new-feature`
5. Submit a pull request

## License

This project is developed for educational purposes for SDB Bank. All rights reserved.

---

