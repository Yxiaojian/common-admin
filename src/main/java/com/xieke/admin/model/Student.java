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
 * @date 2019/08/24
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
    private Integer id;

    /**
     * 学生姓名
     */
    @TableField("FStudentname")
    private String studentname;

    /**
     * 性别
     */
    @TableField("FSex")
    private Integer sex;

    /**
     * 电话一
     */
    @TableField("FPhoneone")
    private String phoneone;

    /**
     * 电话一备注
     */
    @TableField("FPhoneoneremark")
    private String phoneoneremark;

    /**
     * 电话二
     */
    @TableField("FPhonetwo")
    private String phonetwo;

    /**
     * 电话二备注
     */
    @TableField("FPhonetworemark")
    private String phonetworemark;

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
    @TableField("FEntranceyear")
    private Integer entranceyear;

    /**
     * 是否已删除
     */
    @TableField("FDeletestatus")
    private Integer deletestatus;

    /**
     * 创建时间
     */
    @TableField("FCreatetime")
    private Date createtime;

    /**
     * 备注
     */
    @TableField("FRemark")
    private String remark;

    private static final long serialVersionUID = 1L;
}