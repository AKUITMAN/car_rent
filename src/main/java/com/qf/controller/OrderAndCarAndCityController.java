package com.qf.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.common.BaseResp;
import com.qf.pojo.Order;
import com.qf.pojo.OrderAndCarAndCity;
import com.qf.pojo.User;
import com.qf.service.OrderAndCarAndCityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
@RequestMapping("/occ")
public class OrderAndCarAndCityController {
    @Autowired
    OrderAndCarAndCityService orderAndCarAndCityService;

    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    public BaseResp findAll(int page, HttpSession session){
        User tel = (User)session.getAttribute("tel");
        PageHelper.startPage(page,5);
        List<OrderAndCarAndCity> all = orderAndCarAndCityService.findAll(page, tel.getId());
        PageInfo<Order> orderPageInfo = new PageInfo(all);
        BaseResp baseResp = new BaseResp();
        baseResp.setData(all);
        baseResp.setCode(1);
        baseResp.setCount(orderPageInfo.getTotal());
        return baseResp;
    }
    /*
    后台管理订单
     */
    @RequestMapping(value = "/findAllAdmin",method = RequestMethod.GET)
    public BaseResp findAllAdmin(Integer page, Integer limit){
        List<OrderAndCarAndCity> all = orderAndCarAndCityService.findAllAdmin(page,limit);
        BaseResp baseResp = new BaseResp();
        PageInfo pageInfo = new PageInfo(all);
        baseResp.setData(all);
        baseResp.setCode(0);
        baseResp.setCount(pageInfo.getTotal());
        return baseResp;
    }

}
