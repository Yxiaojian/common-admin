package com.xieke.admin.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xieke.admin.enums.OrderStatus;
import com.xieke.admin.model.Order;
import com.xieke.admin.mapper.OrderMapper;
import com.xieke.admin.model.Student;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;
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

    public IPage<Order> findPage(Integer pageIndex, Integer pageSize, String studentName, String phoneOne, Integer orderStatus) {
        Page<Order> objectPage = new Page<>(pageIndex, pageSize);
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Order> wrapperLamdba = wrapper.lambda();
        if (!StringUtils.isEmpty(studentName)) {
            wrapperLamdba.like(Order::getStudentName, studentName);
        }
        if (!StringUtils.isEmpty(phoneOne)) {
            wrapperLamdba.eq(Order::getPhoneOne, phoneOne);
        }
        if (orderStatus != null) {
            wrapperLamdba.eq(Order::getOrderStatus, orderStatus);
        }
        wrapperLamdba.orderByAsc(Order::getCreateTime);
        return orderMapper.selectPage(objectPage, wrapperLamdba);
    }

    public Boolean updateStatus(Integer orderId, Integer orderStatus, String remark) {
        if (orderId == null) {
            return false;
        }
        Order order = this.get(orderId);
        if (order == null) {
            return false;
        }
        order.setOrderStatus(orderStatus);
        if (!StringUtils.isEmpty(remark)) {
            order.setRemark(remark);
        }
        return orderMapper.updateById(order) > 0;
    }

    public Order getByStudentIdAndClassId(Integer studentId, Integer classId) {
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Order> wrapperLamdba = wrapper.lambda();
        if (studentId != null) {
            wrapperLamdba.eq(Order::getStudentID, studentId);
        }
        if (classId != null) {
            wrapperLamdba.eq(Order::getClassID, classId);
        }
        wrapperLamdba.ne(Order::getOrderStatus, OrderStatus.CANCEL.getValue());
        return orderMapper.selectOne(wrapperLamdba);
    }

    /**
     * 课程已有人数
     * @param curriculumId
     * @return
     */
    public Integer getCountByCurriculumId(Integer curriculumId) {
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Order> wrapperLamdba = wrapper.lambda();
        if (curriculumId != null) {
            wrapperLamdba.eq(Order::getCurriculumID, curriculumId);
        }
        return orderMapper.selectCount(wrapperLamdba);
    }

    /**
     * 班级已有人数
     * @param classId
     * @return
     */
    public Integer getCountByClassId(Integer classId) {
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Order> wrapperLamdba = wrapper.lambda();
        if (classId != null) {
            wrapperLamdba.eq(Order::getClassID, classId);
        }
        wrapperLamdba.ne(Order::getOrderStatus,OrderStatus.CANCEL.getValue());
        return orderMapper.selectCount(wrapperLamdba);
    }

    public List<Order> findByYearAndSemester(Integer year, Integer semester) {
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Order> wrapperLamdba = wrapper.lambda();
        if (year != null) {
            wrapperLamdba.eq(Order::getYear, year);
        }
        if (semester != null) {
            wrapperLamdba.eq(Order::getSemester, semester);
        }
        return orderMapper.selectList(wrapperLamdba);
    }

    public IPage<Order> findPageByYearAndSemester(Integer pageIndex, Integer pageSize, Integer year, Integer semester) {
        Page<Order> objectPage = new Page<>(pageIndex, pageSize);
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Order> wrapperLamdba = wrapper.lambda();
        if (year != null) {
            wrapperLamdba.eq(Order::getYear, year);
        }
        if (semester != null) {
            wrapperLamdba.eq(Order::getSemester, semester);
        }
        return orderMapper.selectPage(objectPage, wrapperLamdba);
    }

    public List<Order> findByStudentId(Integer studentId) {
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Order> wrapperLamdba = wrapper.lambda();
        if (studentId != null) {
            wrapperLamdba.eq(Order::getStudentID, studentId);
        }
        wrapperLamdba.orderByDesc(Order::getCreateTime);
        return orderMapper.selectList(wrapperLamdba);
    }

    public List<Order> findByDate(Date start, Date end) {
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Order> wrapperLamdba = wrapper.lambda();
        wrapperLamdba.between(Order::getCreateTime, start, end);
        return orderMapper.selectList(wrapperLamdba);
    }

    public List<Order> findByClassId(Integer classId) {
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Order> wrapperLamdba = wrapper.lambda();
        if (classId != null) {
            wrapperLamdba.eq(Order::getClassID, classId);
        }
        return orderMapper.selectList(wrapperLamdba);
    }

    public IPage<Order> findPageByClassId(Integer pageIndex, Integer pageSize, Integer classId) {
        Page<Order> objectPage = new Page<>(pageIndex, pageSize);
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        LambdaQueryWrapper<Order> wrapperLamdba = wrapper.lambda();
        if (classId != null) {
            wrapperLamdba.eq(Order::getClassID, classId);
        }
        wrapperLamdba.ne(Order::getOrderStatus,OrderStatus.CANCEL.getValue());
        return orderMapper.selectPage(objectPage, wrapperLamdba);
    }
}
