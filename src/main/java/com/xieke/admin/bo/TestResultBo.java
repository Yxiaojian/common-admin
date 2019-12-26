package com.xieke.admin.bo;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * 
 * @author zhangyang
 * @date 2019/12/21
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@NoArgsConstructor
@AllArgsConstructor
public class TestResultBo implements Serializable {

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
     * 考试ID
     */
    private Integer testID;

    /**
     * 考试名称
     */
    private String testName;

    /**
     * 班级ID
     */
    private Integer classID;

    /**
     * 班级名称
     */
    private String className;

    /**
     * 分数
     */
    private Integer score;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 备注
     */
    private String remark;

    public TestResultBo(Integer studentID, String studentName, Integer testID, String testName, Integer classID, String className, Integer score, Date createTime, String remark) {
        this.studentID = studentID;
        this.studentName = studentName;
        this.testID = testID;
        this.testName = testName;
        this.classID = classID;
        this.className = className;
        this.score = score;
        this.createTime = createTime;
        this.remark = remark;
    }

    private static final long serialVersionUID = 1L;
}