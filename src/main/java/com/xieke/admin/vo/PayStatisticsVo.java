package com.xieke.admin.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.math.BigDecimal;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@AllArgsConstructor
@NoArgsConstructor
public class PayStatisticsVo {
    private BigDecimal weekIncome;
    private BigDecimal monthIncome;
    private BigDecimal semesterIncome;
    private BigDecimal semesterExpense;
}
