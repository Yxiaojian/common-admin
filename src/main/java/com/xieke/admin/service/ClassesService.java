package com.xieke.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xieke.admin.model.Classes;
import com.xieke.admin.mapper.ClassesMapper;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/09/07
 */
@Service
public class ClassesService {

    @Resource
    private ClassesMapper classesMapper;

    /**
     * 添加
     *
     * @param classes
     * @return
     */
    public boolean insert(Classes classes) {
        return classesMapper.insert(classes) > 0;
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    public boolean delete(Integer id) {
        return classesMapper.deleteById(id) > 0;
    }

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    public Classes get(Integer id) {
        return classesMapper.selectById(id);
    }

    /**
     * 查询全部数据
     *
     * @return
     */
    public List<Classes> findAll() {
        QueryWrapper<Classes> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Classes> curriculumWrapper = wrapper.lambda();
        curriculumWrapper.eq(Classes::getDeleteStatus, 0);
        return classesMapper.selectList(wrapper);
    }

    public Boolean softDelete(Integer id) {
        Classes classes = this.get(id);
        QueryWrapper<Classes> queryWrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Classes> wrapper = queryWrapper.lambda();
        if (classes != null) {
            wrapper.eq(Classes::getID, id);
            classes.setDeleteStatus(1);
        } else {
            return false;
        }
        return classesMapper.update(classes, wrapper) > 0;
    }

    public Boolean update(Integer classesId, Integer curriculumID, String className, Integer teacherID, String teacherName, Integer assistantTeacherID, String assistantTeacherName, Integer classType, Integer classLevel, Integer semester, Integer date) {
        if (classesId == null) {
            return false;
        }
        Classes classes = this.get(classesId);
        if (curriculumID != null) {
            classes.setCurriculumID(curriculumID);
        }
        if (!StringUtils.isEmpty(className)) {
            classes.setClassName(className);
        }
        if (teacherID != null) {
            classes.setTeacherID(teacherID);
        }
        if (!StringUtils.isEmpty(teacherName)) {
            classes.setTeacherName(teacherName);
        }
        if (assistantTeacherID != null) {
            classes.setAssistantTeacherID(assistantTeacherID);
        }
        if (!StringUtils.isEmpty(assistantTeacherName)) {
            classes.setAssistantTeacherName(assistantTeacherName);
        }
        if (classType != null) {
            classes.setClassType(classType);
        }
        if (classLevel != null) {
            classes.setClassLevel(classLevel);
        }
        if (semester != null) {
            classes.setSemester(semester);
        }
        if (date != null) {
            classes.setDate(date);
        }

        return classesMapper.updateById(classes) > 0;
    }

    public IPage<Classes> findPage(Integer pageIndex, Integer pageSize, String className, String teacherName) {
        Page<Classes> objectPage = new Page<>(pageIndex, pageSize);
        QueryWrapper<Classes> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Classes> wrapperLamdba = wrapper.lambda();
        wrapperLamdba.eq(Classes::getDeleteStatus, 0);
        if (className != null) {
            wrapperLamdba.like(Classes::getClassName, className);
        }
        if (teacherName != null) {
            wrapperLamdba.like(Classes::getTeacherName, teacherName);
        }
        return classesMapper.selectPage(objectPage, wrapperLamdba);
    }

    public List<Classes> findByTeacherId(Integer teacherId) {
        QueryWrapper<Classes> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Classes> wrapperLamdba = wrapper.lambda();
        if (teacherId != null) {
            wrapperLamdba.eq(Classes::getTeacherID, teacherId);
        }
        return classesMapper.selectList(wrapperLamdba);
    }

    public List<Classes> findByCurriculumId(Integer curriculumId) {
        QueryWrapper<Classes> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Classes> wrapperLamdba = wrapper.lambda();
        if (curriculumId != null) {
            wrapperLamdba.eq(Classes::getCurriculumID, curriculumId);
        }
        wrapperLamdba.eq(Classes::getDeleteStatus, 0);
        return classesMapper.selectList(wrapperLamdba);
    }

}
