package com.yao.dao;

import com.yao.vo.UserInfo;

import java.util.List;

public interface UserDao {
    public List<UserInfo> queryAllUser();

    public int queryContUser();
}
