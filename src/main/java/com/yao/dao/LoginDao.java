package com.yao.dao;

import com.yao.vo.Loginuser;
import org.apache.ibatis.annotations.Param;

public interface LoginDao {

    public Loginuser login(@Param("user") String user,@Param("pass") String pass);

}
