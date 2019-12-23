package com.xieke.admin.controller;

import com.xieke.admin.bo.TestBo;
import com.xieke.admin.bo.TestResultBo;
import com.xieke.admin.domain.TestDomain;
import com.xieke.admin.domain.TestResultDomain;
import com.xieke.admin.dto.ResultInfo;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/test")
public class TestController {
    @Resource
    private TestDomain testDomain;

    @Resource
    private TestResultDomain testResultDomain;

    @RequestMapping("/add")
    @ResponseBody
    public ResultInfo add(Integer classId, String testName, String remark) {
        if (classId == null) {
            return new ResultInfo<>("classId为空");
        }
        if (StringUtils.isEmpty(testName)) {
            return new ResultInfo<>("testName为空");
        }

        TestBo testBo = new TestBo();
        testBo.setTestName(testName);
        testBo.setClassID(classId);
        testBo.setCreateTime(new Date());
        testBo.setRemark(remark);
        if (testDomain.insert(testBo)) {
            return new ResultInfo(true);
        } else {
            return new ResultInfo<>("新增失败");
        }
    }

    @RequestMapping("/delete")
    @ResponseBody
    public ResultInfo delete(Integer testId) {
        if (testId == null) {
            return new ResultInfo<>("testId");
        }
        List<TestResultBo> testResultBoList = testResultDomain.findByTestId(testId);
        if (!CollectionUtils.isEmpty(testResultBoList)) {
            return new ResultInfo<>("该考试已经被使用，不可删除");
        }
        if (testDomain.delete(testId)) {
            return new ResultInfo(true);
        } else {
            return new ResultInfo<>("删除失败");
        }

    }

    @RequestMapping("/mod")
    @ResponseBody
    public ResultInfo mod(Integer testId, String testName) {
        if (testId == null) {
            return new ResultInfo<>("testId为空");
        }
        if (StringUtils.isEmpty(testName)) {
            return new ResultInfo<>("testName为空");
        }
        if (testDomain.updateTestName(testId, testName)) {
            return new ResultInfo(true);
        } else {
            return new ResultInfo<>("修改失败");
        }
    }

    @RequestMapping("/findByClassId")
    @ResponseBody
    public ResultInfo findByClassId(Integer classId) {
        if (classId == null) {
            return new ResultInfo<>("classId为空");
        }
        return new ResultInfo(testDomain.findByClassId(classId));
    }


}
