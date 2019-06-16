package model;

import lombok.Data;

import java.time.LocalDate;

@Data
public class Payment {
    public Long paymentId;
    public LocalDate paymentDate;
    public Double amount;

    public Payment(Long paymentId, LocalDate paymentDate, Double amount) {
        this.paymentId = paymentId;
        this.paymentDate = paymentDate;
        this.amount = amount;
    }

    public Long getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Long paymentId) {
        this.paymentId = paymentId;
    }

    public LocalDate getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(LocalDate paymentDate) {
        this.paymentDate = paymentDate;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }
}
