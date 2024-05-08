package driver;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.ios.IOSDriver;
import io.appium.java_client.ios.options.XCUITestOptions;
import io.appium.java_client.service.local.AppiumDriverLocalService;
import io.appium.java_client.service.local.AppiumServiceBuilder;

import java.io.File;

/**
 * This class provides methods to manage the Appium driver.
 */
public class DriverManager {

    private static ThreadLocal<AppiumDriver> driver = new ThreadLocal<AppiumDriver>();
    private static AppiumDriverLocalService appiumLocalService;

    private static AppiumDriver getDriver() {
        return driver.get();
    }

    private static void setDriver(AppiumDriver d) {
        driver.set(d);
    }

    /**
     * Starts the Appium server and creates a new Appium driver instance if it
     * doesn't exist.
     * 
     * @return The Appium driver instance
     */
    public static AppiumDriver getDriverInstance() {
        if (getDriver() == null) {
            appiumLocalService = new AppiumServiceBuilder().usingAnyFreePort().build();
            appiumLocalService.start();

            String appPath = new File(System.getProperty("user.dir")).getParentFile().getParent()
                    + PropertyManager.getProperty("app");

            XCUITestOptions options = new XCUITestOptions()
                    .setAutomationName(PropertyManager.getProperty("automationName"))
                    .setPlatformName(PropertyManager.getProperty("platformName"))
                    .setUdid(PropertyManager.getProperty("udid"))
                    .setApp(appPath);

            IOSDriver driver = new IOSDriver(appiumLocalService, options);
            setDriver(driver);
        }
        return getDriver();
    }

    /**
     * Terminates the Appium driver and stops the Appium server.
     */
    public static void terminate() {
        if (getDriver() != null) {
            getDriver().quit();
            appiumLocalService.stop();
        }
    }

}
