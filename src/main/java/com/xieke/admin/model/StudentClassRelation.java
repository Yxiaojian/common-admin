package com.xieke.admin.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
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
@TableName("t_student_class_relation")
public class StudentClassRelation implements Serializable {

    /**
     * 学生ID
     */
    @TableField("FStudentID")
    private Integer studentID;

    /**
     * 班级ID
     */
    @TableField("FClassID")
    private Integer classID;

    private static final long serialVersionUID = 1L;
}