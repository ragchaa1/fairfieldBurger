package dao;

import model.Payment;

import java.time.LocalDate;
import java.time.Month;
import java.util.ArrayList;
import java.util.DoubleSummaryStatistics;
import java.util.List;
import java.util.Map;
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

}
