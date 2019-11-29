package com.xieke.admin.bo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * 
 * @author zhangyang
 * @date 2019/09/07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@AllArgsConstructor
@NoArgsConstructor
public class PayRecordBo implements Serializable {

    /**
     * 主键ID
     */
    private Integer ID;

    /**
     * 订单ID
     */
    private Integer orderID;

    /**
     * 支付方式
     */
    private Integer payType;

    /**
     * 付款金额
     */
    private BigDecimal payAmount;

    /**
     * 收费人
     */
    private String toller;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 备注
     */
    private String remark;

    /**
     * 类型：0支付 1退款
     */
    private Integer recordType;

    private static final long serialVersionUID = 1L;

    public PayRecordBo(Integer orderID, Integer payType, BigDecimal payAmount, String toller, Date createTime, String remark,Integer recordType) {
        this.orderID = orderID;
        this.payType = payType;
        this.payAmount = payAmount;
        this.toller = toller;
        this.createTime = createTime;
        this.remark = remark;
        this.recordType = recordType;
    }
}