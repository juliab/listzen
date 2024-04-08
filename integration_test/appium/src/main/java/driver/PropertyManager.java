package driver;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertyManager {
    private static Properties properties = new Properties();

    static {
        InputStream is = PropertyManager.class.getClassLoader().getResourceAsStream("app.properties");
        if (is != null) {
            try {
                properties.load(is);
            } catch (IOException e) {
                throw new RuntimeException("Failed to load app.properties file", e);
            }
        } else {
            throw new RuntimeException("Property file 'app.properties' not found in the classpath");
        }
    }

    public static String getProperty(String name) {
        return properties.getProperty(name);
    }
}
