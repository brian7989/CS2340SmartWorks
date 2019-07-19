package user;

/**
 * Data transfer object for USER table
 */
class UserDTO {
    private String userID;
    private String userPW;

    public UserDTO(String userID, String userPW) {
        this.userID = userID;
        this.userPW = userPW;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserPW() {
        return userPW;
    }

    public void setUserPW(String userPW) {
        this.userPW = userPW;
    }
}
