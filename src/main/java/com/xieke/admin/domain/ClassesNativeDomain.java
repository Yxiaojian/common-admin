package com.xieke.admin.domain;

import com.xieke.admin.bo.ClassesBo;
import com.xieke.admin.model.Classes;
import com.xieke.admin.page.HtPage;
import com.xieke.admin.service.ClassesService;
import com.xieke.admin.util.BeanUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/09/07
 */
@Service("classesDomain")
public class ClassesNativeDomain implements ClassesDomain {

    @Resource
    private ClassesService classesService;

    @Override
    public boolean insert(ClassesBo classesBo) {
        return classesService.insert(BeanUtil.convert(classesBo, Classes.class));
    }

    @Override
    public boolean delete(Integer id) {
        return classesService.delete(id);
    }

    @Override
    public ClassesBo get(Integer id) {
        return BeanUtil.convert(classesService.get(id), ClassesBo.class);
    }

    @Override
    public List<ClassesBo> findAll() {
        return BeanUtil.convertList(classesService.findAll(), ClassesBo.class);
    }

    @Override
    public Boolean softDelete(Integer classesId) {
        return classesService.softDelete(classesId);
    }

    @Override
    public HtPage<ClassesBo> findPage(Integer pageIndex, Integer pageSize) {
        HtPage<Classes> htPage = new HtPage<>(classesService.findPage(pageIndex, pageSize));
        return BeanUtil.convertPage(htPage, ClassesBo.class);
    }

    @Override
    public Boolean update(Integer classesId, Integer curriculumID, String className, Integer teacherID, String teacherName, Integer assistantTeacherID, String assistantTeacherName, Integer classType, Integer classLevel) {
        return classesService.update(classesId, curriculumID, className, teacherID, teacherName, assistantTeacherID, assistantTeacherName, classType, classLevel);
    }

}
