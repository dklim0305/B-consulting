package com.oke.app.login;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginVo {
    private String userId;      // 사용자ID
    private String userPw;      // 비밀번호
    private String userNm;      // 사용자명
    private String email;       // 이메일
    private String phone;       // 전화번호
    private String delYn;       // 삭제여부
    private String regDt;       // 등록일시
    private String updDt;       // 수정일시
}
