package com.qf.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/*
*自定义拦截器
 */
public class MyInterceptor implements HandlerInterceptor {
    //在controller调用之前来执行
    @Override
    public boolean  preHandle(HttpServletRequest req, HttpServletResponse resp,Object handler) throws ServletException, IOException {
        HttpSession session=req.getSession();
        Object name=session.getAttribute("tel");
        if (name!=null){
            return true;
        }
        req.getRequestDispatcher("/login.jsp").forward(req,resp);
        return false;
    }
    //在controller执行后执行

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }
    //在页面渲染后进行执行
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
