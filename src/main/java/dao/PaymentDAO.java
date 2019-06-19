package dao;

import com.google.gson.Gson;
import model.Payment;

import java.time.LocalDate;
import java.util.*;
import java.util.stream.Collectors;

public class PaymentDAO {

    List<Payment> paymentList = new ArrayList<Payment>();

    {
        paymentList.add(new Payment(1L, LocalDate.of(2019, 5, 1), 200D));
        paymentList.add(new Payment(2L, LocalDate.of(2019, 6, 1), 500D));
    }

    public Map<Integer, Double> getPaymentByMonth(int month) {
        return paymentList.stream().collect(Collectors.groupingBy(e -> e.getPaymentDate().getMonthValue(), Collectors.summingDouble(e -> e.getAmount())));
    }

    public List getList() {
        return paymentList;
    }

    public Map getMap() {
        Map<String, Long> map = new HashMap<>();
        map.put("a", 78L);
        map.put("b", 50L);
        //JSONObject jsonObj = new JSONObject(map);

        return map;
    }

    public List getIntList() {
        List<String> list = Arrays.asList("1750", "1800", "1850", "1900", "1950", "1999", "2050");
        return list;
    }

    private Gson gson = new Gson();

    public String getState(Integer too) {

            OrderDAO orderDAO=new OrderDAO();
            List<Integer> integers = Arrays.asList(502, 635, 809, 947, 1402, 3634, orderDAO.getTotalIncome().intValue());
            String s = this.gson.toJson(integers);
            return s;
    }

    public Map<String, Long> getStateStat() {
        Map<String, Long> stateMap = new HashMap<>();
        stateMap.put("us-ma", 10L);
        return stateMap;
    }
}
