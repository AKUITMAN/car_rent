package com.qf.service.impl;

import com.qf.dao.CityAndOrderMapper;
import com.qf.pojo.Oc;
import com.qf.service.CityAndOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CityAndOrderServiceImpl implements CityAndOrderService {
    @Autowired
    private CityAndOrderMapper cityAndOrderMapper;
    @Override
    public List<Oc> listco() {
        return cityAndOrderMapper.listCo();
    }
}
