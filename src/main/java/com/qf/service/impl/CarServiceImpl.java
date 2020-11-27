package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.qf.dao.CarMapper;
import com.qf.pojo.Car;
import com.qf.service.CarService;
import com.qf.utils.UploadUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public class CarServiceImpl implements CarService {
    @Autowired
    CarMapper carMapper;

    @Override
    public List<Car> findAll() {
        return carMapper.findAll();
    }

    @Override
    public List<Car> findNumber() {
        return carMapper.findNumber();
    }

    @Override
    public Car findById(Integer id) {
        return carMapper.findById(id);
    }

    @Override
    public List<Car> findAllCar(Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        return carMapper.findAllCar();
    }

    @Override
    public int delById(int id) {
        return carMapper.delById(id);
    }

    @Override
    public int updateCar(Car car) {
        return carMapper.updateCar(car);
    }

    @Override
    public Integer newCar(Car car, MultipartFile file) {
        UploadUtils uploadUtils=new UploadUtils();
        String pic="";
        try {
            pic=uploadUtils.upload(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        car.setPicture(pic);
        try {
            carMapper.newCar(car);
        }catch (Exception e){
            return 0;
        }

        return 1;
    }

    @Override
    public List<Car> findCarName() {
        return carMapper.findAllCar();
    }
}
