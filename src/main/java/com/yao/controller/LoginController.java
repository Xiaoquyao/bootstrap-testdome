package com.yao.controller;


import com.yao.service.LoginService;
import com.yao.vo.Loginuser;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

    @Autowired
    LoginService service;

    @RequestMapping(value = "/login.action",produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String login(String user,String pass){
       Loginuser loginuser = service.login(user,pass);
        String str = "";
        if (loginuser!=null){
            str = "登录成功";
        }else {
            str = "登录失败";
        }
        return str;
    }
}
