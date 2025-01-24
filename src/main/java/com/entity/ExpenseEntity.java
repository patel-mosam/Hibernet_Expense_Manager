package com.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Entity
@Table(name = "Expense")
@Data
public class ExpenseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "expenseId")
    private Integer expenseId;

    @Column(name = "title", nullable = false)
    private String title;

//    @Column(name = "categoryId", nullable = false)
//    private Integer categoryId;
//
//    @Column(name = "subcategoryId")
//    private Integer subcategoryId;
//
//    @Column(name = "vendorId")
//    private Integer vendorId;

//    @Column(name = "accountId", nullable = false)
//    private Integer accountId;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false)
    private ExpenseStatus status;
    public enum ExpenseStatus {
        PENDING,
        COMPLETED,
        CANCELLED
    }

   
    @Column(name = "amount", nullable = false, precision = 10, scale = 2)
    private BigDecimal amount;


    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "transactionDate", nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private Date transactionDate;

    @Column(name = "description", length = 500)
    private String description;

//    @Column(name = "userId", nullable = false)
//    private Integer userId;
}





