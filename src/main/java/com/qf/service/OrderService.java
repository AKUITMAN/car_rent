package com.qf.service;

import com.qf.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderService {
    List<Order> findAll(Integer page,Integer limit);
    int delById(int id);
    int updateOrder(Order order);
    int addOrder(Order order);
    List<Order> findAllNew();
    int insert(Order order);
    int deleteById(int id);
}
