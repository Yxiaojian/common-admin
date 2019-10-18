package com.xieke.admin.bo;

import java.io.Serializable;

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
public class StudentClassRelationBo implements Serializable {

    /**
     * 学生ID
     */
    private Integer studentID;

    /**
     * 班级ID
     */
    private Integer classID;

    private static final long serialVersionUID = 1L;
}