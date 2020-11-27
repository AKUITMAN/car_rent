package com.qf.service;

import com.qf.pojo.User;

import java.util.List;


public interface UserService {
    User login(String tel,String password);
    Integer register(User user);
    User adminlogin(String tel,String password);
    List<User> findAllUser(Integer page,Integer limit);
    int delById(int id);
    Integer newuser (User user);
    User findById(int id);
    int updateuser(User user);
    int beformUpdateUser(User user);
}
