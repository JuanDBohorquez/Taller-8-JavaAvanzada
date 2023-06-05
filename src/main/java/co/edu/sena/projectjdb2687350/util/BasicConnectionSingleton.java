package co.edu.sena.projectjdb2687350.util;
import java.sql.*;

public class BasicConnectionSingleton {
    private static String url =
            "jdbc:mysql://localhost:3306/bancodivisas?serverTimezone=America/Bogota";
    private static String user = "Admin666";
    private static String pass = "$2a$12$iB/LfZoO8C/fiKYRJ5sDuOpp6K9SlJfz622mB3Ww70i4a9XVRBA.e";
    private static Connection conn;
    public static Connection getInstance()
            throws SQLException {
        if (conn == null) {
            conn =
                    DriverManager.getConnection(url, user,
                            pass);
        }
        return conn;
    }
} // BasicConnectionSingleton

