package com.xieke.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xieke.admin.model.StudentClassRelation;
import com.xieke.admin.mapper.StudentClassRelationMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/09/07
 */
 @Service
public class StudentClassRelationService {

    @Resource
    private StudentClassRelationMapper studentClassRelationMapper;

    /**
     * 添加
     *
     * @param studentClassRelation
     * @return
     */
    public boolean insert(StudentClassRelation studentClassRelation) {
        return studentClassRelationMapper.insert(studentClassRelation) > 0;
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    public boolean delete(Integer id) {
        return studentClassRelationMapper.deleteById(id) > 0;
    }

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    public StudentClassRelation get(Integer id) {
        return studentClassRelationMapper.selectById(id);
    }

    /**
     * 查询全部数据
     *
     * @return
     */
    public List<StudentClassRelation> findAll() {
    QueryWrapper<StudentClassRelation> wrapper = new QueryWrapper<>();
      return studentClassRelationMapper.selectList(wrapper);
    }


}
