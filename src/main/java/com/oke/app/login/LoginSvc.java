package com.oke.app.login;

import java.util.List;

public interface LoginSvc {

    // 회원 등록
    void insertLogin(LoginVo loginVo) throws Exception;

    // 회원 단건 조회
    LoginVo selectLogin(String userId) throws Exception;

    // 회원 목록 조회
    List<LoginVo> selectLoginList() throws Exception;

    //회원 수정
    void updateLogin(LoginVo loginVo) throws Exception;

    // 회원 삭제 (논리 삭제)
    void deleteLogin(String userId) throws Exception;
}
