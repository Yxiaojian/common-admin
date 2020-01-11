package com.xieke.admin.controller;

import com.xieke.admin.bo.OrderBo;
import com.xieke.admin.bo.StudentCountBo;
import com.xieke.admin.domain.OrderDomain;
import com.xieke.admin.domain.StudentDomain;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.enums.OrderType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Author: zbl
 * @Date: Created in 19:57 2019/12/19
 * @Description: 统计
 * @Version: $
 */
@Controller
@RequestMapping("/statistics")
public class StatisticsController {

    @Resource
    private StudentDomain studentDomain;

    @Resource
    private OrderDomain orderDomain;

    @RequestMapping("/home")
    public void toHome() {

    }

    @RequestMapping("/*")
    public void toHtml() {

    }

    @RequestMapping("/studentStatistics")
    public String toStudentStatistics(){
        return "statistics/studentStatistics";
    }

    @RequestMapping("/chargeStatistics")
    public String toChargeStatistics(){
        return "statistics/chargeStatistics";
    }

    @RequestMapping("/payRecordList")
    public String toPayRecord(){return "statistics/list";}

    @RequestMapping("/student")
    @ResponseBody
    public ResultInfo studentCount(Integer year, Integer semester) {
        Integer nextYear = null;
        Integer nextSemester = 0;
        if (semester == 4) {
            nextYear = year + 1;
            nextSemester = 1;
        } else {
            nextYear = year;
            nextSemester = semester;
        }
        Integer allStudentCount = studentDomain.getCount();
        Integer thisSemesterStudentCount = this.countStudent(year, semester);
        Integer nextSemesterStudentCount = this.countStudent(nextYear, nextSemester);

        //计算续报率
        List<Integer> studentIds = new ArrayList<>();
        List<OrderBo> orderBoList = orderDomain.findByYearAndSemester(nextYear, nextSemester);
        for (OrderBo orderBo : orderBoList) {
            if (orderBo.getOrderType().equals(OrderType.OLD.getValue())) {
                studentIds.add(orderBo.getStudentID());
            }
        }
        List<Integer> studentIdsWithoutDuplicates = studentIds.stream().distinct().collect(Collectors.toList());
        Integer xubaoStudentCount = studentIdsWithoutDuplicates.size();
        // 创建一个数值格式化对象
        NumberFormat numberFormat = NumberFormat.getInstance();
        // 设置精确到小数点后2位
        numberFormat.setMaximumFractionDigits(2);
        String result = "0";
        if (xubaoStudentCount != 0 || thisSemesterStudentCount != 0) {
            result = numberFormat.format((float) xubaoStudentCount / (float) thisSemesterStudentCount * 100);;
        }
        StudentCountBo studentCountBo = new StudentCountBo();
        studentCountBo.setAllStudentCount(allStudentCount);
        studentCountBo.setThisSemesterStudentCount(thisSemesterStudentCount);
        studentCountBo.setNextSemesterStudentCount(nextSemesterStudentCount);
        studentCountBo.setContinuePercent(result);
        return new ResultInfo(studentCountBo);
    }

    public Integer countStudent(Integer year, Integer semester) {
        List<Integer> studentIds = new ArrayList<>();
        List<OrderBo> orderBoList = orderDomain.findByYearAndSemester(year, semester);
        for (OrderBo orderBo : orderBoList) {
            studentIds.add(orderBo.getStudentID());
        }
        List<Integer> studentIdsWithoutDuplicates = studentIds.stream().distinct().collect(Collectors.toList());
        return studentIdsWithoutDuplicates.size();
    }

}
