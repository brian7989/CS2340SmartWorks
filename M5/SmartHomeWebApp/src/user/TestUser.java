package user;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class TestUser {

    private final int[] result = new int[9];
    private int[] properArr;
    private static final int TIMEOUT = 200;

    @Before
    public void setUp() {
        UserDAO user1 = new UserDAO();
        result[0] = user1.login("who", "test20");
        result[1] = user1.login("test1", "test20");
        result[2] = user1.login("user", "pass");
        result[3] = user1.login("root", "MyPass");
        result[4] = user1.login("root", "admin");
        result[5] = user1.login("admin", "root");
        result[6] = user1.login("root", "root");
        result[7] = user1.login("random", "MyPass");
        result[8] = user1.login("admin", "MyPass");
        properArr = new int[]{-1, -1, -1, 1, 0, -1, 0, -1, -1};
    }

    @Test(timeout = TIMEOUT)
    public void loginTest() {
        Assert.assertEquals(false, result[1] == 1);
        Assert.assertTrue("Check username/password ", !(result[2] == 1));
        Assert.assertTrue("Check username/password ", result[3] == 1);
        Assert.assertTrue("Check username/password ", !(result[4] == 1));
        Assert.assertTrue("Check username/password ", !(result[5] == 1));
        Assert.assertArrayEquals(result, properArr);
    }
}
