package com.oke.app.login.impl;

import com.oke.app.login.LoginSvc;
import com.oke.app.login.LoginVo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("loginSvc")
public class LoginImpl implements LoginSvc {

    @Resource(name = "egov.sqlSessionTemplate")
    private SqlSessionTemplate sqlSession;

    @Override
    public void insertLogin(LoginVo loginVo) throws Exception {
        sqlSession.insert("Login.insertLogin", loginVo);
    }

    @Override
    public LoginVo selectLogin(String userId) throws Exception {
        return sqlSession.selectOne("Login.selectLogin", userId);
    }

    @Override
    public List<LoginVo> selectLoginList() throws Exception {
        return sqlSession.selectList("Login.selectLoginList");
    }

    @Override
    public void updateLogin(LoginVo loginVo) throws Exception {
        sqlSession.update("Login.updateLogin", loginVo);
    }

    @Override
    public void deleteLogin(String userId) throws Exception {
        sqlSession.update("Login.deleteLogin", userId);
    }
}