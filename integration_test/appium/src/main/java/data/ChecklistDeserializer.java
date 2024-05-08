package data;

import model.Checklist;

import java.io.File;
import java.io.IOException;
import java.util.List;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * This class provides methods to deserialize checklists from a JSON file.
 */
public class ChecklistDeserializer {
    
    // Path to the JSON file with checklists
    private final static String CHECKLISTS_FILE_PATH = new File(System.getProperty("user.dir")) + "/src/main/java/data/base_checklists.json";

    // List of contacts loaded from the JSON file
    private List<Checklist> checklists;

    // Singleton instance of the class
    private static ChecklistDeserializer instance;

    // Private constructor to prevent instantiation
    private ChecklistDeserializer() {
        try {
            checklists = loadChecklistsFromFile(CHECKLISTS_FILE_PATH);
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("Can't load contacts from " + CHECKLISTS_FILE_PATH + " file.");
        }
    }

    /**
     * Get the singleton instance of the class
     * 
     * @return The singleton instance of the class
     */
    public static ChecklistDeserializer getInstance() {
        if (instance == null) {
            synchronized (ChecklistDeserializer.class) {
                if (instance == null) {
                    instance = new ChecklistDeserializer();
                }
            }
        }
        return instance;
    }

    private static List<Checklist> loadChecklistsFromFile(String filePath) throws IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.readValue(new File(filePath), new TypeReference<List<Checklist>>() {
        });
    }

    /**
     * Get the list of checklists
     * 
     * @return The list of checklists
     */
    public List<Checklist> getChecklists() {
        return checklists;
    }
}
