package com.qf.controller;

import com.qf.pojo.Oc;
import com.qf.service.CityAndOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/oc")
public class CityAndOrderController {
    @Autowired
    private CityAndOrderService cityAndOrderService;
    @RequestMapping(value = "/findOc",method = RequestMethod.POST)
    @ResponseBody
    public List<Oc> findOc(){
        List<Oc> list=cityAndOrderService.listco();
        return list;
    }

}
