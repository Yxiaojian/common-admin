package com.xieke.admin.domain;

import com.xieke.admin.bo.OrderBo;

import java.math.BigDecimal;
import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/09/07
 */
public interface OrderDomain {

    /**
     * 添加
     *
     * @param orderBo
     * @return
     */
    Integer insert(OrderBo orderBo);

    /**
     * 删除
     *
     * @param id
     * @return
     */
    boolean delete(Integer id);

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    OrderBo get(Integer id);

    /**
     * 查询全部数据
     *
     * @return
     */
    List<OrderBo> findAll();

    Boolean updatePaidAmountAfterPay(Integer orderId, BigDecimal payAmount);


}
