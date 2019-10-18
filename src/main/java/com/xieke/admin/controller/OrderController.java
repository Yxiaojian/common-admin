package com.xieke.admin.controller;

import com.xieke.admin.bo.ClassesBo;
import com.xieke.admin.bo.CurriculumBo;
import com.xieke.admin.bo.OrderBo;
import com.xieke.admin.bo.StudentBo;
import com.xieke.admin.domain.ClassesDomain;
import com.xieke.admin.domain.CurriculumDomain;
import com.xieke.admin.domain.OrderDomain;
import com.xieke.admin.domain.StudentDomain;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.dto.UserInfo;
import com.xieke.admin.enums.OrderStatus;
import com.xieke.admin.web.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;

@Controller
@RequestMapping("/order")
public class OrderController extends BaseController {

    @Resource
    private ClassesDomain classesDomain;

    @Resource
    private CurriculumDomain curriculumDomain;

    @Resource
    private StudentDomain studentDomain;

    @Resource
    private OrderDomain orderDomain;

    @ResponseBody
    @RequestMapping("/create")
    public ResultInfo create(Integer studentId, Integer classesId, Integer curriculumId, String discountAmount, String discountRemark) {
        if (studentId == null) {
            return new ResultInfo("学生ID为空");
        }
        if (classesId == null) {
            return new ResultInfo("班级ID为空");
        }
        if (curriculumId == null) {
            return new ResultInfo("课程ID为空");
        }
        StudentBo studentBo = studentDomain.get(studentId);
        ClassesBo classesBo = classesDomain.get(classesId);
        CurriculumBo curriculumBo = curriculumDomain.get(curriculumId);
        if (studentBo == null) {
            return new ResultInfo("学生不存在");
        }
        if (classesBo == null) {
            return new ResultInfo("班级不存在");
        }
        if (curriculumBo == null) {
            return new ResultInfo("课程不存在");
        }
        BigDecimal discountAmountBig = BigDecimal.ZERO;
        if (!StringUtils.isEmpty(discountAmount)) {
            discountAmountBig = new BigDecimal(discountAmount);
        }

        UserInfo userInfo = this.getUserInfo();
        OrderBo orderBo = new OrderBo(studentBo, classesBo, curriculumBo, discountAmountBig, discountRemark, curriculumBo.getPrice().subtract(discountAmountBig), BigDecimal.ZERO, OrderStatus.DEFAULT.getValue(), userInfo.getId(), userInfo.getName(), new Date(), "");
        Integer orderId = orderDomain.insert(orderBo);
        if (orderId==null){
            return new ResultInfo("创建订单失败");
        }
        return new ResultInfo(orderId);
    }


    @ResponseBody
    @RequestMapping("/get")
    public ResultInfo getById(Integer orderId){
        return new ResultInfo(orderDomain.get(orderId));
    }

}
