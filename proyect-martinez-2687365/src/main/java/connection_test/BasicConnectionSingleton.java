package connection_test;

import java.sql.*;

public class BasicConnectionSingleton {
    private static String url =
            "jdbc:mysql://localhost:3306/NEON?serverTimezone=America/Bogota";
    private static String user = "martinez";
    private static String pass = "martinez";
    private static Connection conn;
    public static Connection getInstance()
            throws SQLException {
        if (conn == null) {
            conn = DriverManager.getConnection(url, user,pass);
        }
        return conn;
    }
} // BasicConnectionSingleton
