import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import data.ChecklistDataGenerator;
import driver.DriverManager;

import io.appium.java_client.AppiumDriver;
import model.Checklist;
import pages.ChecklistsOverviewPage;

public class AddChecklistTest {

    private AppiumDriver driver;
    private Checklist checklist;

    @BeforeClass
    public void setUp() {
        driver = DriverManager.getDriverInstance();
    }
        
    @Test
    public void addEmptyChecklistTest() {
        checklist = ChecklistDataGenerator.getEmptyChecklist();

        ChecklistsOverviewPage overviewPage = new ChecklistsOverviewPage(driver).tapAddChecklistButton()
            .enterChecklistName(checklist.getName())
            .tapSaveButton();
        
        Assert.assertEquals(overviewPage.readTopChecklistName(), checklist.getName());
        Assert.assertEquals(overviewPage.readTopChecklistStatistics(), "0 / 0");
    }

    @AfterClass
    public void tearDown() {
        DriverManager.terminate();
    }
}
