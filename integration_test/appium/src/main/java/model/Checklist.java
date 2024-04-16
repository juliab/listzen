package model;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * This class represents a checklist with items.
 * This class is immutable. All methods that modify the checklist return a new instance.
 */
public class Checklist {

    private String name;
    private boolean isDone;
    private List<Item> items;

    public Checklist(String name) {
        this.name = name;
        this.isDone = false;
        this.items = new ArrayList<>();
    }

    @JsonCreator
    public Checklist(@JsonProperty("name") String name, @JsonProperty("isDone") boolean isDone,
            @JsonProperty("items") List<Item> items) {
        this.name = name;
        this.isDone = isDone;
        this.items = items;
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
     * Returns the completion statistics of the checklist in format "done / total".
     * 
     * Examples:
     * - "0 / 0" if a checklist is empty.
     * - "2 / 6" if a checklist has 6 items and 2 of them are done.
     * 
     * @return the statistics of the checklist.
     */
    public String getStatistics() {
        long itemsDone = items.stream().filter(Item::isDone).count();
        return itemsDone + " / " + items.size();
    }

    /**
     * Returns if all items in the checklist are completed.
     * 
     * @return true if all checklist items are completed, false otherwise.
     */
    public boolean isDone() {
        return isDone;
    }

    /**
     * Returns the items in the checklist.
     * 
     * @return the items in the checklist.
     */
    public List<Item> getItems() {
        return items;
    }

    /**
     * Copy checklist with new name.
     * 
     * @param name the new checklist name.
     * @return a new checklist with the new name.
     */
    public Checklist copyWith(String name) {
        return new Checklist(name, isDone, items);
    }

    /**
     * Copy checklist with new done status.
     * 
     * @param isDone the new done status.
     * @return a new checklist with the new done status.
     */
    public Checklist copyWith(boolean isDone) {
        return new Checklist(name, isDone, items);
    }

    /**
     * Copy checklist with new items.
     * 
     * @param items the new items.
     * @return a new checklist with the new items.
     */
    public Checklist copyWith(List<Item> items) {
        return new Checklist(name, isDone, items);
    }

    /**
     * Copy checklist with new name, done status and items.
     * 
     * @param name the new checklist name.
     * @param isDone the new done status.
     * @param items the new items.
     * @return a new checklist with the new name, done status and items.
     */
    public Checklist copyWith(String name, boolean isDone, List<Item> items) {
        return new Checklist(name, isDone, items);
    }

    /**
     * Copy checklist with new done status and items.
     * 
     * @param isDone the new done status.
     * @param items the new items.
     * @return a new checklist with the new done status and items.
     */
    public Checklist copyWith(boolean isDone, List<Item> items) {
        return new Checklist(name, isDone, items);
    }

    /**
     * Returns a string representation of the checklist.
     * 
     * @return string representation of the checklist.
     */
    @Override
    public String toString() {
        return "Checklist{" + "name='" + name + "'" + ", isDone=" + isDone + ", items=" + items + '}';
    }
}
