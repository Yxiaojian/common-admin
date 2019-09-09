package com.xieke.admin.domain;

import com.xieke.admin.bo.StudentClassRelationBo;
import com.xieke.admin.model.StudentClassRelation;
import com.xieke.admin.service.StudentClassRelationService;
import com.xieke.admin.util.BeanUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/09/07
 */
@Service("studentClassRelationDomain")
public class StudentClassRelationNativeDomain implements StudentClassRelationDomain {

    @Resource
    private StudentClassRelationService studentClassRelationService;

    @Override
    public boolean insert(StudentClassRelationBo studentClassRelationBo) {
        return studentClassRelationService.insert(BeanUtil.convert(studentClassRelationBo, StudentClassRelation.class));
    }

    @Override
    public boolean delete(Integer id) {
        return studentClassRelationService.delete(id);
    }

    @Override
    public StudentClassRelationBo get(Integer id) {
        return BeanUtil.convert(studentClassRelationService.get(id), StudentClassRelationBo.class);
    }

    @Override
    public List<StudentClassRelationBo> findAll() {
        return BeanUtil.convertList(studentClassRelationService.findAll(), StudentClassRelationBo.class);
    }

}
