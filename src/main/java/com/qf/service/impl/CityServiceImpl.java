package com.qf.service.impl;

import com.qf.dao.CityMapper;
import com.qf.pojo.City;
import com.qf.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CityServiceImpl implements CityService {
    @Autowired
    private CityMapper cityMapper;
    @Override
    public List<City> findAll() {
        return cityMapper.findAll();
    }

    @Override
    public List<City> findByIdAndPid(Integer pid) {
        return cityMapper.findByIdAndPid(pid);
    }

    @Override
    public List findById(Integer getid,Integer backid) {
        return cityMapper.findById(getid,backid);
    }
}
