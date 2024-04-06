package com.juliasiroshtan.driver;

import java.net.MalformedURLException;
import java.net.URL;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.ios.IOSDriver;
import io.appium.java_client.ios.options.XCUITestOptions;

public class DriverManager {

    private static ThreadLocal<AppiumDriver> driver = new ThreadLocal<AppiumDriver>();

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
            XCUITestOptions options = new XCUITestOptions()
                    .setAutomationName("XCUITest")
                    .setPlatformName("IOS")
                    .setUdid("787D3427-65FD-495D-8AE1-3AB34493D954")
                    .setApp(System.getProperty("app.path"));

            URL appiumServerUrl = new URL("http://127.0.0.1:4723");

            IOSDriver driver = new IOSDriver(appiumServerUrl, options);
            setDriver(driver);
        }
        return getDriver();
    }
}
