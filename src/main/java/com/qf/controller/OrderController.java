package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.qf.common.BaseResp;
import com.qf.pojo.Order;
import com.qf.pojo.User;
import com.qf.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@RequestMapping("/order")
@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;
    @RequestMapping(value = "/insert")
    @ResponseBody
    public int insert(Order order, HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("tel");
        order.setUid(user.getId());
        order.setStatus("已预订");
        int insert = orderService.insert(order);

        return insert;

    }
    @RequestMapping(value = "findAll",method = RequestMethod.GET)
    @ResponseBody
    public BaseResp findAll(Integer page, Integer limit){
        List<Order> list=orderService.findAll(page,limit);
        BaseResp baseResp = new BaseResp();
        PageInfo pageInfo = new PageInfo(list);
        baseResp.setCode(0);
        baseResp.setData(list);
        baseResp.setCount(pageInfo.getTotal());
        return baseResp;
    }
    @RequestMapping(value = "findAllNew",method = RequestMethod.GET)
    public String findAllnew(Model model){
       List<Order> list=orderService.findAllNew();
       model.addAttribute("list",list);
       return "order";
    }
    @RequestMapping(value = "delById",method = RequestMethod.GET)
    @ResponseBody
    public int delById(@RequestParam("id")int id){
        int res=orderService.delById(id);
        System.out.println("id==="+id);
        return res;
    }
    @RequestMapping(value = "updateOrder",method = RequestMethod.POST)
    public String updateOrder(Order order){
        System.out.println(order.getId()    );
        int res=orderService.updateOrder(order);
        if (res==1){
        return "orderlist";
        }
        return "err";
    }
    @RequestMapping(value = "addOrder",method = RequestMethod.POST)
    public String addOrder(Order order){
        int res=orderService.addOrder(order);
        if (res==1){
            return "orderlist";
        }
        return "err";
    }
    @RequestMapping(value = "/deleteById",method = RequestMethod.POST)
    @ResponseBody
    public BaseResp deleteById(int id){
        BaseResp baseResp = new BaseResp();
        int i = orderService.deleteById(id);
        if (i==1){
            baseResp.setCode(1);
        }else{
            baseResp.setCode(0);
        }
        return baseResp;
    }

}
