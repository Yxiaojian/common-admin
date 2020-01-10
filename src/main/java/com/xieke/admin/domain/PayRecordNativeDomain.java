package com.xieke.admin.domain;

import com.xieke.admin.bo.PayRecordBo;
import com.xieke.admin.bo.StudentBo;
import com.xieke.admin.model.PayRecord;
import com.xieke.admin.model.Student;
import com.xieke.admin.page.HtPage;
import com.xieke.admin.service.PayRecordService;
import com.xieke.admin.util.BeanUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/09/07
 */
@Service("payRecordDomain")
public class PayRecordNativeDomain implements PayRecordDomain {

    @Resource
    private PayRecordService payRecordService;

    @Resource
    private OrderDomain orderDomain;

    @Override
    public boolean insert(PayRecordBo payRecordBo) {
        return payRecordService.insert(BeanUtil.convert(payRecordBo, PayRecord.class));
    }

    @Override
    public boolean delete(Integer id) {
        return payRecordService.delete(id);
    }

    @Override
    public PayRecordBo get(Integer id) {
        return BeanUtil.convert(payRecordService.get(id), PayRecordBo.class);
    }

    @Override
    public List<PayRecordBo> findAll() {
        return BeanUtil.convertList(payRecordService.findAll(), PayRecordBo.class);
    }

    @Override
    public List<PayRecordBo> findByOrderId(Integer orderId) {
        return BeanUtil.convertList(payRecordService.findByOrderId(orderId), PayRecordBo.class);
    }

    @Override
    public Boolean create(PayRecordBo payRecordBo) throws Exception {
        boolean a = this.insert(payRecordBo);
        boolean b = false;
        if (a) {
            b = orderDomain.updatePaidAmountAfterPay(payRecordBo.getOrderID());
        } else {
            throw new Exception("支付出错");
        }
        if (b) {
            return true;
        } else {
            throw new Exception("支付出错");
        }
    }

    @Override
    public HtPage<PayRecordBo> findPageByOrderId(Integer pageIndex, Integer pageSize, Integer orderId) {
        HtPage<PayRecord> htPage = new HtPage<>(payRecordService.findPageByOrderId(pageIndex, pageSize, orderId));
        return BeanUtil.convertPage(htPage, PayRecordBo.class);
    }

    @Override
    public List<PayRecordBo> findByOrderIds(List<Integer> orderIds) {
        return BeanUtil.convertList(payRecordService.findByOrderIds(orderIds), PayRecordBo.class);
    }

    @Override
    public HtPage<PayRecordBo> findPageByOrderIds(Integer pageIndex, Integer pageSize, List<Integer> orderIds) {
        HtPage<PayRecord> htPage = new HtPage<>(payRecordService.findPageByOrderIds(pageIndex, pageSize, orderIds));
        return BeanUtil.convertPage(htPage, PayRecordBo.class);
    }

}
