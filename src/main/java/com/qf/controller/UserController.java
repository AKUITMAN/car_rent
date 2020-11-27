package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.qf.common.BaseResp;
import com.qf.pojo.User;
import com.qf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/user")
@SessionAttributes({"tel"})
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping(value= "/login",method = RequestMethod.POST)
    @ResponseBody
    public String login(@RequestParam("tel")String tel, @RequestParam("password")String password, Model model){
        User user=userService.login(tel,password);
        if (user!=null){
            model.addAttribute("tel",user);
            //model.addAttribute("name",user.getId());
            return "{\"code\":1}";
        }
            return  "{\"code\":0}";

    }
    @RequestMapping(value = "register",method = RequestMethod.POST)
    @ResponseBody
    public String register(@RequestParam("tel")String tel,@RequestParam("password")String password,@RequestParam("email")String email,@RequestParam("invitation")String invitation){
        User user=new User(null,tel,password,email,invitation);
        int res=userService.register(user);
        if (res==1){
            return "{\"code\":1}";
        }
        return "{\"code\":0}";
    }
    @RequestMapping(value = "adminlogin",method = RequestMethod.POST)
    public String adminlogin(@RequestParam("username")String tel, @RequestParam("password")String password, HttpServletRequest req){
        User user=userService.adminlogin(tel,password);
        if (user!=null){
            //model.addAttribute("tel",user.getTel());
            req.getSession().setAttribute("adminTel",user.getTel());
            return "admin";

        }
        return "err";
    }
    @RequestMapping(value = "findAllUser",method = RequestMethod.GET)
    @ResponseBody
    public BaseResp findAllUser(Integer page,Integer limit){
        List<User> list=userService.findAllUser(page, limit);
        BaseResp baseResp = new BaseResp();
        PageInfo pageInfo = new PageInfo(list);

        baseResp.setCode(0);
        baseResp.setData(list);
        baseResp.setCount(pageInfo.getTotal());
        return baseResp;
    }
    @RequestMapping(value = "logout",method = RequestMethod.GET)
    public String logout(HttpServletRequest req){
        HttpSession session=req.getSession();
        session.invalidate();
        return "index";
    }
    @RequestMapping(value = "delById")
    @ResponseBody
    public int delById(@RequestParam("id")int id){
       int res= userService.delById(id);
        System.out.println(id+"===="+res);
       return res;
    }
    @RequestMapping(value = "newuser",method = RequestMethod.POST)
    public String newuser(@RequestParam("tel")String tel,@RequestParam("password")String password,@RequestParam("email")String email,@RequestParam("invitation")String invitation,@RequestParam("apply")int aly){
        System.out.println(aly);
        User user=new User(null,tel,password,email,invitation,aly);
        int res=userService.newuser(user);
        if (res==1){
            return "userlist";
        }
        return "err";
    }
    @RequestMapping(value = "findById",method = RequestMethod.POST)
    public String findById(@RequestParam("id")int id,Model model){
        User user=userService.findById(id);
         model.addAttribute("user",user);
        return "updateuser";
    }
    @RequestMapping(value = "updateuser",method = RequestMethod.POST)
    public String updateuser(User user){
       // System.out.println(user);
        int res=userService.updateuser(user);
        if (res==1){
        return "userlist";
        }
        return "err";
    }
    @RequestMapping(value = "/updateTel", method = RequestMethod.POST)
    @ResponseBody
    public BaseResp updateTel(User user,HttpServletRequest request) {
        HttpSession session1 = request.getSession();
        User tel = (User) session1.getAttribute("tel");
        user.setId(tel.getId());
        user.setInvitation(tel.getInvitation());
        int i = userService.beformUpdateUser(user);
        System.out.println(user);

        BaseResp baseResp = new BaseResp();
        if (i==1){
            baseResp.setCode(1);
            session1.setAttribute("tel",user);
        }else{
            baseResp.setCode(0);
        }
        return baseResp;
    }

}
