package com.yao.service.impl;

import com.yao.dao.UserDao;
import com.yao.service.UserInfoService;
import com.yao.vo.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Autowired
    UserDao dao;
    @Override
    public List<UserInfo> queryAllUser() {
        return dao.queryAllUser();
    }
}
