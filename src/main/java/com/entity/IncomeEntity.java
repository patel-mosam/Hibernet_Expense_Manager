package com.entity;

import java.math.BigDecimal;
import java.sql.Date;

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
@Table(name = "Income")
@Data
public class IncomeEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "incomeId")
    private Integer incomeId;

    @Column(name = "title", nullable = false)
    private String title;

//    @Column(name = "accountId", nullable = false)
//    private Integer accountId;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false)
    private IncomeStatus status;

    public enum IncomeStatus {
        PENDING,
        COMPLETED,
        CANCELLED
    }

    @Column(name = "amount", nullable = false, precision = 10, scale = 2)
    private BigDecimal amount;

    @Temporal(TemporalType.DATE)
    @Column(name = "transactionDate", nullable = false)
    private Date transactionDate;

    @Column(name = "description", length = 500)
    private String description;

//    @Column(name = "userId", nullable = false)
//    private Integer userId;
	
}
