package com.xieke.admin.domain;

import com.xieke.admin.bo.CurriculumBo;
import com.xieke.admin.page.HtPage;

import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/09/07
 */
public interface CurriculumDomain {

    /**
     * 添加
     *
     * @param curriculumBo
     * @return
     */
    boolean insert(CurriculumBo curriculumBo);

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
    CurriculumBo get(Integer id);

    /**
     * 查询全部数据
     *
     * @return
     */
    List<CurriculumBo> findAll();


    Boolean softDelete(Integer curriculumId);

    HtPage<CurriculumBo> findPage(Integer pageIndex, Integer pageSize, Integer semester, Integer date, Integer year, Integer grade, String curriculumName);

}
