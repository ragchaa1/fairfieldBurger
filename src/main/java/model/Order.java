package model;

public class Order {
    private User user;
    private Cart cart;
    private String address;
    private String stateCode;

    public Order (User user, Cart cart, String address,String stateCode) {
        this.user = user;
        this.cart = cart;
        this.address = address;
        this.stateCode=stateCode;
    }

    public User getUser() {
        return user;
    }

    public Cart getCart() {
        return cart;
    }

    public String getAddress() {
        return address;
    }

    public double GetInvoice() {
        return this.cart.calculateTotalPrice();
    }

    public String getStateCode() {
        return stateCode;
    }

    public void setStateCode(String stateCode) {
        this.stateCode = stateCode;
    }
}
