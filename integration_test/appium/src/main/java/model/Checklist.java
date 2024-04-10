package model;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * This class represents a checklist with items.
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

    public String getName() {
        return name;
    }

    public boolean getIsDone() {
        return isDone;
    }

    public List<Item> getItems() {
        return items;
    }

    public Checklist copyWith(String name) {
        return new Checklist(name, isDone, items);
    }

    public Checklist copyWith(boolean isDone) {
        return new Checklist(name, isDone, items);
    }

    public Checklist copyWith(List<Item> items) {
        return new Checklist(name, isDone, items);
    }

    public Checklist copyWith(String name, boolean isDone, List<Item> items) {
        return new Checklist(name, isDone, items);
    }

    public Checklist copyWith(boolean isDone, List<Item> items) {
        return new Checklist(name, isDone, items);
    }

    @Override
    public String toString() {
        return "Checklist{" + "name='" + name + "'" + ", isDone=" + isDone + ", items=" + items + '}';
    }
}
