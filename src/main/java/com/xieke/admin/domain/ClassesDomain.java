package com.xieke.admin.domain;

import com.xieke.admin.bo.ClassesBo;

import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/09/07
 */
public interface ClassesDomain {

    /**
     * 添加
     *
     * @param classesBo
     * @return
     */
    boolean insert(ClassesBo classesBo);

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
    ClassesBo get(Integer id);

    /**
     * 查询全部数据
     *
     * @return
     */
    List<ClassesBo> findAll();


}
