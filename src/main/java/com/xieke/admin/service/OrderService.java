package com.xieke.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xieke.admin.model.Order;
import com.xieke.admin.mapper.OrderMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/09/07
 */
@Service
public class OrderService {

    @Resource
    private OrderMapper orderMapper;

    /**
     * 添加
     *
     * @param order
     * @return
     */
    public boolean insert(Order order) {
        return orderMapper.insert(order) > 0;
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    public boolean delete(Integer id) {
        return orderMapper.deleteById(id) > 0;
    }

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    public Order get(Integer id) {
        return orderMapper.selectById(id);
    }

    /**
     * 查询全部数据
     *
     * @return
     */
    public List<Order> findAll() {
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        return orderMapper.selectList(wrapper);
    }

    public Boolean updatePaidAmount(Integer orderId, BigDecimal paidAmount) {
        if (orderId == null) {
            return false;
        }
        if (paidAmount == null) {
            return false;
        }
        Order order = this.get(orderId);
        order.setPaidAmount(paidAmount);
        return orderMapper.updateById(order) > 0;
    }


}
