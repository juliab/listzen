package pages.EditChecklist;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import io.appium.java_client.AppiumBy;
import io.appium.java_client.AppiumDriver;

/**
 * This class represents an item tile component on the edit checklist page.
 */
public class ItemTileComponent {

    private WebElement nameField;
    private WebElement checkbox;

    /**
     * Creates a new instance of the item tile component.
     * 
     * @param driver the Appium driver.
     * @param index the index of the item tile.
     */
    public ItemTileComponent(AppiumDriver driver, int index) {
        this.nameField = driver.findElement(getNameFieldLocator(index));
        this.checkbox = driver.findElement(getCheckboxLocator(index));
    }

    private By getNameFieldLocator(int index) {
        return AppiumBy.iOSClassChain("**/XCUIElementTypeTextField[`name == 'item_edit_name'`][" + index + "]");
    }

    private By getCheckboxLocator(int index) {
        return AppiumBy.iOSClassChain("**/XCUIElementTypeSwitch[`name == 'item_edit_checkbox'`][" + index + "]");
    }

    /**
     * Enters the name of the item.
     * 
     * @param name the name of the item.
     * @return the item tile component instance.
     */
    public ItemTileComponent enterName(String name) {
        nameField.clear();
        nameField.sendKeys(name);
        return this;
    }

    /**
     * Toggles the checkbox of the item.
     * 
     * @return the item tile component instance.
     */
    public ItemTileComponent toggleCheckbox() {
        checkbox.click();
        return this;
    }
}
