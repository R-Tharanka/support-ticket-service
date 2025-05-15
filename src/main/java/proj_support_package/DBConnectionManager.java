package proj_support_package;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnectionManager {

    private static final String URL = "jdbc:mysql://localhost:3306/support_db?useSSL=false&serverTimezone=UTC";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load driver once at class loading time
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("MySQL JDBC Driver not found", e);
        }
    }

    public static Connection getConnection() throws Exception {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}
