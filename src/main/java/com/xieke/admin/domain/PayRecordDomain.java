package com.xieke.admin.domain;

import com.xieke.admin.bo.PayRecordBo;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/09/07
 */
public interface PayRecordDomain {

    /**
     * 添加
     *
     * @param payRecordBo
     * @return
     */
    boolean insert(PayRecordBo payRecordBo);

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
    PayRecordBo get(Integer id);

    /**
     * 查询全部数据
     *
     * @return
     */
    List<PayRecordBo> findAll();


    List<PayRecordBo> findByOrderId(Integer orderId);

    @Transactional(rollbackFor = Exception.class)
    Boolean create(PayRecordBo payRecordBo) throws Exception;

    List<PayRecordBo> findByOrderIds(List<Integer> orderIds);


}
