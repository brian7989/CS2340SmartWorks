package sensor;

import org.junit.Before;
import org.junit.Test;

import java.sql.SQLException;

import static org.junit.Assert.assertEquals;

public class SensorDAOTestJay {

    int result[] = new int[6];
    private static final int TIMEOUT = 200;

    @Before
    public void setUp() {
        SensorDAO sensorDAO = new SensorDAO("root");
        try {
            result[0] = sensorDAO.setFloor("4","1");
            result[1] = sensorDAO.setFloor("4", "40");
            result[2] = sensorDAO.setFloor("4", "error");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test(timeout = TIMEOUT)
    public void addSensorTest() {
        assertEquals(1, result[0]);
        assertEquals(0,result[1]);
        assertEquals(-1,result[2]);
    }
}
