package com.xieke.admin.controller;

import com.xieke.admin.bo.StudentBo;
import com.xieke.admin.domain.StudentDomain;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.page.HtPage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Resource
    private StudentDomain studentDomain;


    @RequestMapping("/add")
    @ResponseBody
    public ResultInfo addStudent(String studentName, Integer sex, String phoneOne, String phoneOneRemark, String phoneTwo, String phoneTwoRemark, String school, Integer grade, Integer entranceYear) {
        StudentBo studentBo = new StudentBo(studentName, sex, phoneOne, phoneOneRemark, phoneTwo, phoneTwoRemark, school, grade, entranceYear, 0, new Date(), "","","");
        if (!studentDomain.insert(studentBo)) {
            return new ResultInfo<>("新增失败");
        }
        return new ResultInfo(true);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public ResultInfo deleteStudent(Integer studentId) {
        if (studentId == null) {
            return new ResultInfo<>("学生ID不能为空");
        }
        if (!studentDomain.softDelete(studentId)) {
            return new ResultInfo<>("删除失败");
        }
        return new ResultInfo(true);
    }

    @RequestMapping("/update")
    @ResponseBody
    public ResultInfo updateStudent(Integer studentId, String studentName, Integer sex, String phoneOne, String phoneOneRemark, String phoneTwo, String phoneTwoRemark, String school, Integer grade, Integer entranceYear) {
        if (studentId == null) {
            return new ResultInfo<>("学生ID不能为空");
        }
        if (!studentDomain.update(studentId, studentName, sex, phoneOne, phoneOneRemark, phoneTwo, phoneTwoRemark, school, grade, entranceYear)) {
            return new ResultInfo<>("更新失败");
        }
        return new ResultInfo(true);
    }


    @RequestMapping("/findPage")
    @ResponseBody
    public ResultInfo findPage(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, @RequestParam(value = "pageSize", defaultValue = "20") Integer pageSize, Integer grade) {
        HtPage<StudentBo> htPage = studentDomain.findPage(pageIndex, pageSize, grade);
        return new ResultInfo(htPage.getRecords());
    }

    @RequestMapping("/home")
    public void toHome(){

    }
    @RequestMapping("/enroll")
    public void toEnroll(){

    }


}
