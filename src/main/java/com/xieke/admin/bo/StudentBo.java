package com.xieke.admin.bo;

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
public class StudentBo implements Serializable {

    /**
     * 主键ID
     */
    private Integer id;

    /**
     * 学生姓名
     */
    private String studentname;

    /**
     * 性别
     */
    private Integer sex;

    /**
     * 电话一
     */
    private String phoneone;

    /**
     * 电话一备注
     */
    private String phoneoneremark;

    /**
     * 电话二
     */
    private String phonetwo;

    /**
     * 电话二备注
     */
    private String phonetworemark;

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
    private Integer entranceyear;

    /**
     * 是否已删除
     */
    private Integer deletestatus;

    /**
     * 创建时间
     */
    private Date createtime;

    /**
     * 备注
     */
    private String remark;

    private static final long serialVersionUID = 1L;
}