package pages.EditChecklist;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.appium.java_client.AppiumBy;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import pages.BasePage;
import pages.ChecklistsOverview.ChecklistsOverviewPage;

import java.time.Duration;
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

    private By itemsLocator = AppiumBy.accessibilityId("item_tile");
    
    @iOSXCUITFindBy(accessibility = "add_item_button")
    private WebElement addItemButton;

    /**
     * Creates a new instance of the edit checklist page.
     * 
     * @param driver the Appium driver.
     */
    public EditChecklistPage(AppiumDriver driver) {
        super(driver);
    }

    /**
     * Enters the name of the checklist.
     * 
     * @param name the name of the checklist.
     * @return this page instance.
     */
    public EditChecklistPage enterChecklistName(String name) {
        checklistNameInput.sendKeys(name);
        return this;
    }

    /**
     * Taps the add item button and waits until new item tile appears on the page.
     * 
     * @return this page instance.
     */
    public EditChecklistPage tapAddItemButton() {
        List<WebElement> items = driver.findElements(itemsLocator);
        addItemButton.click();
        new WebDriverWait(driver, Duration.ofMillis(500)).until(d -> d.findElements(itemsLocator).size() > items.size());
        return this;
    }

    /**
     * Returns the top item tile on the page.
     * 
     * @return the top item tile.
     */
    public ItemTileComponent getTopItem() {
        List<WebElement> items = driver.findElements(itemsLocator);
        if (items.isEmpty()) {
            throw new IllegalStateException("No items found");
        }
        return new ItemTileComponent(driver, items.size());
    }

    /**
     * Taps the save button.
     * 
     * @return the checklists overview page instance.
     */
    public ChecklistsOverviewPage tapSaveButton() {
        saveButton.click();
        return new ChecklistsOverviewPage(driver);
    }
}
