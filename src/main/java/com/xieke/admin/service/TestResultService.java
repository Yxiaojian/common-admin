package com.xieke.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xieke.admin.mapper.TestResultMapper;
import com.xieke.admin.model.TestResult;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/12/21
 */
@Service
public class TestResultService {

    @Resource
    private TestResultMapper testResultMapper;

    /**
     * 添加
     *
     * @param testResult
     * @return
     */
    public boolean insert(TestResult testResult) {
        return testResultMapper.insert(testResult) > 0;
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    public boolean delete(Integer id) {
        return testResultMapper.deleteById(id) > 0;
    }

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    public TestResult get(Integer id) {
        return testResultMapper.selectById(id);
    }

    /**
     * 查询全部数据
     *
     * @return
     */
    public List<TestResult> findAll() {
        QueryWrapper<TestResult> wrapper = new QueryWrapper<>();
        return testResultMapper.selectList(wrapper);
    }

    public List<TestResult> findByTestId(Integer testId) {
        if (testId == null) {
            return null;
        }
        QueryWrapper<TestResult> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<TestResult> lambdaQueryWrapper = wrapper.lambda();
        lambdaQueryWrapper.eq(TestResult::getTestID, testId);
        return testResultMapper.selectList(lambdaQueryWrapper);
    }

    public TestResult getByTestIdAndStudentId(Integer testId, Integer studentId) {
        if (testId == null) {
            return null;
        }
        if (studentId == null) {
            return null;
        }
        QueryWrapper<TestResult> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<TestResult> lambdaQueryWrapper = wrapper.lambda();
        lambdaQueryWrapper.eq(TestResult::getTestID, testId);
        lambdaQueryWrapper.eq(TestResult::getStudentID, studentId);
        return testResultMapper.selectOne(lambdaQueryWrapper);
    }

    public Boolean modScore(Integer testResultId, Integer score) {
        if (testResultId == null) {
            return false;
        }
        if (score == null) {
            return false;
        }
        TestResult testResult = this.get(testResultId);
        testResult.setScore(score);
        return testResultMapper.updateById(testResult) > 0;
    }

}
