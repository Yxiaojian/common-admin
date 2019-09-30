package com.xieke.admin.domain;

import com.xieke.admin.bo.StudentBo;
import com.xieke.admin.model.Student;
import com.xieke.admin.page.HtPage;
import com.xieke.admin.service.StudentService;
import com.xieke.admin.util.BeanUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/09/07
 */
@Service("studentDomain")
public class StudentNativeDomain implements StudentDomain {

    @Resource
    private StudentService studentService;

    @Override
    public boolean insert(StudentBo studentBo) {
        return studentService.insert(BeanUtil.convert(studentBo, Student.class));
    }

    @Override
    public boolean delete(Integer id) {
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

    @Override
    public Boolean softDelete(Integer id) {
        return studentService.softDelete(id);
    }

    @Override
    public HtPage<StudentBo> findPage(Integer pageIndex, Integer pageSize, Integer grade) {
        HtPage<Student> htPage = new HtPage<>(studentService.findPage(pageIndex, pageSize, grade));
        return BeanUtil.convertPage(htPage, StudentBo.class);
    }

    @Override
    public Boolean update(Integer studentId, String studentName, Integer sex, String phoneOne, String phoneOneRemark, String phoneTwo, String phoneTwoRemark, String school, Integer grade, Integer entranceYear) {
        return studentService.updateById(studentId, studentName, sex, phoneOne, phoneOneRemark, phoneTwo, phoneTwoRemark, school, grade, entranceYear);
    }

}
