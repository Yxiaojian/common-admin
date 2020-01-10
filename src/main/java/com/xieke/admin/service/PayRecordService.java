package com.xieke.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xieke.admin.model.PayRecord;
import com.xieke.admin.mapper.PayRecordMapper;
import com.xieke.admin.model.Student;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/09/07
 */
@Service
public class PayRecordService {

    @Resource
    private PayRecordMapper payRecordMapper;

    /**
     * 添加
     *
     * @param payRecord
     * @return
     */
    public boolean insert(PayRecord payRecord) {
        return payRecordMapper.insert(payRecord) > 0;
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    public boolean delete(Integer id) {
        return payRecordMapper.deleteById(id) > 0;
    }

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    public PayRecord get(Integer id) {
        return payRecordMapper.selectById(id);
    }

    /**
     * 查询全部数据
     *
     * @return
     */
    public List<PayRecord> findAll() {
        QueryWrapper<PayRecord> wrapper = new QueryWrapper<>();
        return payRecordMapper.selectList(wrapper);
    }

    public List<PayRecord> findByOrderId(Integer orderId) {
        QueryWrapper<PayRecord> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<PayRecord> lambdaQueryWrapper = wrapper.lambda();
        if (orderId != null) {
            lambdaQueryWrapper.eq(PayRecord::getOrderID, orderId);
        } else {
            return null;
        }
        return payRecordMapper.selectList(lambdaQueryWrapper);
    }

    public List<PayRecord> findByOrderIds(List<Integer> orderIds) {
        QueryWrapper<PayRecord> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<PayRecord> lambdaQueryWrapper = wrapper.lambda();
        if (!CollectionUtils.isEmpty(orderIds)) {
            lambdaQueryWrapper.in(PayRecord::getOrderID, orderIds);
        }
        lambdaQueryWrapper.orderByAsc(PayRecord::getOrderNo);
        lambdaQueryWrapper.orderByDesc(PayRecord::getCreateTime);
        return payRecordMapper.selectList(lambdaQueryWrapper);
    }


    public IPage<PayRecord> findPageByOrderId(Integer pageIndex, Integer pageSize, Integer orderId) {
        Page<PayRecord> objectPage = new Page<>(pageIndex, pageSize);
        QueryWrapper<PayRecord> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<PayRecord> lambdaQueryWrapper = wrapper.lambda();
        if (orderId != null) {
            lambdaQueryWrapper.eq(PayRecord::getOrderID, orderId);
        } else {
            return null;
        }
        return payRecordMapper.selectPage(objectPage, lambdaQueryWrapper);
    }

    public IPage<PayRecord> findPageByOrderIds(Integer pageIndex, Integer pageSize, List<Integer> orderIds) {
        Page<PayRecord> objectPage = new Page<>(pageIndex, pageSize);
        QueryWrapper<PayRecord> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<PayRecord> lambdaQueryWrapper = wrapper.lambda();
        if (!CollectionUtils.isEmpty(orderIds)) {
            lambdaQueryWrapper.in(PayRecord::getOrderID, orderIds);
        }
        lambdaQueryWrapper.orderByAsc(PayRecord::getOrderNo);
        lambdaQueryWrapper.orderByDesc(PayRecord::getCreateTime);
        return payRecordMapper.selectPage(objectPage, lambdaQueryWrapper);
    }
}
