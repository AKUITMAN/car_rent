package com.qf.service;

import com.qf.pojo.Car;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface CarService {
    List<Car> findAll();

    List<Car> findNumber();

    Car findById(Integer id);

    List<Car> findAllCar(Integer page, Integer limit);

    int delById(int id);

    int updateCar(Car car);

    Integer newCar(Car car, MultipartFile file);
    List<Car> findCarName();
}
