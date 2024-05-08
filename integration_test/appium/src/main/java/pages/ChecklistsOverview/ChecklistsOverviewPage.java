package pages.ChecklistsOverview;

import java.time.Duration;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.appium.java_client.AppiumBy;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;
import model.Checklist;
import model.Item;
import pages.BasePage;
import pages.EditChecklist.EditChecklistPage;

/**
 * This class represents the checklists overview page of the mobile application.
 */
public class ChecklistsOverviewPage extends BasePage {

    @iOSXCUITFindBy(accessibility = "add_checklist_button")
    private WebElement addChecklistButton;

    private By checklistCardLocator = AppiumBy.accessibilityId("checklist_card");
    private List<ChecklistCardComponent> checklistCards;

    /**
     * Creates a new instance of the checklists overview page.
     * 
     * @param driver the Appium driver.
     */
    public ChecklistsOverviewPage(AppiumDriver driver) {
        super(driver);
        waitUntilPageLoaded();
        updateChecklistCards();
    }

    private void waitUntilPageLoaded() {
        new WebDriverWait(driver, Duration.ofMillis(500)).until(d -> addChecklistButton.isDisplayed());
    }

    private void updateChecklistCards() {
        checklistCards = driver.findElements(checklistCardLocator).stream()
                .map(element -> new ChecklistCardComponent(element)).toList();
    }

    /**
     * Taps the add checklist button.
     * 
     * @return the edit checklist page instance.
     */
    public EditChecklistPage tapAddChecklistButton() {
        addChecklistButton.click();
        return new EditChecklistPage(driver);
    }

    /**
     * Returns the number of checklist cards on the page.
     * 
     * @return the number of checklist cards.
     */
    public int getChecklistsCount() {
        return checklistCards.size();
    }

    /**
     * Returns the checklist card at the top of the page.
     * 
     * @return the checklist card.
     */
    public ChecklistCardComponent getTopChecklistCard() {
        if (checklistCards.isEmpty()) {
            throw new IllegalStateException("No checklists found");
        }
        return checklistCards.get(0);
    }

    /**
     * Creates a new checklist with the specified data. The actions performed are:
     * <ol>click the add checklist button</ol>
     * <ol>enter the checklist name</ol>
     * <ol>add items to the checklist, mark them as completed if needed</ol>
     * <ol>save the checklist</ol>
     * Method returns new instance of the checklists overview page.
     * 
     * @param checklist the checklist data.
     * @return the checklists overview page instance.
     */
    public ChecklistsOverviewPage createChecklist(Checklist checklist) {
        EditChecklistPage editChecklistPage = tapAddChecklistButton()
            .enterChecklistName(checklist.getName());

        for (Item item : checklist.getItems()) {
            editChecklistPage.tapAddItemButton().getTopItem().enterName(item.getName());
            if (item.isDone()) {
                editChecklistPage.getTopItem().toggleCheckbox();
            }
        }

        ChecklistsOverviewPage overviewPage = editChecklistPage.tapSaveButton();
        return overviewPage;
    }
}
