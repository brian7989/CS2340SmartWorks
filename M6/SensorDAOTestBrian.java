package sensor;

import org.junit.Before;
import org.junit.Test;


import static org.junit.Assert.assertEquals;

public class SensorDAOTestBrian {

    int result[] = new int[6];
    private static final int TIMEOUT = 200;

    @Before
    public void setUp() {
        SensorDAO sensorDAO = new SensorDAO("root");
        result[0] = sensorDAO.addSensor("deviceTest","Light", "4");
        result[1] = sensorDAO.addSensor("deviceTestOverFlowwwwwwwwwwwwwwwww", "Light","4");
    }

    @Test(timeout = TIMEOUT)
    public void addSensorTest() {
        assertEquals(1, result[0]);
        assertEquals(-1,result[1]);
    }
}
