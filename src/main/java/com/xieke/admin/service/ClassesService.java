package com.xieke.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xieke.admin.model.Classes;
import com.xieke.admin.mapper.ClassesMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/09/07
 */
 @Service
public class ClassesService {

    @Resource
    private ClassesMapper classesMapper;

    /**
     * 添加
     *
     * @param classes
     * @return
     */
    public boolean insert(Classes classes) {
        return classesMapper.insert(classes) > 0;
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    public boolean delete(Integer id) {
        return classesMapper.deleteById(id) > 0;
    }

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    public Classes get(Integer id) {
        return classesMapper.selectById(id);
    }

    /**
     * 查询全部数据
     *
     * @return
     */
    public List<Classes> findAll() {
    QueryWrapper<Classes> wrapper = new QueryWrapper<>();
      return classesMapper.selectList(wrapper);
    }


}
