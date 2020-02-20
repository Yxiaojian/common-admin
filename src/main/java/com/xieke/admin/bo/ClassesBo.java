package com.xieke.admin.bo;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
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
public class ClassesBo implements Serializable {

    /**
     * 主键ID
     */
    private Integer ID;

    /**
     * 课程ID
     */
    private Integer curriculumID;

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
     * 是否已删除
     */
    private Integer deleteStatus;

    /**
     * 创建时间
     */
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;

    /**
     * 已报名人数
     */
    private Integer appliedCount;

    /**
     * 备注
     */
    private String remark;

    private static final long serialVersionUID = 1L;

    public ClassesBo(Integer curriculumID, String className, Integer teacherID, String teacherName, Integer assistantTeacherID, String assistantTeacherName, Integer classType, Integer classLevel, Integer deleteStatus, Date createTime, String remark) {
        this.curriculumID = curriculumID;
        this.className = className;
        this.teacherID = teacherID;
        this.teacherName = teacherName;
        this.assistantTeacherID = assistantTeacherID;
        this.assistantTeacherName = assistantTeacherName;
        this.classType = classType;
        this.classLevel = classLevel;
        this.deleteStatus = deleteStatus;
        this.createTime = createTime;
        this.remark = remark;
    }
}