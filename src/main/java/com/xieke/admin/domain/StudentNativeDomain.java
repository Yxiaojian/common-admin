package com.xieke.admin.domain;

import com.xieke.admin.bo.StudentBo;
import com.xieke.admin.model.Student;
import com.xieke.admin.service.StudentService;
import com.xieke.admin.util.BeanUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/08/24
 */
@Service("studentDomain")
public class StudentNativeDomain implements StudentDomain {

    @Resource
    private StudentService studentService;

    @Override
    public Boolean insert(StudentBo studentBo) {
        return studentService.insert(BeanUtil.convert(studentBo, Student.class));
    }

    @Override
    public Boolean delete(Integer id) {
        return studentService.delete(id);
    }

    @Override
    public StudentBo get(Integer id) {
        return BeanUtil.convert(studentService.get(id), StudentBo.class);
    }

    @Override
    public List<StudentBo> findAll() {
        return BeanUtil.convertList(studentService.findAll(), StudentBo.class);
    }

}
