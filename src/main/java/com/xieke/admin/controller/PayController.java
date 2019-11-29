package com.xieke.admin.controller;

import com.xieke.admin.bo.OrderBo;
import com.xieke.admin.bo.PayRecordBo;
import com.xieke.admin.domain.OrderDomain;
import com.xieke.admin.domain.PayRecordDomain;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.model.Order;
import com.xieke.admin.web.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;

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
        PayRecordBo payRecordBo = new PayRecordBo(orderId, payType, new BigDecimal(payAmount), toller, new Date(), "",0);
        boolean a = payRecordDomain.create(payRecordBo);
        if (a){
            return new ResultInfo(true);
        }else {
            return new ResultInfo("支付失败");
        }
    }

}
