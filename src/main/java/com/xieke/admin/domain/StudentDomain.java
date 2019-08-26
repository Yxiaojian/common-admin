package com.xieke.admin.domain;

import com.xieke.admin.bo.StudentBo;

import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/08/24
 */
public interface StudentDomain {

    /**
     * 添加
     *
     * @param studentBo
     * @return
     */
    Boolean insert(StudentBo studentBo);

    /**
     * 删除
     *
     * @param id
     * @return
     */
    Boolean delete(Integer id);

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    StudentBo get(Integer id);

    /**
     * 查询全部数据
     *
     * @return
     */
    List<StudentBo> findAll();


}
