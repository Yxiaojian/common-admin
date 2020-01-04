package com.xieke.admin.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * 
 * @author zhangyang
 * @date 2019/09/07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_pay_record")
public class PayRecord implements Serializable {

    /**
     * 主键ID
     */
    @TableId(value = "FID", type = IdType.AUTO)
    private Integer ID;

    /**
     * 订单ID
     */
    @TableField("FOrderID")
    private Integer orderID;

    /**
     * 支付方式
     * 0支付宝 1微信支付 2POS机刷卡 3中国银联 5现金
     */
    @TableField("FPayType")
    private Integer payType;

    /**
     * 付款金额
     */
    @TableField("FPayAmount")
    private BigDecimal payAmount;

    /**
     * 收费人
     */
    @TableField("FToller")
    private String toller;

    /**
     * 创建时间
     */
    @TableField("FCreateTime")
    private Date createTime;

    /**
     * 备注
     */
    @TableField("FRemark")
    private String remark;

    /**
     * 类型：0支付 1退款
     */
    @TableField("FRecordType")
    private Integer recordType;

    /**
     * 订单号
     */
    @TableField("FOrderNo")
    private String orderNo;

    /**
     * 学生姓名
     */
    @TableField("FStudentName")
    private String studentName;

    /**
     * 电话一
     */
    @TableField("FPhoneOne")
    private String phoneOne;

    private static final long serialVersionUID = 1L;
}