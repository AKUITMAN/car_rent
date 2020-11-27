package com.qf.dao;

import com.qf.pojo.City;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CityMapper {
    List<City> findAll();
    List<City> findByIdAndPid(@Param("pid")Integer pid);
//    int updateCity(@Param("id")Integer id,@Param("pid")Integer pid);

    List findById(@Param("getid") Integer getid, @Param("backid") Integer backid);
}
