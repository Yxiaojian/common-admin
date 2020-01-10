package com.xieke.admin.controller;

import com.xieke.admin.bo.OrderBo;
import com.xieke.admin.bo.PayRecordBo;
import com.xieke.admin.domain.OrderDomain;
import com.xieke.admin.domain.PayRecordDomain;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.enums.OrderStatus;
import com.xieke.admin.model.Order;
import com.xieke.admin.util.BeanUtil;
import com.xieke.admin.vo.PayRecordDetailVo;
import com.xieke.admin.vo.PayStatisticsVo;
import com.xieke.admin.web.BaseController;
import org.joda.time.DateTime;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/pay")
public class PayController extends BaseController {
    @Resource
    private OrderDomain orderDomain;

    @Resource
    private PayRecordDomain payRecordDomain;

    @ResponseBody
    @RequestMapping("add")
    public ResultInfo addPayRecord(Integer orderId, Integer payType, String payAmount, String toller) throws Exception {
        if (orderId == null) {
            return new ResultInfo("订单ID为空");
        }
        OrderBo orderBo = orderDomain.get(orderId);
        if (orderBo == null) {
            return new ResultInfo("订单不存在");
        }
        PayRecordBo payRecordBo = new PayRecordBo(orderId, payType, new BigDecimal(payAmount), toller, new Date(), "", 0);
        boolean a = payRecordDomain.create(payRecordBo);
        if (a) {
            return new ResultInfo(true);
        } else {
            return new ResultInfo("支付失败");
        }
    }

    @ResponseBody
    @RequestMapping("/list")
    public ResultInfo list(Integer semester, Integer year, Integer orderType) {
        List<OrderBo> orderBoList = orderDomain.findByYearAndSemester(year, semester);
        List<Integer> orderIds = new ArrayList<>();
        for (OrderBo orderBo : orderBoList) {
            if (orderType == 0 && orderBo.getOrderStatus() != OrderStatus.CANCEL.getValue()) {
                orderIds.add(orderBo.getID());
            }
            if (orderType == 1 && orderBo.getOrderStatus() == OrderStatus.CANCEL.getValue()) {
                orderIds.add(orderBo.getID());
            }
        }
        List<PayRecordBo> recordBos = payRecordDomain.findByOrderIds(orderIds);
        return new ResultInfo(recordBos);
    }

    @ResponseBody
    @RequestMapping("/get")
    public ResultInfo get(Integer recordId) {
        if (recordId == null) {
            return new ResultInfo("recordId为空");
        }
        PayRecordBo recordBo = payRecordDomain.get(recordId);
        if (recordBo == null) {
            return new ResultInfo("流水不存在");
        }
        PayRecordDetailVo detailVo = BeanUtil.convert(orderDomain.get(recordBo.getOrderID()), PayRecordDetailVo.class);
        detailVo.setCreateTime(recordBo.getCreateTime());
        detailVo.setPayAmount(recordBo.getPayAmount());
        detailVo.setToller(recordBo.getToller());
        return new ResultInfo(detailVo);
    }


    @ResponseBody
    @RequestMapping("/statistics")
    public ResultInfo statistics(Integer semester, Integer year) {
        PayStatisticsVo statisticsVo = new PayStatisticsVo();
        DateTime now = DateTime.now();
        Date firstDayOfMonth = now.withDayOfMonth(1).withHourOfDay(0).withMinuteOfHour(0).withSecondOfMinute(0).toDate();
        Date firstDayOfWeek = now.withDayOfWeek(1).withHourOfDay(0).withMinuteOfHour(0).withSecondOfMinute(0).toDate();
        Date today = now.toDate();
        statisticsVo.setWeekIncome(this.countIncome(firstDayOfWeek, today));
        statisticsVo.setMonthIncome(this.countIncome(firstDayOfMonth, today));

        List<OrderBo> orderBoList = orderDomain.findByYearAndSemester(year, semester);
        List<Integer> orderIds = new ArrayList<>();
        BigDecimal semesterIncome = BigDecimal.ZERO;
        BigDecimal semesterExpense = BigDecimal.ZERO;
        for (OrderBo orderBo : orderBoList) {
            orderIds.add(orderBo.getID());
        }
        List<PayRecordBo> recordBos = payRecordDomain.findByOrderIds(orderIds);
        for (PayRecordBo recordBo : recordBos) {
            if (recordBo.getRecordType() == 0) {
                semesterIncome = semesterIncome.add(recordBo.getPayAmount());
            } else if (recordBo.getRecordType() == 1) {
                semesterExpense = semesterExpense.add(recordBo.getPayAmount());
            }
        }
        statisticsVo.setSemesterIncome(semesterIncome);
        statisticsVo.setSemesterExpense(semesterExpense);
        return new ResultInfo(statisticsVo);
    }

    public BigDecimal countIncome(Date start, Date end) {
        List<OrderBo> orderBoList = orderDomain.findByDate(start, end);
        List<Integer> orderIds = new ArrayList<>();
        BigDecimal rs = BigDecimal.ZERO;
        for (OrderBo orderBo : orderBoList) {
            orderIds.add(orderBo.getID());
        }
        List<PayRecordBo> recordBos = payRecordDomain.findByOrderIds(orderIds);
        if (!CollectionUtils.isEmpty(recordBos)) {
            for (PayRecordBo recordBo : recordBos) {
                if (recordBo.getRecordType() == 0) {
                    rs = rs.add(recordBo.getPayAmount());
                }
            }
        }
        return rs;
    }


}
