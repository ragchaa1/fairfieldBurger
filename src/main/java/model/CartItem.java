package model;

import java.util.Objects;

public class CartItem {
    private Burger burger;
    private Size size;
    private int quantity;

    public CartItem() {
        super();
    }

    public CartItem(Burger burger, Size size,  int quantity) {
        this.burger = burger;
        this.size = size;
        this.quantity = quantity;
    }

    public Burger getBurger() {
        return burger;
    }

    public void setBurger(Burger burger) {
        this.burger = burger;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CartItem cartItem = (CartItem) o;
        return quantity == cartItem.quantity &&
                Objects.equals(burger, cartItem.burger) &&
                size == cartItem.size;

    }

    @Override
    public int hashCode() {
        return Objects.hash(burger, size, quantity);
    }

    //  Change this !! using Size
    public double calculatePrice() {
        return this.burger.getPrice();
    }
}
