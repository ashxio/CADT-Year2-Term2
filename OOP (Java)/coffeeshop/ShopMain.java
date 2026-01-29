package coffeeshop;

public class ShopMain {
    public static void main (String[] args){
        Menuitem item1 = new Menuitem("Latte", 2.50, 'L', true);
        Menuitem item2 = new Menuitem("Espresso", 3.00, 'S', true);

        System.out.println("Item 1: " + item1.name + ", Price: $" + item1.price + ", Size: " + item1.size + ", Available: " + item1.isAvailable);
        System.out.println("Item 2: " + item2.name + ", Price: $" + item2.price + ", Size: " + item2.size + ", Available: " + item2.isAvailable);
    }
}
