package user;

import util.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


/**
 * Data Access Object, accesses USER table
 */
public class UserDAO {

    private final Connection conn;
    private PreparedStatement pstmt;

    public UserDAO() {
        conn = DatabaseUtil.getConnection();
    }

    /**
     * Adds userID and userPW into database using SQL statement
     * @param userID user's ID to enter
     * @param userPW user's corresponding PW to enter
     * @return 1 if successfully added, -1 if database error
     */
    public int join (String userID, String userPW) {
        String SQL = "INSERT INTO user VALUES (?,?)";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            pstmt.setString(2, userPW);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    /**
     * Seeks to match user's credential with ID and PW stored in database
     * @param userID user's login ID
     * @param userPW user's corresponding PW
     * @return 1 if ID & PW successfully matches,
     * 0 if password is not found,
     * -1 if ID is not found,
     * -2 if database error
     */
    public int login(String userID, String userPW) {
        String SQL = "SELECT userPW FROM user WHERE userID = ?";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                if (rs.getString(1).equals(userPW)) {
                    return 1;
                } else
                    return 0;
            }
            return -1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2;
    }
}
