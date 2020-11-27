package com.qf.service;

import com.qf.pojo.OrderAndCarAndCity;

import java.util.List;

public interface OrderAndCarAndCityService {
    List<OrderAndCarAndCity> findAll(int page,int uid);
    public List<OrderAndCarAndCity> findAllAdmin(Integer page,Integer limit);
}
