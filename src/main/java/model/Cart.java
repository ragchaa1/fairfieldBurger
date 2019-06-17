package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<CartItem> items;
    public Cart() {
        items = new ArrayList<>();
    }
    public List<CartItem> getItems() {
        return items;
    }
    public void addItem(CartItem item) {
        items.add(item);
    }
    public boolean removeItem(CartItem item) {
        for (CartItem it: items)
            if (it.equals(item)) return items.remove(it);
        return false;
    }
    public double calculateTotalPrice() {
        double totalPrice = 0.0;
        for (CartItem item: items)
            totalPrice += item.calculatePrice();
        return totalPrice;
    }
}
