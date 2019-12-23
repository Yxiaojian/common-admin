package com.xieke.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xieke.admin.mapper.TestMapper;
import com.xieke.admin.model.Test;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/12/21
 */
@Service
public class TestService {

    @Resource
    private TestMapper testMapper;

    /**
     * 添加
     *
     * @param test
     * @return
     */
    public boolean insert(Test test) {
        return testMapper.insert(test) > 0;
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    public boolean delete(Integer id) {
        return testMapper.deleteById(id) > 0;
    }

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    public Test get(Integer id) {
        return testMapper.selectById(id);
    }

    /**
     * 查询全部数据
     *
     * @return
     */
    public List<Test> findAll() {
        QueryWrapper<Test> wrapper = new QueryWrapper<>();
        return testMapper.selectList(wrapper);
    }

    public Boolean updateTestName(Integer testId, String testName) {
        if (testId == null) {
            return false;
        }
        Test test = this.get(testId);
        if (test == null) {
            return false;
        }
        test.setTestName(testName);
        return testMapper.updateById(test) > 0;
    }

    public List<Test> findByClassId(Integer classId) {
        if (classId == null) {
            return null;
        }
        QueryWrapper<Test> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Test> lambdaQueryWrapper = wrapper.lambda();
        lambdaQueryWrapper.eq(Test::getClassID, classId);
        return testMapper.selectList(lambdaQueryWrapper);
    }

}
