package model;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * This class represents an item in a checklist.
 * This class is immutable. All methods that modify the checklist item return a new instance.
 */
public class Item {

    private String name;
    private boolean isDone;

    public Item(String name) {
        this.name = name;
        this.isDone = false;
    }

    @JsonCreator
    public Item(@JsonProperty("name") String name, @JsonProperty("isDone") boolean isDone) {
        this.name = name;
        this.isDone = isDone;
    }

    /**
     * Returns the name of the item.
     * 
     * @return the name of the item.
     */
    public String getName() {
        return name;
    }

    /**
     * Returns if the item is completed.
     * 
     * @return true if the item is completed, false otherwise.
     */
    public boolean isDone() {
        return isDone;
    }

    /**
     * Returns a new instance of the item with the specified name.
     * 
     * @param name the name of the item.
     * @return a new instance of the item with the specified name.
     */
    public Item copyWith(String name) {
        return new Item(name, isDone);
    }

    /**
     * Returns a new instance of the item with the specified completion status.
     * 
     * @param isDone the completion status of the item.
     * @return a new instance of the item with the specified completion status.
     */
    public Item copyWith(boolean isDone) {
        return new Item(name, isDone);
    }
}
