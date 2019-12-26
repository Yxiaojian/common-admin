package com.xieke.admin.controller;

import com.xieke.admin.bo.ClassesBo;
import com.xieke.admin.bo.StudentBo;
import com.xieke.admin.bo.TestBo;
import com.xieke.admin.bo.TestResultBo;
import com.xieke.admin.domain.ClassesDomain;
import com.xieke.admin.domain.StudentDomain;
import com.xieke.admin.domain.TestDomain;
import com.xieke.admin.domain.TestResultDomain;
import com.xieke.admin.dto.ResultInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/testResult")
public class TestResultController {
    @Resource
    private TestDomain testDomain;

    @Resource
    private TestResultDomain testResultDomain;

    @Resource
    private StudentDomain studentDomain;

    @Resource
    private ClassesDomain classesDomain;


    @RequestMapping("/findStudentTestResult")
    @ResponseBody
    public ResultInfo findStudentTestResult(Integer studentId, Integer classId) {
        if (studentId == null) {
            return new ResultInfo<>("studentId为空");
        }
        if (classId == null) {
            return new ResultInfo<>("classId为空");
        }
        List<TestResultBo> testResultBoList = new ArrayList<>();
        List<TestBo> testBoList = testDomain.findByClassId(classId);
        for (TestBo testBo : testBoList) {
            TestResultBo testResultBo = testResultDomain.getByTestIdAndStudentId(testBo.getID(), studentId);
            if (testResultBo != null) {
                testResultBoList.add(testResultBo);
            } else {
                TestResultBo newTestResult = new TestResultBo();
                newTestResult.setScore(-1);
                newTestResult.setClassID(classId);
                newTestResult.setStudentID(studentId);
                newTestResult.setTestID(testBo.getID());
                newTestResult.setTestName(testBo.getTestName());
                testResultBoList.add(newTestResult);
            }
        }
        return new ResultInfo(testResultBoList);
    }

    @RequestMapping("/modTestResult")
    @ResponseBody
    public ResultInfo modTestResult(Integer testResultId, Integer score) {
        if (testResultId == null) {
            return new ResultInfo<>("testResultId为空");
        }
        if (score == null) {
            return new ResultInfo<>("score为空");
        }
        if (testResultDomain.modScore(testResultId, score)) {
            return new ResultInfo(true);
        } else {
            return new ResultInfo<>("修改失败");
        }
    }


    @RequestMapping("/addTestResult")
    @ResponseBody
    public ResultInfo addTestResult(Integer classId,Integer studentId,Integer testId,Integer score){
        if (classId == null) {
            return new ResultInfo<>("classId为空");
        }
        if (studentId == null) {
            return new ResultInfo<>("studentId为空");
        }
        if (testId == null) {
            return new ResultInfo<>("testId为空");
        }
        if (score == null) {
            return new ResultInfo<>("score为空");
        }
        ClassesBo classesBo = classesDomain.get(classId);
        StudentBo studentBo = studentDomain.get(studentId);
        TestBo testBo = testDomain.get(testId);
        TestResultBo newTestResult = new TestResultBo(studentBo.getID(),studentBo.getStudentName(),testBo.getID(),testBo.getTestName(),classesBo.getID(),classesBo.getClassName(),score,new Date(),"");
        if (testResultDomain.insert(newTestResult)) {
            return new ResultInfo(true);
        } else {
            return new ResultInfo<>("新增失败");
        }
    }
}
