package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.qf.dao.OrderMapper;
import com.qf.pojo.Order;
import com.qf.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;
    @Override
    public int deleteById(int id) {
        return orderMapper.deleteById(id);
    }
    @Override
    public int insert(Order order) {
        return orderMapper.insert(order);
    }
    @Override
    public List<Order> findAll(Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        return orderMapper.findAll();
    }

    @Override
    public int delById(int id) {
        return orderMapper.delById(id);
    }

    @Override
    public int updateOrder(Order order) {
        return orderMapper.updateOrder(order);
    }

    @Override
    public int addOrder(Order order) {
        return orderMapper.addOrder(order);
    }

    @Override
    public List<Order> findAllNew() {
        return orderMapper.findAll();
    }
}
