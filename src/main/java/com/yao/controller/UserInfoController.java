package com.yao.controller;

import com.yao.service.UserInfoService;
import com.yao.vo.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class UserInfoController {
    @Autowired
    UserInfoService service;

    @RequestMapping("/queryUser.action")
    @ResponseBody
    public List<UserInfo> queryUser(){
     return service.queryAllUser();
    };
}
