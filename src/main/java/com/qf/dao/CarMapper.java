package com.qf.dao;

import com.qf.pojo.Car;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CarMapper {
    List<Car> findAll();

    List<Car> findNumber();

    Car findById(@Param("id")Integer id);
    List<Car> findAllCar();
    int delById(@Param("id")int id);
    int updateCar(Car car);
    Integer newCar(Car car);
}
