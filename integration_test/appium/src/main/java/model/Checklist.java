package model;

import java.util.ArrayList;
import java.util.List;

public class Checklist {
    
    private String name;
    private boolean isDone;
    private List<Item> items;

    public Checklist(String name) {
        this.name = name;
        this.isDone = false;
        this.items = new ArrayList<>();
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

    public Checklist addItem(Item item) {
        items.add(item);
        return this;
    }
}
