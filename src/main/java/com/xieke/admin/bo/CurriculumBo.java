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
public class CurriculumBo implements Serializable {

    /**
     * 主键ID
     */
    private Integer ID;

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
     * 是否已删除
     */
    private Integer deleteStatus;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 备注
     */
    private String remark;

    private static final long serialVersionUID = 1L;

    public CurriculumBo(String curriculumName, Integer semester, Integer date, Integer year, Integer grade, Integer classTime, BigDecimal price, Integer deleteStatus, Date createTime, String remark) {
        this.curriculumName = curriculumName;
        this.semester = semester;
        this.date = date;
        this.year = year;
        this.grade = grade;
        this.classTime = classTime;
        this.price = price;
        this.deleteStatus = deleteStatus;
        this.createTime = createTime;
        this.remark = remark;
    }
}