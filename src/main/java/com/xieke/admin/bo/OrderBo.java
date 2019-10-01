package com.xieke.admin.bo;

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
public class OrderBo implements Serializable {

    /**
     * 主键ID
     */
    private Integer ID;

    /**
     * 学生ID
     */
    private Integer studentID;

    /**
     * 学生姓名
     */
    private String studentName;

    /**
     * 性别
     */
    private Integer sex;

    /**
     * 电话一
     */
    private String phoneOne;

    /**
     * 电话一备注
     */
    private String phoneOneRemark;

    /**
     * 电话二
     */
    private String phoneTwo;

    /**
     * 电话二备注
     */
    private String phoneTwoRemark;

    /**
     * 班级ID
     */
    private Integer classID;

    /**
     * 班级名称
     */
    private String className;

    /**
     * 主讲老师ID
     */
    private Integer teacherID;

    /**
     * 主讲老师姓名
     */
    private String teacherName;

    /**
     * 助教老师ID
     */
    private Integer assistantTeacherID;

    /**
     * 助教老师姓名
     */
    private String assistantTeacherName;

    /**
     * 班型
     */
    private Integer classType;

    /**
     * 时间档
     */
    private Integer classLevel;

    /**
     * 课程ID
     */
    private Integer curriculumID;

    /**
     * 课程名称
     */
    private String curriculumName;

    /**
     * 学期
     */
    private Integer semester;

    /**
     * 日期
     */
    private Integer date;

    /**
     * 年份
     */
    private Integer year;

    /**
     * 年级
     */
    private Integer grade;

    /**
     * 课次
     */
    private Integer classTime;

    /**
     * 标价
     */
    private BigDecimal price;

    /**
     * 优惠金额
     */
    private BigDecimal discountAmount;

    /**
     * 优惠说明
     */
    private String discountRemark;

    /**
     * 应付金额
     */
    private BigDecimal payableAmount;

    /**
     * 已付金额
     */
    private BigDecimal paidAmount;

    /**
     * 订单状态
     */
    private Integer orderStatus;

    /**
     * 创建人ID
     */
    private Integer creatorID;

    /**
     * 创建人姓名
     */
    private String creatorName;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 备注
     */
    private String remark;

    private static final long serialVersionUID = 1L;
}