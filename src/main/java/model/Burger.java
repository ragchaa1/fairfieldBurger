package model;

public class Burger {
    private String type;
    private double price;
    private int id;

    private String imgURL;

    public Burger(){
        super();
    }

    public Burger(int id, String type, double price, String imgURL){
        super();
        this.id = id;
        this.type = type;
        this.price = price;
        this.imgURL = imgURL;
    }

    public String getType() {
        return type;
    }

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

}
