package com.xieke.admin.controller;

import com.xieke.admin.bo.ClassesBo;
import com.xieke.admin.domain.ClassesDomain;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.page.HtPage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Date;

@Controller
@RequestMapping("/classes")
public class ClassesController {
    @Resource
    private ClassesDomain classesDomain;

    @RequestMapping("/*")
    public void toHtml(){

    }

    @RequestMapping("/add")
    @ResponseBody
    public ResultInfo add(Integer curriculumID, String className, Integer teacherID, String teacherName, Integer assistantTeacherID, String assistantTeacherName, Integer classType, Integer classLevel) {
        ClassesBo classesBo = new ClassesBo(curriculumID, className, teacherID, teacherName, assistantTeacherID, assistantTeacherName, classType, classLevel, 0, new Date(), "");
        if (!classesDomain.insert(classesBo)) {
            return new ResultInfo<>("新增失败");
        }

        return new ResultInfo(true);
    }

    @RequestMapping("/delete")
    public ResultInfo delete(Integer classesId) {
        if (classesId == null) {
            return new ResultInfo<>("班级ID不能为空");
        }
        if (!classesDomain.softDelete(classesId)) {
            return new ResultInfo<>("删除失败");
        }
        return new ResultInfo(true);
    }

    @RequestMapping("/update")
    public ResultInfo update(Integer classesId, Integer curriculumID, String className, Integer teacherID, String teacherName, Integer assistantTeacherID, String assistantTeacherName, Integer classType, Integer classLevel) {
        if (classesId == null) {
            return new ResultInfo<>("班级ID不能为空");
        }
        if (!classesDomain.update(classesId, curriculumID, className, teacherID, teacherName, assistantTeacherID, assistantTeacherName, classType, classLevel)) {
            return new ResultInfo<>("更新失败");
        }
        return new ResultInfo(true);
    }


    @RequestMapping("/findPage")
    @ResponseBody
    public ResultInfo findPage(@RequestParam(value = "page", defaultValue = "1") Integer page, @RequestParam(value = "limit", defaultValue = "20") Integer limit) {
        HtPage<ClassesBo> htPage = classesDomain.findPage(page, limit);
        return new ResultInfo(htPage.getRecords());
    }


}
