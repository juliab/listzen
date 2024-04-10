package model;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * This class represents an item in a checklist.
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

    public String getName() {
        return name;
    }

    public boolean getIsDone() {
        return isDone;
    }

    public Item copyWith(String name) {
        return new Item(name, isDone);
    }

    public Item copyWith(boolean isDone) {
        return new Item(name, isDone);
    }
}
