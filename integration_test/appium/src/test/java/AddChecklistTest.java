import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

import data.ChecklistDataGenerator;
import driver.DriverManager;

import io.appium.java_client.AppiumDriver;
import model.Checklist;
import pages.ChecklistsOverview.ChecklistCardComponent;
import pages.ChecklistsOverview.ChecklistsOverviewPage;

public class AddChecklistTest {

    private AppiumDriver driver;

    @BeforeClass
    public void setUp() {
        driver = DriverManager.getDriverInstance();
    }

    @Test(dataProvider = "checklists")
    public void addChecklistTest(Checklist checklist) {
        ChecklistCardComponent checklistCard = new ChecklistsOverviewPage(driver)
            .createChecklist(checklist)
            .getTopChecklistCard();

        Assert.assertEquals(checklistCard.getName(), checklist.getName());
        Assert.assertEquals(checklistCard.getStatistics(), checklist.getStatistics());
    }

    @DataProvider(name = "checklists")
    public Checklist[] createData() {
        return new Checklist[] { 
            ChecklistDataGenerator.getEmptyChecklist(),
            ChecklistDataGenerator.getRandomChecklist()
         };
      }

    @AfterClass
    public void tearDown() {
        DriverManager.terminate();
    }
}
