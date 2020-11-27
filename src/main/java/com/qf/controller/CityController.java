package com.qf.controller;

import com.qf.common.BaseResp;
import com.qf.pojo.City;
import com.qf.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/city")
public class CityController {
    @Autowired
    CityService cityService;
    @ResponseBody
    public List<City> findAll(Model model){

        List<City> all = cityService.findAll();
        model.addAttribute("cityList",all);
        return all ;
    }

    @RequestMapping(value = "/findByPId",method = RequestMethod.POST)
    @ResponseBody
    public List findByPid(@RequestParam("pid") Integer pid){
        List<City> byIdAndPid = cityService.findByIdAndPid(pid);
        return byIdAndPid;
    }

    @RequestMapping(value = "/findById",method = RequestMethod.GET)
    @ResponseBody
    public List findById(Integer getid,Integer backid){

        BaseResp baseResp = new BaseResp();
        List byId = cityService.findById(getid,backid);
        return byId;

    }
}
