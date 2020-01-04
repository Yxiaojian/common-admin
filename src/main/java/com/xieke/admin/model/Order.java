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
@TableName("t_order")
public class Order implements Serializable {

    /**
     * 主键ID
     */
    @TableId(value = "FID", type = IdType.AUTO)
    private Integer ID;

    /**
     * 学生ID
     */
    @TableField("FStudentID")
    private Integer studentID;

    /**
     * 学生姓名
     */
    @TableField("FStudentName")
    private String studentName;

    /**
     * 性别
     */
    @TableField("FSex")
    private Integer sex;

    /**
     * 电话一
     */
    @TableField("FPhoneOne")
    private String phoneOne;

    /**
     * 电话一备注
     */
    @TableField("FPhoneOneRemark")
    private String phoneOneRemark;

    /**
     * 电话二
     */
    @TableField("FPhoneTwo")
    private String phoneTwo;

    /**
     * 电话二备注
     */
    @TableField("FPhoneTwoRemark")
    private String phoneTwoRemark;

    /**
     * 班级ID
     */
    @TableField("FClassID")
    private Integer classID;

    /**
     * 班级名称
     */
    @TableField("FClassName")
    private String className;

    /**
     * 主讲老师ID
     */
    @TableField("FTeacherID")
    private Integer teacherID;

    /**
     * 主讲老师姓名
     */
    @TableField("FTeacherName")
    private String teacherName;

    /**
     * 助教老师ID
     */
    @TableField("FAssistantTeacherID")
    private Integer assistantTeacherID;

    /**
     * 助教老师姓名
     */
    @TableField("FAssistantTeacherName")
    private String assistantTeacherName;

    /**
     * 班型
     */
    @TableField("FClassType")
    private Integer classType;

    /**
     * 时间档
     */
    @TableField("FClassLevel")
    private Integer classLevel;

    /**
     * 课程ID
     */
    @TableField("FCurriculumID")
    private Integer curriculumID;

    /**
     * 课程名称
     */
    @TableField("FCurriculumName")
    private String curriculumName;

    /**
     * 学期
     */
    @TableField("FSemester")
    private Integer semester;

    /**
     * 日期
     */
    @TableField("FDate")
    private Integer date;

    /**
     * 年份
     */
    @TableField("FYear")
    private Integer year;

    /**
     * 年级
     */
    @TableField("FGrade")
    private Integer grade;

    /**
     * 课次
     */
    @TableField("FClassTime")
    private Integer classTime;

    /**
     * 标价
     */
    @TableField("FPrice")
    private BigDecimal price;

    /**
     * 优惠金额
     */
    @TableField("FDiscountAmount")
    private BigDecimal discountAmount;

    /**
     * 优惠说明
     */
    @TableField("FDiscountRemark")
    private String discountRemark;

    /**
     * 应付金额
     */
    @TableField("FPayableAmount")
    private BigDecimal payableAmount;

    /**
     * 已付金额
     */
    @TableField("FPaidAmount")
    private BigDecimal paidAmount;

    /**
     * 订单状态
     */
    @TableField("FOrderStatus")
    private Integer orderStatus;

    /**
     * 订单类型 1为新报名 2 为续报
     */
    @TableField("FOrderType")
    private Integer orderType;

    /**
     * 创建人ID
     */
    @TableField("FCreatorID")
    private Integer creatorID;

    /**
     * 创建人姓名
     */
    @TableField("FCreatorName")
    private String creatorName;

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
     * 订单号
     */
    @TableField("FOrderNo")
    private String orderNo;



    private static final long serialVersionUID = 1L;
}