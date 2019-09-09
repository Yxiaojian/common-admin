package com.xieke.admin.controller;

import com.xieke.admin.bo.StudentBo;
import com.xieke.admin.domain.StudentDomain;
import com.xieke.admin.page.HtPage;
import com.xieke.admin.util.HtResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Date;

@RestController
@RequestMapping("/student")
public class StudentController {
    @Resource
    private StudentDomain studentDomain;


    @RequestMapping("/add")
    public HtResult addStudent(String studentName, Integer sex, String phoneOne, String phoneOneRemark, String phoneTwo, String phoneTwoRemark, String school, Integer grade, Integer entranceYear) {
        StudentBo studentBo = new StudentBo(studentName, sex, phoneOne, phoneOneRemark, phoneTwo, phoneTwoRemark, school, grade, entranceYear, 0, new Date(), "");
        if (!studentDomain.insert(studentBo)) {
            return HtResult.error("新增失败");
        }
        return HtResult.success();
    }

    @RequestMapping("/delete")
    public HtResult deleteStudent(Integer studentId) {
        if (studentId == null) {
            return HtResult.error("学生ID不能为空");
        }
        if (!studentDomain.softDelete(studentId)) {
            return HtResult.error("删除失败");
        }
        return HtResult.success();
    }

    @RequestMapping("/update")
    public HtResult updateStudent(Integer studentId,String studentName, Integer sex, String phoneOne, String phoneOneRemark, String phoneTwo, String phoneTwoRemark, String school, Integer grade, Integer entranceYear){
        if (studentId==null){
            return HtResult.error("学生ID不能为空");
        }
        if (!studentDomain.update(studentId, studentName, sex, phoneOne, phoneOneRemark, phoneTwo, phoneTwoRemark, school, grade, entranceYear)){
            return HtResult.error("更新失败");
        }
        return HtResult.success();
    }



    @RequestMapping("/findPage")
    public HtResult findPage(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, @RequestParam(value = "pageSize", defaultValue = "20") Integer pageSize, Integer grade) {
        HtPage<StudentBo> htPage = studentDomain.findPage(pageIndex, pageSize, grade);
        return HtResult.success(htPage);
    }


}
