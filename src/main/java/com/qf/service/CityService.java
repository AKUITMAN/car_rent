package com.qf.service;

import com.qf.pojo.City;

import java.util.List;

public interface CityService {
    List<City> findAll();
    List<City> findByIdAndPid(Integer pid);
//    int updateCity(Integer id,Integer pid);

    List findById(Integer getid, Integer backid);
}
