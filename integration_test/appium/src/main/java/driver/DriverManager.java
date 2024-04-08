package driver;

import java.net.MalformedURLException;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.ios.IOSDriver;
import io.appium.java_client.ios.options.XCUITestOptions;
import io.appium.java_client.service.local.AppiumDriverLocalService;
import io.appium.java_client.service.local.AppiumServiceBuilder;

import java.io.File;

public class DriverManager {

    private static ThreadLocal<AppiumDriver> driver = new ThreadLocal<AppiumDriver>();
    private static AppiumDriverLocalService appiumLocalService;

    private static AppiumDriver getDriver() {
        return driver.get();
    }

    private static void setDriver(AppiumDriver d) {
        driver.set(d);
    }

    public static void quitDriver() {
        if (getDriver() != null) {
            getDriver().quit();
            driver.remove();
        }
    }

    public static AppiumDriver getDriverInstance() throws MalformedURLException {
        if (getDriver() == null) {
            appiumLocalService = new AppiumServiceBuilder().usingAnyFreePort().build();
            appiumLocalService.start();

            XCUITestOptions options = new XCUITestOptions()
                    .setAutomationName(PropertyManager.getProperty("automationName"))
                    .setPlatformName(PropertyManager.getProperty("platformName"))
                    .setUdid(PropertyManager.getProperty("udid"))
                    .setApp(new File(System.getProperty("user.dir")).getParentFile().getParent()+ PropertyManager.getProperty("app"));

            IOSDriver driver = new IOSDriver(appiumLocalService, options);
            setDriver(driver);
        }
        return getDriver();
    }

    public static void terminate() {
        if (getDriver() != null) {
            getDriver().quit();
            appiumLocalService.stop();
        }
    }

    
}
