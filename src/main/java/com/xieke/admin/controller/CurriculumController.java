package com.xieke.admin.controller;

import com.xieke.admin.bo.CurriculumBo;
import com.xieke.admin.domain.CurriculumDomain;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.page.HtPage;
import com.xieke.admin.web.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;

@Controller
@RequestMapping("/curriculum")
public class CurriculumController  extends BaseController {
    @Resource
    private CurriculumDomain curriculumDomain;


    @RequestMapping("/*")
    public void toHtml(){

    }

    @RequestMapping("/add")
    @ResponseBody
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
    @ResponseBody
    public ResultInfo findPage(@RequestParam(value = "page", defaultValue = "1") Integer page, @RequestParam(value = "limit", defaultValue = "20") Integer limit, Integer semester, Integer date, Integer year, Integer grade) {
        HtPage<CurriculumBo> htPage = curriculumDomain.findPage(page, limit, semester, date, year, grade);
        return new ResultInfo(htPage.getRecords());

    }




}
