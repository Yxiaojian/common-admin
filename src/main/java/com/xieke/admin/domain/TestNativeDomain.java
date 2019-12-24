package com.xieke.admin.domain;

import com.xieke.admin.bo.TestBo;
import com.xieke.admin.model.Test;
import com.xieke.admin.service.TestService;
import com.xieke.admin.util.BeanUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/12/21
 */
@Service("testDomain")
public class TestNativeDomain implements TestDomain {

    @Resource
    private TestService testService;

    @Override
    public Boolean insert(TestBo testBo) {
        return testService.insert(BeanUtil.convert(testBo, Test.class));
    }

    @Override
    public Boolean delete(Integer id) {
        return testService.delete(id);
    }

    @Override
    public TestBo get(Integer id) {
        return BeanUtil.convert(testService.get(id), TestBo.class);
    }

    @Override
    public List<TestBo> findAll() {
        return BeanUtil.convertList(testService.findAll(), TestBo.class);
    }

    @Override
    public Boolean updateTestName(Integer testId, String testName, String remark) {
        return testService.updateTestName(testId, testName, remark);
    }

    @Override
    public List<TestBo> findByClassId(Integer classId) {
        return BeanUtil.convertList(testService.findByClassId(classId), TestBo.class);
    }

}
