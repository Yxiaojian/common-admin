package com.xieke.admin.domain;

import com.xieke.admin.bo.OrderBo;
import com.xieke.admin.model.Order;
import com.xieke.admin.service.OrderService;
import com.xieke.admin.util.BeanUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author zhangyang
 * @date 2019/09/07
 */
@Service("orderDomain")
public class OrderNativeDomain implements OrderDomain {

    @Resource
    private OrderService orderService;

    @Override
    public Integer insert(OrderBo orderBo) {
        Order order = BeanUtil.convert(orderBo, Order.class);
        orderService.insert(order);
        return order.getID();
    }

    @Override
    public boolean delete(Integer id) {
        return orderService.delete(id);
    }

    @Override
    public OrderBo get(Integer id) {
        return BeanUtil.convert(orderService.get(id), OrderBo.class);
    }

    @Override
    public List<OrderBo> findAll() {
        return BeanUtil.convertList(orderService.findAll(), OrderBo.class);
    }

}
