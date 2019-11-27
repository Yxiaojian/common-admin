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
     * 未付金额
     */
    private BigDecimal unpaidAmount;

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

    public OrderBo(Integer studentID, String studentName, Integer sex, String phoneOne, String phoneOneRemark, String phoneTwo, String phoneTwoRemark, Integer classID, String className, Integer teacherID, String teacherName, Integer assistantTeacherID, String assistantTeacherName, Integer classType, Integer classLevel, Integer curriculumID, String curriculumName, Integer semester, Integer date, Integer year, Integer grade, Integer classTime, BigDecimal price, BigDecimal discountAmount, String discountRemark, BigDecimal payableAmount, BigDecimal paidAmount, Integer orderStatus, Integer creatorID, String creatorName, Date createTime, String remark) {
        this.studentID = studentID;
        this.studentName = studentName;
        this.sex = sex;
        this.phoneOne = phoneOne;
        this.phoneOneRemark = phoneOneRemark;
        this.phoneTwo = phoneTwo;
        this.phoneTwoRemark = phoneTwoRemark;
        this.classID = classID;
        this.className = className;
        this.teacherID = teacherID;
        this.teacherName = teacherName;
        this.assistantTeacherID = assistantTeacherID;
        this.assistantTeacherName = assistantTeacherName;
        this.classType = classType;
        this.classLevel = classLevel;
        this.curriculumID = curriculumID;
        this.curriculumName = curriculumName;
        this.semester = semester;
        this.date = date;
        this.year = year;
        this.grade = grade;
        this.classTime = classTime;
        this.price = price;
        this.discountAmount = discountAmount;
        this.discountRemark = discountRemark;
        this.payableAmount = payableAmount;
        this.paidAmount = paidAmount;
        this.unpaidAmount = payableAmount;
        this.orderStatus = orderStatus;
        this.creatorID = creatorID;
        this.creatorName = creatorName;
        this.createTime = createTime;
        this.remark = remark;
    }

    public OrderBo (StudentBo studentBo,ClassesBo classesBo,CurriculumBo curriculumBo, BigDecimal discountAmount, String discountRemark, BigDecimal payableAmount, BigDecimal paidAmount, Integer orderStatus, Integer creatorID, String creatorName, Date createTime, String remark){
        this.studentID = studentBo.getID();
        this.studentName = studentBo.getStudentName();
        this.sex = studentBo.getSex();
        this.phoneOne = studentBo.getPhoneOne();
        this.phoneOneRemark = studentBo.getPhoneOneRemark();
        this.phoneTwo = studentBo.getPhoneTwo();
        this.phoneTwoRemark = studentBo.getPhoneTwoRemark();
        this.classID = classesBo.getID();
        this.className = classesBo.getClassName();
        this.teacherID = classesBo.getTeacherID();
        this.teacherName = classesBo.getTeacherName();
        this.assistantTeacherID = classesBo.getAssistantTeacherID();
        this.assistantTeacherName = classesBo.getAssistantTeacherName();
        this.classType = classesBo.getClassType();
        this.classLevel = classesBo.getClassLevel();
        this.curriculumID = curriculumBo.getID();
        this.curriculumName = curriculumBo.getCurriculumName();
        this.semester = curriculumBo.getSemester();
        this.date = curriculumBo.getDate();
        this.year = curriculumBo.getYear();
        this.grade = curriculumBo.getGrade();
        this.classTime = curriculumBo.getClassTime();
        this.price = curriculumBo.getPrice();

        this.discountAmount = discountAmount;
        this.discountRemark = discountRemark;
        this.payableAmount = payableAmount;
        this.paidAmount = paidAmount;
        this.unpaidAmount = payableAmount;
        this.orderStatus = orderStatus;
        this.creatorID = creatorID;
        this.creatorName = creatorName;
        this.createTime = createTime;
        this.remark = remark;
    }

}