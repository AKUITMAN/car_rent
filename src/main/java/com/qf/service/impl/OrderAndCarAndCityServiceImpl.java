package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.qf.dao.OrderAndCarAndCityMapper;
import com.qf.pojo.OrderAndCarAndCity;
import com.qf.service.OrderAndCarAndCityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrderAndCarAndCityServiceImpl implements OrderAndCarAndCityService {

    @Autowired
    OrderAndCarAndCityMapper orderAndCarAndCityMapper;

    @Override
    public List<OrderAndCarAndCity> findAll(int page, int uid) {
        List<OrderAndCarAndCity> all = orderAndCarAndCityMapper.findAll(uid);
        return all;
    }
    @Override
    public List<OrderAndCarAndCity> findAllAdmin(Integer page,Integer limit) {
        PageHelper.startPage(page,limit);
        List<OrderAndCarAndCity> allAdmin = orderAndCarAndCityMapper.findAllAdmin();
        return allAdmin;
    }

}
