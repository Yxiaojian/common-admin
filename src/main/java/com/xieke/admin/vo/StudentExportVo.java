package com.xieke.admin.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@NoArgsConstructor
@AllArgsConstructor
public class StudentExportVo implements Serializable {
    /**
     * 主键ID
     */
    private Integer ID;

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
     * 学校
     */
    private String school;

    /**
     * 年级
     */
    private Integer grade;

    /**
     * 入学年份
     */
    private Integer entranceYear;

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
     * 备注
     */
    private String remark;

    private String address;

    private String birthday;

    /**
     * 最近的一门课程
     */
    private String recentCurriculum;

    /**
     * 历史课程
     */
    private String historyCurriculums;
}
