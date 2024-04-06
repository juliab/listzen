package com.juliasiroshtan.listzentest;

import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import com.juliasiroshtan.driver.DriverManager;

import java.net.MalformedURLException;

import io.appium.java_client.AppiumDriver;

public class MvpTest {

    AppiumDriver driver;

    @BeforeTest
    public void setUp() throws MalformedURLException {
        driver = DriverManager.getDriverInstance();
    }
        
    @Test
    public void template() {
        try {
        } finally {
            driver.quit();
        }
    }
}
