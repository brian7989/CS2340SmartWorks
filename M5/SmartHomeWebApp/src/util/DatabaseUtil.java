package util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Utility for accessing SmartWorks database
 */
public class DatabaseUtil {
    public static Connection getConnection() {
        try {
            //TODO Create SmartWorks database, replace credentials
            String dbURL = "jdbc:mysql://localhost:3306/smarthomeuser";
            String dbID = "root";
            String dbPW = "MyPass";
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(dbURL,dbID,dbPW);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
