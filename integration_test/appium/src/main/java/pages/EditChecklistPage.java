package pages;

import org.openqa.selenium.WebElement;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;

import java.util.List;

/**
 * This class represents a page for editing a checklist.
 */
public class EditChecklistPage extends BasePage {

    @iOSXCUITFindBy(accessibility = "checklist_name_input")
    private WebElement checklistNameInput;

    @iOSXCUITFindBy(accessibility = "cancel_button")
    private WebElement cancelButton;

    @iOSXCUITFindBy(accessibility = "save_button")
    private WebElement saveButton;

    @iOSXCUITFindBy(accessibility = "item_input")
    private List<WebElement> items;

    @iOSXCUITFindBy(accessibility = "add_item_button")
    private WebElement addItemButton;

    public EditChecklistPage(AppiumDriver driver) {
        super(driver);
    }

    public EditChecklistPage enterChecklistName(String name) {
        checklistNameInput.sendKeys(name);
        return this;
    }

    public EditChecklistPage tapAddItemButton() {
        addItemButton.click();
        return this;
    }

    public EditChecklistPage enterItemName(String name) {
        items.get(items.size() - 1).sendKeys(name);
        return this;
    }

    public ChecklistsOverviewPage tapSaveButton() {
        saveButton.click();
        return new ChecklistsOverviewPage(driver);
    }
}
