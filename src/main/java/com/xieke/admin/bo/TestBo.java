package com.xieke.admin.bo;

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
public class TestBo implements Serializable {

    /**
     * 主键ID
     */
    private Integer ID;

    /**
     * 考试名称
     */
    private String testName;

    /**
     * 班级ID
     */
    private Integer classID;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 备注
     */
    private String remark;

    private static final long serialVersionUID = 1L;
}