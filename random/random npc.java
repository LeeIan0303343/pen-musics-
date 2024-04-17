public class NPC {
    private boolean isAwake;
    private boolean isHungry;

    public NPC() {
        // Initialize NPC state (awake, hungry, etc.)
    }

    public void talk(String message) {
        // Implement NPC's dialogue system
        System.out.println("NPC says: " + message);
    }

    public void sleep() {
        // Put NPC to sleep (change state, adjust behavior)
    }

    public void eat() {
        // Simulate eating behavior
        System.out.println("NPC is eating.");
    }

    // Other methods for behavior customization
}

public class Main {
    public static void main(String[] args) {
        NPC npc = new NPC();
        npc.talk("Hello, adventurer!");
        npc.eat();
        // ...
    }
}
