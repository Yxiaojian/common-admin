package com.xieke.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xieke.admin.model.Curriculum;
import com.xieke.admin.mapper.CurriculumMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/09/07
 */
@Service
public class CurriculumService {

    @Resource
    private CurriculumMapper curriculumMapper;

    /**
     * 添加
     *
     * @param curriculum
     * @return
     */
    public boolean insert(Curriculum curriculum) {
        return curriculumMapper.insert(curriculum) > 0;
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    public boolean delete(Integer id) {
        return curriculumMapper.deleteById(id) > 0;
    }

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    public Curriculum get(Integer id) {
        return curriculumMapper.selectById(id);
    }

    /**
     * 查询全部数据
     *
     * @return
     */
    public List<Curriculum> findAll() {
        QueryWrapper<Curriculum> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Curriculum> curriculumWrapper = wrapper.lambda();
        curriculumWrapper.eq(Curriculum::getDeleteStatus, 0);
        return curriculumMapper.selectList(curriculumWrapper);
    }

    public Boolean softDelete(Integer id) {
        Curriculum curriculum = this.get(id);
        QueryWrapper<Curriculum> queryWrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Curriculum> wrapper = queryWrapper.lambda();
        if (curriculum != null) {
            wrapper.eq(Curriculum::getID, id);
            curriculum.setDeleteStatus(1);
        } else {
            return false;
        }
        return curriculumMapper.update(curriculum, wrapper) > 0;
    }

    public IPage<Curriculum> findPage(Integer pageIndex, Integer pageSize, Integer semester, Integer date, Integer year, Integer grade,String curriculumName) {
        Page<Curriculum> objectPage = new Page<>(pageIndex, pageSize);
        QueryWrapper<Curriculum> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Curriculum> wrapperLamdba = wrapper.lambda();
        if (semester != null) {
            wrapperLamdba.eq(Curriculum::getSemester, semester);
        }
        if (date != null) {
            wrapperLamdba.eq(Curriculum::getDate, date);
        }
        if (year != null) {
            wrapperLamdba.eq(Curriculum::getYear, year);
        }
        if (grade != null) {
            wrapperLamdba.eq(Curriculum::getGrade, grade);
        }
        if (curriculumName != null) {
            wrapperLamdba.like(Curriculum::getCurriculumName,curriculumName);
        }
        wrapperLamdba.eq(Curriculum::getDeleteStatus, 0);
        return curriculumMapper.selectPage(objectPage, wrapperLamdba);
    }

}
