package sensor;

import util.DatabaseUtil;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Data Access Object for sensor
 */
public class SensorDAO {

    private Connection conn;
    private String currentUserID;

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
    public int addSensor(String name, String type, String floorNumber) {
        //No need to mind error here
        String SQL = "INSERT INTO sensor (deviceName, deviceType, userID, floorNumber) VALUES (?,?,?,?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, name);
            pstmt.setString(2, type);
            pstmt.setString(3, currentUserID);
            pstmt.setInt(4, Integer.parseInt(floorNumber));
            return pstmt.executeUpdate();
        } catch (Exception e) {
            return -1;
        }
    }

    public ResultSet viewSensor() throws SQLException {
        String SQL = "SELECT * FROM sensor WHERE userID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, currentUserID);
            ResultSet rs = pstmt.executeQuery();
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int setStatus(String status, String deviceID) throws SQLException {
        String SQL="UPDATE sensor SET status = ? WHERE deviceID = ?";
        try {
            conn.setAutoCommit(false);
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, status);
            pstmt.setInt(2, Integer.parseInt(deviceID));
            int result = pstmt.executeUpdate();
            conn.commit();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public int setFloor(String floorNumber, String deviceID) throws SQLException {
        String SQL = "UPDATE sensor SET floorNumber = ? WHERE deviceID = ?";
        try {
            conn.setAutoCommit(false);
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, Integer.parseInt(floorNumber));
            pstmt.setInt(2, Integer.parseInt(deviceID));
            int result = pstmt.executeUpdate();
            conn.commit();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public int setTime(String startTime, String endTime, String deviceID) throws SQLException {
        String SQL = "UPDATE sensor SET startTime = ?, endTime = ? WHERE deviceID = ?";
        try {
            conn.setAutoCommit(false);
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            String startTimeFormatted = startTime + ":00.0";
            java.sql.Timestamp startTimeStamp = java.sql.Timestamp.valueOf(startTimeFormatted);

            String endTimeFormatted = startTime + ":00.0";
            java.sql.Timestamp endTimeStamp = java.sql.Timestamp.valueOf(endTimeFormatted);

            pstmt.setTimestamp(1, startTimeStamp);
            pstmt.setTimestamp(2, endTimeStamp);
            pstmt.setString(3,deviceID);
            int result = pstmt.executeUpdate();
            conn.commit();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
