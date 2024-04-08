import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import driver.DriverManager;

import java.net.MalformedURLException;

import io.appium.java_client.AppiumDriver;
import model.Checklist;
import model.Item;
import pages.ChecklistsOverviewPage;

public class AddChecklistTest {

    private AppiumDriver driver;
    private Checklist checklist;

    @BeforeClass
    public void setUp() throws MalformedURLException {
        driver = DriverManager.getDriverInstance();
    }

    @BeforeTest
    public void createChecklist() {
        checklist = new Checklist("Test Checklist")
            .addItem(new Item("Test Item 1"))
            .addItem(new Item("Test Item 2"));
    }
        
    @Test
    public void addChecklistTest() throws InterruptedException {
        new ChecklistsOverviewPage(driver).tapAddChecklistButton()
            .enterChecklistName(checklist.getName())
            .tapAddItemButton()
            .enterItemName(checklist.getItems().get(0).getName())
            .enterItemName(checklist.getItems().get(1).getName())
            .tapAddItemButton();
    }

    @AfterClass
    public void tearDown() {
        DriverManager.terminate();
    }
}
