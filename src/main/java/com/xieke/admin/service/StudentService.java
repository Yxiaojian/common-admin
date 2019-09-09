package com.xieke.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xieke.admin.bo.StudentBo;
import com.xieke.admin.mapper.StudentMapper;
import com.xieke.admin.model.Student;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/09/07
 */
@Service
public class StudentService {

    @Resource
    private StudentMapper studentMapper;

    /**
     * 添加
     *
     * @param student
     * @return
     */
    public boolean insert(Student student) {
        return studentMapper.insert(student) > 0;
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    public boolean delete(Integer id) {
        return studentMapper.deleteById(id) > 0;
    }

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    public Student get(Integer id) {
        return studentMapper.selectById(id);
    }

    /**
     * 查询全部数据
     *
     * @return
     */
    public List<Student> findAll() {
        QueryWrapper<Student> wrapper = new QueryWrapper<>();
        return studentMapper.selectList(wrapper);
    }


    public Boolean softDelete(Integer id) {
        Student student = this.get(id);
        QueryWrapper<Student> queryWrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Student> wrapper = queryWrapper.lambda();
        if (student != null) {
            wrapper.eq(Student::getID, id);
            student.setDeleteStatus(1);
        } else {
            return false;
        }
        return studentMapper.update(student, wrapper) > 0;
    }

    public IPage<Student> findPage(Integer pageIndex, Integer pageSize, Integer grade) {
        Page<Student> objectPage = new Page<>(pageIndex, pageSize);
        QueryWrapper<Student> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Student> wrapperLamdba = wrapper.lambda();
        if (grade != null) {
            wrapperLamdba.eq(Student::getGrade, grade);
        }
        return studentMapper.selectPage(objectPage, wrapperLamdba);
    }

    /**
     * 根据ID将不为null的字段更新
     *
     * @param student
     * @return
     */
    public Boolean updateById(Student student) {
        if (student.getID() == null) {
            return false;
        }
        return studentMapper.updateById(student) > 0;
    }

}
