package com.xieke.admin.domain;

import com.xieke.admin.bo.CurriculumBo;
import com.xieke.admin.model.Curriculum;
import com.xieke.admin.page.HtPage;
import com.xieke.admin.service.CurriculumService;
import com.xieke.admin.util.BeanUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/09/07
 */
@Service("curriculumDomain")
public class CurriculumNativeDomain implements CurriculumDomain {

    @Resource
    private CurriculumService curriculumService;

    @Override
    public boolean insert(CurriculumBo curriculumBo) {
        return curriculumService.insert(BeanUtil.convert(curriculumBo, Curriculum.class));
    }

    @Override
    public boolean delete(Integer id) {
        return curriculumService.delete(id);
    }

    @Override
    public CurriculumBo get(Integer id) {
        return BeanUtil.convert(curriculumService.get(id), CurriculumBo.class);
    }

    @Override
    public List<CurriculumBo> findAll() {
        return BeanUtil.convertList(curriculumService.findAll(), CurriculumBo.class);
    }

    @Override
    public Boolean softDelete(Integer curriculumId) {
        return curriculumService.softDelete(curriculumId);
    }

    @Override
    public HtPage<CurriculumBo> findPage(Integer pageIndex, Integer pageSize, Integer semester, Integer date, Integer year, Integer grade) {
        HtPage<Curriculum> htPage = new HtPage<>(curriculumService.findPage(pageIndex, pageSize, semester, date, year, grade));
        return BeanUtil.convertPage(htPage, CurriculumBo.class);
    }

}
