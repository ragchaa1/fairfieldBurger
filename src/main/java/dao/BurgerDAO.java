package dao;

import model.Burger;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BurgerDAO {
    private static Map<Integer, Burger> burgerMap = new HashMap<Integer, Burger>() {{
        put(1, new Burger(1, "Bacon", 8.5, "resources/images/burger.jpg"));
        put(2, new Burger(2, "Cheese Lovers", 7.5, "resources/images/cheeseburger.jpg"));
        put(3, new Burger(3, "French Fries ", 7.5, "resources/images/FrenchFries.png"));
        put(4, new Burger(4, "Coca Cola", 2.49, "resources/images/CocaCola.jpg"));
        put(5, new Burger(5, "Lemonade", 2.49, "resources/images/Lemonade.jpg"));
        put(6, new Burger(6, "Onion Rings", 1.5, "resources/images/onionRings.jpg"));
        put(7, new Burger(7, "Crispy Chicken Burger", 6.49, "resources/images/crispyChicken.jpg"));
        put(8, new Burger(8, "Chicken Tenders", 4.99, "resources/images/chickenTenders.png"));
        put(9, new Burger(9, "Veggie Burger", 5.99, "resources/images/veggieBurger.png"));
        put(10, new Burger(10, "Water", 1.49, "resources/images/Water.png"));

       /*  put(3, new Burger(3,"Chicken", 5.5, "resources/images/burger_Chicken.jpg"));
        put(4, new Burger(4,"Meat Lovers", 10.0, "resources/images/burger_Meat_Lovers.jpg"));
        put(5, new Burger(5,"Pepperoni", 9.0, "resources/images/burger_Pepperoni.jpg"));
        put(6, new Burger(6,"Supreme", 11.0, "resources/images/burger_Supreme.jpg"));*/
    }};

    private BurgerDAO() {
    }

    public static List<Burger> getAllBurgers() {
        return new ArrayList<>(burgerMap.values());
    }

    public static Burger getBurgerById(int burgerId) {
        return burgerMap.get(burgerId);
    }
}
