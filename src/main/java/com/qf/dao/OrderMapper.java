package com.qf.dao;

import com.qf.pojo.Order;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface OrderMapper {
    List<Order> findAll();
    int delById(@Param("id")int id);
    int updateOrder(Order order);
    int addOrder(Order order);
    int insert(Order order);
    int deleteById(@Param("id")int id);
}
