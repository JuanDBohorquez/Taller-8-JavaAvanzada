package co.edu.sena.projectjdb2687350.util;
import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.*;

public class ConnectionPool {
    private static String url = "jdbc:mysql://localhost:3306/bancodivisas?serverTimezone=America/Bogota";
    private static String user = "Admin666";
    private static String pass = "$2a$12$iB/LfZoO8C/fiKYRJ5sDuOpp6K9SlJfz622mB3Ww70i4a9XVRBA.e";
    private static BasicDataSource pool;
    public static BasicDataSource
    getInstance() throws SQLException {
        if (pool == null) {
            pool = new BasicDataSource();
            pool.setUrl(url);
            pool.setUsername(user);
            pool.setPassword(pass);
            pool.setInitialSize(5);
            pool.setMinIdle(5);
            pool.setMaxIdle(10);
            pool.setMaxTotal(10);
        }
        return pool;
    }
    public static Connection getConnection()
            throws SQLException{
        return getInstance().getConnection();
    }
} // ConnectionPool

