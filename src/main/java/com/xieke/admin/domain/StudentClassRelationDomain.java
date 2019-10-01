package com.xieke.admin.domain;

import com.xieke.admin.bo.StudentClassRelationBo;

import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/09/07
 */
public interface StudentClassRelationDomain {

    /**
     * 添加
     *
     * @param studentClassRelationBo
     * @return
     */
    boolean insert(StudentClassRelationBo studentClassRelationBo);

    /**
     * 删除
     *
     * @param id
     * @return
     */
    boolean delete(Integer id);

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    StudentClassRelationBo get(Integer id);

    /**
     * 查询全部数据
     *
     * @return
     */
    List<StudentClassRelationBo> findAll();


}
