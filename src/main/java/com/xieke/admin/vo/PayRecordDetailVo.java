package com.xieke.admin.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.math.BigDecimal;
import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@AllArgsConstructor
@NoArgsConstructor
public class PayRecordDetailVo {

    /**
     * 学生姓名
     */
    private String studentName;

    /**
     * 订单号
     */
    private String orderNo;

    /**
     * 年级
     */
    private Integer grade;

    /**
     * 性别
     */
    private Integer sex;

    /**
     * 班型
     */
    private Integer classType;

    /**
     * 电话一
     */
    private String phoneOne;

    /**
     * 班级名称
     */
    private String className;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 付款金额
     */
    private BigDecimal payAmount;

    /**
     * 收费人
     */
    private String toller;


}
