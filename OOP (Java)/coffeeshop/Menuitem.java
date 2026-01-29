package coffeeshop;

public class Menuitem {
    String name;
    double price;
    char size;
    boolean isAvailable;

    Menuitem(String name, double price, char size, boolean isAvailable) {
        this.name = name;
        this.price = price;
        this.size = size;
        this.isAvailable = true;
    }
}