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
@TableName("t_classes")
public class Classes implements Serializable {

    /**
     * 主键ID
     */
    @TableId(value = "FID", type = IdType.AUTO)
    private Integer ID;

    /**
     * 课程ID
     */
    @TableField("FCurriculumID")
    private Integer curriculumID;

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

    private static final long serialVersionUID = 1L;
}