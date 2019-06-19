package dao;

import model.Order;
import model.Size;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class OrderDAO {
    private static Map<String, List<Order>> map = new HashMap<String, List<Order>>() {{

    }};

    public OrderDAO() {
    }

    public static List<Order> getOrdersByUsername(String username) {
        return map.get(username);
    }

    static List<Order> allOrder = new ArrayList();

    public static void placeOrder(String username, Order order) {
        allOrder.add(order);
        List<Order> orders = map.get(username);
        if (orders == null) {
            orders = new ArrayList<Order>();
            orders.add(order);
            map.put(username, orders);
        } else {
            orders.add(order);
        }
    }

    double v = 0;

    public Map<String, Long> getStateStat() {
        System.out.println("stream inside orders = " + allOrder.size());
        Map<String, Long> collect = allOrder.stream().collect(Collectors.groupingBy(e -> e.getStateCode(), Collectors.counting()));
        System.out.println("collect.size() = " + collect.size());
        if (allOrder.size() > 0 && allOrder != null)
            v = v + allOrder.get(0).getCart().calculateTotalPrice();

        System.out.println("vvvvvvvvvvvvvvvvvv = " + v);
        return collect;
    }

    public Integer getTotalOrder() {
        return allOrder.size();
    }

    public Double getTotalIncome() {
        return v;
    }

    public void getBarChart(){
        // (list) -> list.stream().collect(Collectors.groupingBy(User::getSex, Collectors.counting()));
       // Map<Stream<Size>, Long> collect = allOrder.stream().collect(Collectors.groupingBy(e -> e.getCart().getItems().stream().collect(Collectors.mapping(s->s.getSize())), Collectors.counting()));

    }

}
