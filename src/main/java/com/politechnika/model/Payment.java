package com.politechnika.model;

import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;

import javax.xml.bind.annotation.XmlRootElement;
import java.math.BigDecimal;
import java.sql.Date;

/**
 * Created with IntelliJ IDEA. User: Łukasz Date: 19.11.13 Time: 22:53 To change
 * this template use File | Settings | File Templates.
 */
@Entity("Payment")
@XmlRootElement
public abstract class Payment {

    @Id
    private String paymentID = new ObjectId().toString();
    @Reference
    private Student student;
    private Date paymentDate;
    private String type;
    private Boolean paid;
    private Integer discount;
    private String description;
    private String title;
    private BigDecimal amount;
    private Date payableTo;

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Date getPayableTo() {
        return payableTo;
    }

    public void setPayableTo(Date payableTo) {
        this.payableTo = payableTo;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(String paymentID) {
        this.paymentID = paymentID;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Boolean getPaid() {
        return paid;
    }

    public void setPaid(Boolean paid) {
        this.paid = paid;
    }

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
