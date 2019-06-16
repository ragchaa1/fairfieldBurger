package dao;

import model.Payment;

import java.time.LocalDate;
import java.time.Month;
import java.util.*;
import java.util.function.Function;
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

    public List getList(){
        return paymentList;
    }

    public Map getMap(){
        Map<Integer, Long> map=new HashMap<>();
        map.put(1,78L);
        map.put(2,50L);
        return map;
    }

    public List getIntList(){
        List<String> list = Arrays.asList("1750", "1800", "1850", "1900", "1950", "1999", "2050");
        return list;
    }

    public List getAsia(){
        //[502, 635, 809, 947, 1402, 3634, 5268]
        List<Integer> list = Arrays.asList(502,635,809,947,1402,3634,5268);
        return list;
    }



}
