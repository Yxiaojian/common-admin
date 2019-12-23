package com.xieke.admin.domain;

import com.xieke.admin.bo.TestResultBo;
import com.xieke.admin.model.TestResult;
import com.xieke.admin.service.TestResultService;
import com.xieke.admin.util.BeanUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/12/21
 */
@Service("testResultDomain")
public class TestResultNativeDomain implements TestResultDomain {

    @Resource
    private TestResultService testResultService;

    @Override
    public Boolean insert(TestResultBo testResultBo) {
        return testResultService.insert(BeanUtil.convert(testResultBo, TestResult.class));
    }

    @Override
    public Boolean delete(Integer id) {
        return testResultService.delete(id);
    }

    @Override
    public TestResultBo get(Integer id) {
        return BeanUtil.convert(testResultService.get(id), TestResultBo.class);
    }

    @Override
    public List<TestResultBo> findAll() {
        return BeanUtil.convertList(testResultService.findAll(), TestResultBo.class);
    }

    @Override
    public List<TestResultBo> findByTestId(Integer testId) {
        return BeanUtil.convertList(testResultService.findByTestId(testId), TestResultBo.class);
    }

}
