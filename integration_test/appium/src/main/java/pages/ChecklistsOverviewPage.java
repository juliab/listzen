package pages;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.openqa.selenium.WebElement;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.pagefactory.iOSXCUITFindBy;

/**
 * This class represents the checklists overview page of the mobile application.
 */
public class ChecklistsOverviewPage extends BasePage {

    @iOSXCUITFindBy(accessibility = "add_checklist_button")
    private WebElement addChecklistButton;

    @iOSXCUITFindBy(accessibility = "checklist_card")
    private List<WebElement> checklistCardNames;
    
    public ChecklistsOverviewPage(AppiumDriver driver) {
        super(driver);
    }

    public EditChecklistPage tapAddChecklistButton() {
        addChecklistButton.click();
        return new EditChecklistPage(driver);
    }

    public int getChecklistsCount() {
        return checklistCardNames.size();
    }

    private String readTopChecklistLabel() {
        if (checklistCardNames.isEmpty()) {
            throw new IllegalStateException("No checklists found");
        }
        return checklistCardNames.get(0).getText();
    }

    public String readTopChecklistName() {
        return readTopChecklistLabel().replaceAll("\n\\d+ / \\d+$", "");
    }

    public String readTopChecklistStatistics() {
        String label = readTopChecklistLabel();
        Pattern pattern = Pattern.compile("\n(\\d+ / \\d+)$");
        Matcher matcher = pattern.matcher(label);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return "";
    }
}
