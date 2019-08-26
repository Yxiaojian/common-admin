package com.xieke.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xieke.admin.model.Student;
import com.xieke.admin.mapper.StudentMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/08/24
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


}
