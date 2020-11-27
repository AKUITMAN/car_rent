package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.qf.common.BaseResp;
import com.qf.pojo.Car;
import com.qf.pojo.User;
import com.qf.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/car")
public class CarController {
    @Autowired
    CarService carService;

    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    @ResponseBody
    public List<Car> findAll(Model model ){
        List<Car> all = carService.findAll();
        model.addAttribute("carList",all);
        return all;
    }

    @RequestMapping(value = "/findNumber")
    @ResponseBody
    public List findNumber(){

        List<Car> number = carService.findNumber();

        return number;
    }

    @RequestMapping(value = "findById")
    @ResponseBody
    public Car findById(@RequestParam("cid") Integer id){

        Car byId = carService.findById(id);

        return byId;
    }
    /*
    管理员后台操作
    ****************************************************************************
     */
    //查询所有
    @RequestMapping(value = "/findAllCar",method = RequestMethod.GET)
    @ResponseBody
    public BaseResp findAllCar(int page,int limit){
        List<Car> list=carService.findAllCar(page,limit);
        //System.out.println(list);
        BaseResp baseResp = new BaseResp();
        PageInfo pageInfo = new PageInfo(list);
        baseResp.setCode(0);
        baseResp.setData(list);
        baseResp.setCount(pageInfo.getTotal());
        return baseResp;
    }
    @RequestMapping(value = "/findCarName",method = RequestMethod.GET)
    @ResponseBody
    public List<Car> findCarName(){
        List<Car> list=carService.findCarName();
        //System.out.println(list);
        return list;
    }
    //删除方法
    @RequestMapping(value = "/delById",method = RequestMethod.GET)
    @ResponseBody
    public int delById(@RequestParam("id")int id){
        int res=carService.delById(id);
         if (res==1) {
             return res;
         }
         return 0;
    }
    //修改方法
    @RequestMapping(value = "/updateCar",method = RequestMethod.POST)
    public String updateCar(Car car){
        int res=carService.updateCar(car);
        if (res==1){
            return "carlist";
        }
        return "err";
    }
    @RequestMapping(value = "newCar",method = RequestMethod.POST)
    public String newCar(Car car, MultipartFile file){
        carService.newCar(car,file);
        return "carlist";
    }
}
