package com.xieke.admin.controller;

import com.xieke.admin.bo.CurriculumBo;
import com.xieke.admin.domain.CurriculumDomain;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.page.HtPage;
import com.xieke.admin.web.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/curriculum")
@RequiresPermissions("curriculum:list")
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
    @ResponseBody
    public ResultInfo delete(Integer[] idArr) {
        if (idArr == null) {
            return new ResultInfo<>("课程ID不能为空");
        }
        for (Integer curriculumId:idArr) {
            if (!curriculumDomain.softDelete(curriculumId)) {

            }
        }

        return new ResultInfo(true);
    }

    @RequestMapping("/selectListData")
    @ResponseBody
    public ResultInfo<List<CurriculumBo>> selectListData(){
        List<CurriculumBo> list = curriculumDomain.findAll();
        return new ResultInfo<>(list);
    }


    @RequestMapping("/findById")
    @ResponseBody
    public ResultInfo<CurriculumBo> findById(Integer id){
        CurriculumBo curriculumBo = curriculumDomain.get(id);
        return new ResultInfo<>(curriculumBo);
    }

    @RequestMapping("/findPage")
    @ResponseBody
    public ResultInfo findPage(@RequestParam(value = "page", defaultValue = "1") Integer page, @RequestParam(value = "limit", defaultValue = "20") Integer limit, Integer semester, Integer date, Integer year, Integer grade, String curriculumName) {
        HtPage<CurriculumBo> htPage = curriculumDomain.findPage(page, limit, semester, date, year, grade, curriculumName);
        return new ResultInfo("","0",htPage.getRecords(),new Long (htPage.getTotal()).intValue());

    }




}
