package pages;

import org.openqa.selenium.WebElement;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;

public class ChecklistsOverviewPage extends BasePage {

    @iOSXCUITFindBy(accessibility = "add_checklist_button")
    private WebElement addChecklistButton;
    
    public ChecklistsOverviewPage(AppiumDriver driver) {
        super(driver);
    }

    public EditChecklistPage tapAddChecklistButton() {
        addChecklistButton.click();
        return new EditChecklistPage(driver);
    }
}
