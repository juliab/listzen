package pages.ChecklistsOverview;

import org.openqa.selenium.WebElement;

public class ChecklistCardComponent {

    private String name;
    private String statistics;

    /**
     * Creates a new instance of the checklist card component.
     * 
     * @param element the element representing the checklist card.
     */
    public ChecklistCardComponent(WebElement element) {
        if (element == null) {
            throw new IllegalArgumentException("Element must not be null");
        }
        String label = element.getText();
        name = label.replaceAll("\n\\d+ / \\d+$", "");
        statistics = label.replaceAll("^.*\n(\\d+ / \\d+)$", "$1");
    }

    /**
     * Returns the name of the checklist.
     * 
     * @return the name of the checklist.
     */
    public String getName() {
        return name;
    }

    /**
     * Returns the statistics of the checklist.
     * 
     * @return the statistics of the checklist.
     */
    public String getStatistics() {
        return statistics;
    }
}
