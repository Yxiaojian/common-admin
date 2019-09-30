package com.xieke.admin.controller;

import com.xieke.admin.bo.CurriculumBo;
import com.xieke.admin.domain.CurriculumDomain;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.page.HtPage;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;

@RestController
@RequestMapping("/curriculum")
public class CurriculumController {
    @Resource
    private CurriculumDomain curriculumDomain;


    @RequestMapping("/add")
    public ResultInfo add(String curriculumName, Integer semester, Integer date, Integer year, Integer grade, Integer classTime, String price) {
        CurriculumBo curriculumBo = new CurriculumBo(curriculumName, semester, date, year, grade, classTime, new BigDecimal(price), 0, new Date(), "");
        if (!curriculumDomain.insert(curriculumBo)) {
            return new ResultInfo<>("新增失败");
        }
        return new ResultInfo(true);
    }

    @RequestMapping("/delete")
    public ResultInfo delete(Integer curriculumId) {
        if (curriculumId == null) {
            return new ResultInfo<>("课程ID不能为空");
        }
        if (!curriculumDomain.softDelete(curriculumId)) {
            return new ResultInfo<>("删除失败");
        }
        return new ResultInfo(true);
    }


    @RequestMapping("/findPage")
    public ResultInfo findPage(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, @RequestParam(value = "pageSize", defaultValue = "20") Integer pageSize, Integer semester, Integer date, Integer year, Integer grade) {
        HtPage<CurriculumBo> htPage = curriculumDomain.findPage(pageIndex, pageSize, semester, date, year, grade);
        return new ResultInfo(htPage);
    }


}
