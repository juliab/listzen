package data;

import java.util.List;
import java.util.Random;

import model.Checklist;

/**
 * This class provides methods to generate random checklist data.
 */
public class ChecklistDataGenerator {

    // Checklists loaded from the JSON file
    private static final List<Checklist> checklists = ChecklistDeserializer.getInstance().getChecklists();
    
    /**
     * Returns a random checklist from the list of checklists.
     * Name of the checklist is modified to make it unique.
     * 
     * @return a random checklist
     */
    public static Checklist getRandomChecklist() {
        Random rand = new Random();
        Checklist checklist = checklists.get(rand.nextInt(checklists.size()));
        String newName = checklist.getName() + " " + rand.nextInt(1000);
        return checklist.copyWith(newName);
    }

    /**
     * Returns a checklist without any items.
     * 
     * @return an empty checklist
     */
    public static Checklist getEmptyChecklist() {
        return getRandomChecklist().copyWith(false, List.of());
    }
}
