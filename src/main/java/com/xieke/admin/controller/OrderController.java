package com.xieke.admin.controller;

import com.xieke.admin.bo.*;
import com.xieke.admin.domain.*;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.dto.UserInfo;
import com.xieke.admin.enums.OrderStatus;
import com.xieke.admin.page.HtPage;
import com.xieke.admin.web.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/order")
@RequiresPermissions("order:list")
public class OrderController extends BaseController {

    @Resource
    private ClassesDomain classesDomain;

    @Resource
    private CurriculumDomain curriculumDomain;

    @Resource
    private StudentDomain studentDomain;

    @Resource
    private OrderDomain orderDomain;

    @Resource
    private StudentClassRelationDomain studentClassRelationDomain;

    @Resource
    private PayRecordDomain payRecordDomain;


    @ResponseBody
    @RequestMapping("/create")
    @Transactional(rollbackFor = Exception.class)
    public ResultInfo create(String userName, String mobilePhone1, String phone1Info, String mobilePhone2, String phone2Info, String school, Integer grade, Integer startYear, String homeAddress, String birthday, String remarks, Integer stuClass, Integer curriculumId, String discountAmount, String discountRemark, Integer payType, String prePay, String operateUser, String opdesc) throws Exception {
        StudentBo studentInsertBo = new StudentBo(userName, 0, mobilePhone1, phone1Info, mobilePhone2, phone2Info, school, grade, startYear, 0, new Date(), remarks, homeAddress, birthday);
        StudentBo byNameAndPhone1 = studentDomain.getByNameAndPhone1(userName, mobilePhone1);
        int studentId = 0;
        if (byNameAndPhone1 != null) {
            studentId = byNameAndPhone1.getID();
        } else {
            studentId = studentDomain.insertReturnId(studentInsertBo);

        }
        if (studentId <= 0) {
            return new ResultInfo("创建学生出错");
        }
        if (stuClass == null) {
            return new ResultInfo("班级ID为空");
        }
        if (curriculumId == null) {
            return new ResultInfo("课程ID为空");
        }
        StudentBo studentBo = studentDomain.get(studentId);
        ClassesBo classesBo = classesDomain.get(stuClass);
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
        if (orderId == null) {
            return new ResultInfo("创建订单失败");
        }
        StudentClassRelationBo studentClassRelationBo = new StudentClassRelationBo();
        studentClassRelationBo.setClassID(stuClass);
        studentClassRelationBo.setStudentID(studentId);
        studentClassRelationDomain.insert(studentClassRelationBo);

        BigDecimal prePayBig = BigDecimal.ZERO;
        if (!StringUtils.isEmpty(prePay)) {
            prePayBig = new BigDecimal(prePay);
        } else {
            return new ResultInfo(orderId);
        }
        Date now = new Date();
        PayRecordBo payRecordBo = new PayRecordBo(orderId, payType, prePayBig, operateUser, now, opdesc, 0);
        boolean a = payRecordDomain.create(payRecordBo);
        if (a) {
            return new ResultInfo(orderId);
        } else {
            return new ResultInfo("支付失败");
        }
    }


    @ResponseBody
    @RequestMapping("/createById")
    @Transactional(rollbackFor = Exception.class)
    public ResultInfo createById(Integer studentId, Integer classesId, Integer curriculumId, String discountAmount, String discountRemark, String prePay, Integer payType, String operateUser, String opdesc) throws Exception {
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
        if (orderId == null) {
            return new ResultInfo("创建订单失败");
        }
        StudentClassRelationBo studentClassRelationBo = new StudentClassRelationBo();
        studentClassRelationBo.setClassID(classesId);
        studentClassRelationBo.setStudentID(studentId);
        studentClassRelationDomain.insert(studentClassRelationBo);

        //预付款
        BigDecimal prePayBig = BigDecimal.ZERO;
        if (!StringUtils.isEmpty(prePay)) {
            prePayBig = new BigDecimal(prePay);
        } else {
            return new ResultInfo(orderId);
        }
        Date now = new Date();
        PayRecordBo payRecordBo = new PayRecordBo(orderId, payType, prePayBig, operateUser, now, opdesc, 0);
        boolean a = payRecordDomain.create(payRecordBo);
        if (a) {
            return new ResultInfo(orderId);
        } else {
            return new ResultInfo("支付失败");
        }
    }


    @ResponseBody
    @RequestMapping("/get")
    public ResultInfo getById(Integer orderId) {
        return new ResultInfo(orderDomain.get(orderId));
    }

    @RequestMapping("/findPage")
    @ResponseBody
    public ResultInfo findPage(@RequestParam(value = "pageIndex", defaultValue = "1") Integer pageIndex, @RequestParam(value = "pageSize", defaultValue = "20") Integer pageSize, String studentName, String phoneOne) {
        HtPage<OrderBo> htPage = orderDomain.findPage(pageIndex, pageSize, studentName, phoneOne);
        List<OrderBo> orderBoList = htPage.getRecords();
        for (OrderBo orderBo : orderBoList) {
            orderBo.setUnpaidAmount(orderBo.getPayableAmount().subtract(orderBo.getPaidAmount()));
        }
        htPage.setRecords(orderBoList);
        return new ResultInfo("", "0", htPage.getRecords(), new Long(htPage.getTotal()).intValue());
    }

    @RequestMapping("/cancel")
    @ResponseBody
    public ResultInfo cancel(Integer orderId) {
        OrderBo orderBo = orderDomain.get(orderId);
        if (orderDomain.cancel(orderId)) {
            return new ResultInfo(orderBo.getPaidAmount());
        } else {
            return new ResultInfo("订单取消失败");
        }
    }

}
