package util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

/**
 * Author: Brian Lee
 * Use if necessary.
 * Utility for document encryption with SALT.
 */
class SHA256 {

    public static String getSHA256(String input) {
        StringBuffer result = new StringBuffer();
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] salt = "Hello! This is Salt.".getBytes();
            digest.reset();
            digest.update(salt);
            byte[] chars = digest.digest(input.getBytes(StandardCharsets.UTF_8));
            for (byte aChar : chars) {
                String hex = Integer.toHexString(0xff & aChar);
                if (hex.length() == 1) result.append("0");
                result.append(hex);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result.toString();
    }
}
