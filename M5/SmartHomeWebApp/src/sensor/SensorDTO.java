package sensor;

import java.util.Date;

/**
 * Data Transfer Object for sensor
 */
class SensorDTO {
    private int id;
    private String deviceName;
    private String deviceType;
    private String userID;
    private Date startTime;
    private Date endTime;
    private int floorNumber;

    public SensorDTO(int id, String deviceName, String deviceType,
                     String userID, Date startTime, Date endTime, int floorNumber) {
        this.id = id;
        this.deviceName = deviceName;
        this.deviceType = deviceType;
        this.userID = userID;
        this.startTime = startTime;
        this.endTime = endTime;
        this.floorNumber = floorNumber;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public int getFloorNumber() {
        return floorNumber;
    }

    public void setFloorNumber(int floorNumber) {
        this.floorNumber = floorNumber;
    }
}
