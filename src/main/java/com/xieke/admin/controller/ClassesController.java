package com.xieke.admin.controller;

import com.xieke.admin.bo.ClassesBo;
import com.xieke.admin.domain.ClassesDomain;
import com.xieke.admin.domain.OrderDomain;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.page.HtPage;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("/classes")
@RequiresPermissions("classes:list")
public class ClassesController {
    @Resource
    private ClassesDomain classesDomain;

    @Resource
    private OrderDomain orderDomain;

    @RequestMapping("/*")
    public void toHtml() {

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
    @ResponseBody
    public ResultInfo delete(Integer[] idArr) {
        if (idArr == null) {
            return new ResultInfo<>("班级ID不能为空");
        }

        for (Integer classesId : idArr) {
            if (!classesDomain.softDelete(classesId)) {
                return new ResultInfo<>("删除失败");
            }
        }

        return new ResultInfo(true);
    }

    @RequestMapping("/selectListData")
    @ResponseBody
    public ResultInfo<List<ClassesBo>> selectListData() {
        List<ClassesBo> list = classesDomain.findAll();
        return new ResultInfo<>(list);
    }

    @RequestMapping("/findNotUsedClass")
    @ResponseBody
    public ResultInfo findNotUsedClass(Integer studentId) {
        List<ClassesBo> list = classesDomain.findAll();
        Iterator<ClassesBo> it = list.iterator();
        while (it.hasNext()) {
            ClassesBo classesBo = it.next();
            if (orderDomain.getByStudentIdAndClassId(studentId, classesBo.getID()) != null) {
                it.remove();
            }
        }
        return new ResultInfo<>(list);
    }

    @RequestMapping("/update")
    @ResponseBody
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
    public ResultInfo findPage(@RequestParam(value = "page", defaultValue = "1") Integer page, @RequestParam(value = "limit", defaultValue = "20") Integer limit, String className) {
        HtPage<ClassesBo> htPage = classesDomain.findPage(page, limit, className == null ? null : className.trim());
        return new ResultInfo("", "0", htPage.getRecords(), new Long(htPage.getTotal()).intValue());
    }


}
