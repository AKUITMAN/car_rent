package com.qf.dao;

import com.qf.pojo.OrderAndCarAndCity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderAndCarAndCityMapper {
    List<OrderAndCarAndCity> findAll(@Param("uid") int uid);
     List<OrderAndCarAndCity> findAllAdmin();
}
