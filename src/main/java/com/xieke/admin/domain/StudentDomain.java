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
     * ���
     *
     * @param studentBo
     * @return
     */
    Boolean insert(StudentBo studentBo);

    /**
     * ɾ��
     *
     * @param id
     * @return
     */
    Boolean delete(Integer id);

    /**
     * ����������ѯ
     *
     * @param id
     * @return
     */
    StudentBo get(Integer id);

    /**
     * ��ѯȫ������
     *
     * @return
     */
    List<StudentBo> findAll();


}
