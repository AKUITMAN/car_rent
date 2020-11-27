package com.qf.dao;

import com.qf.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface UserMapper {
    User login(@Param("tel") String tel, @Param("password") String password);
    Integer register(User user);
    User adminlogin(@Param("tel")String tel,@Param("password")String password);
    List<User> findAllUser();
    int delById(@Param("id")int id);
    Integer newuser (User user);
    User findById(@Param("id")int id);
    int updateuser(User user);
    int update(User user);
}
