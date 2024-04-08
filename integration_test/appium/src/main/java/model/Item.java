package model;

public class Item {
    
    private String name;
    private boolean isDone;

    public Item(String name) {
        this.name = name;
        this.isDone = false;
    }

    public String getName() {
        return name;
    }

    public boolean getIsDone() {
        return isDone;
    }

    public void setIsDone(boolean isDone) {
        this.isDone = isDone;
    }

    public void toggleIsDone() {
        isDone = !isDone;
    }
}
