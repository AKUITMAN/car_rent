package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.qf.dao.UserMapper;
import com.qf.pojo.User;
import com.qf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User login(String tel,String password) {

        return userMapper.login(tel,password);
    }

    @Override
    public Integer register(User user) {
        return userMapper.register(user);
    }

    @Override
    public User adminlogin(String tel, String password) {
        return userMapper.adminlogin(tel,password);
    }

    @Override
    public List<User> findAllUser(Integer page,Integer limit)
    {
        PageHelper.startPage(page,limit);
        return userMapper.findAllUser();
    }

    @Override
    public int delById(int id) {
        return userMapper.delById(id);
    }

    @Override
    public Integer newuser(User user) {
        return userMapper.newuser(user);
    }

    @Override
    public User findById(int id) {
        return userMapper.findById(id);
    }

    @Override
    public int updateuser(User user) {
        return userMapper.updateuser(user);
    }

    @Override
    public int beformUpdateUser(User user) {
        return userMapper.update(user);
    }

}
