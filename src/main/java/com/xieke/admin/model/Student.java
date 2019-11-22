package com.xieke.admin.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
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
@TableName("t_student")
public class Student implements Serializable {

    /**
     * 主键ID
     */
    @TableId(value = "FID", type = IdType.AUTO)
    private Integer ID;

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
     * 学校
     */
    @TableField("FSchool")
    private String school;

    /**
     * 年级
     */
    @TableField("FGrade")
    private Integer grade;

    /**
     * 入学年份
     */
    @TableField("FEntranceYear")
    private Integer entranceYear;

    /**
     * 是否已删除
     */
    @TableField("FDeleteStatus")
    private Integer deleteStatus;

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

    @TableField("FAddress")
    private String address;

    @TableField("FBirthday")
    private String birthday;


    private static final long serialVersionUID = 1L;
}