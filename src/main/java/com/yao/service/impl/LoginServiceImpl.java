package com.yao.service.impl;

import com.yao.dao.LoginDao;
import com.yao.service.LoginService;
import com.yao.vo.Loginuser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    LoginDao dao;
    @Override
    public Loginuser login(String user,String pass) {
        return dao.login(user,pass);
    }
}
