package com.xieke.admin.domain;

import com.xieke.admin.bo.StudentBo;
import com.xieke.admin.page.HtPage;

import java.util.List;

/**
 * @author zhangyang
 * @date 2019/09/07
 */
public interface StudentDomain {

    /**
     * 添加
     *
     * @param studentBo
     * @return
     */
    Integer insert(StudentBo studentBo);

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
    StudentBo get(Integer id);

    /**
     * 查询全部数据
     *
     * @return
     */
    List<StudentBo> findAll();

    Integer getCount();

    Boolean softDelete(Integer id);

    HtPage<StudentBo> findPage(Integer pageIndex, Integer pageSize, Integer grade, String name);

    Boolean update(Integer studentId, String studentName, Integer sex, String phoneOne, String phoneOneRemark, String phoneTwo, String phoneTwoRemark, String school, Integer grade, Integer entranceYear, String remark);


    int insertReturnId(StudentBo studentInsertBo);

    StudentBo getByNameAndPhone1(String studentName, String phone1);

}
