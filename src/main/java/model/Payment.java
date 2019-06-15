package model;

import lombok.Data;

import java.time.LocalDate;

@Data
public class Payment {
    private Long paymentId;
    private LocalDate paymentDate;
    private Double amount;

    public Payment(Long paymentId, LocalDate paymentDate, Double amount) {
        this.paymentId = paymentId;
        this.paymentDate = paymentDate;
        this.amount = amount;
    }
}
