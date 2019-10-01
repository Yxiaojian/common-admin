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
@TableName("t_curriculum")
public class Curriculum implements Serializable {

    /**
     * 主键ID
     */
    @TableId(value = "FID", type = IdType.AUTO)
    private Integer ID;

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