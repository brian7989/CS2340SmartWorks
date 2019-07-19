package sensor;

import util.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Data Access Object for sensor
 */
public class SensorDAO {

    private final Connection conn;
    private final String currentUserID;

    /**
     * Constructor for SensorDAO
     * Stores session userID.
     *
     * @param currentUserID current user's session userID
     */
    public SensorDAO(String currentUserID) {
        conn = DatabaseUtil.getConnection();
        this.currentUserID = currentUserID;
    }

    /**
     * Adds to sensor table using SQL statement.
     *
     * @param name device name that the user desires to input
     * @param type device type that the user desires to input
     * @return status code displaying completion/error for SQL process
     */
    public int addSensor(String name, String type) {
        //No need to mind error here
        String SQL = "INSERT INTO sensor (deviceName, deviceType, userID) VALUES (?,?,?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, name);
            pstmt.setString(2, type);
            pstmt.setString(3, currentUserID);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public ResultSet viewSensor() {
        String SQL = "SELECT * FROM sensor WHERE userID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, currentUserID);
            ResultSet rs = pstmt.executeQuery();
            System.out.println(rs);
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int setStatus(Boolean status, String deviceID) {
        @SuppressWarnings("SyntaxError") String SQL = "UPDATE sensor SET status = ? WHERE id = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, "false");
            pstmt.setString(2, deviceID);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
