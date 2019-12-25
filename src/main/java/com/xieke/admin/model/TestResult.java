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
 * @date 2019/12/21
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_test_result")
public class TestResult implements Serializable {

    /**
     * 主键ID
     */
    @TableId(value = "FID", type = IdType.AUTO)
    private Integer ID;

    /**
     * 考试ID
     */
    @TableField("FStudentID")
    private Integer studentID;

    /**
     * 学生姓名
     */
    @TableField("FStudentName")
    private String studentName;

    /**
     * 考试ID
     */
    @TableField("FTestID")
    private Integer testID;

    /**
     * 考试名称
     */
    @TableField("FTestName")
    private String testName;

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
     * 分数
     */
    @TableField("FScore")
    private Integer score;

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

    private static final long serialVersionUID = 1L;
}