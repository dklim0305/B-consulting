package com.oke.app.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/login")

public class LoginCtr {

    @Resource(name = "loginSvc")
    private LoginSvc loginSvc;

    @GetMapping("test/test.do")
    public String test() {
        return "test/test";
    }

    @GetMapping("/")
    public String index() {
        return "redirect:/login/list.do";
    }

    //회원 목록 화면
    @GetMapping("/list.do")
    public String loginList(Model model) throws Exception {
        List<LoginVo> list = loginSvc.selectLoginList();
        model.addAttribute("list", list);
        return "login/LoginList";
    }

    // 회원 등록 화면
    @GetMapping("/insertForm.do")
    public String insertForm() {
        return "login/LoginInsert";
    }

    // 회원 등록 처리
    @PostMapping("/insert.do")
    @ResponseBody
    public String insertLogin(@RequestBody LoginVo loginVo) throws Exception {
        loginSvc.insertLogin(loginVo);
        return "success";
    }

    // 회원 수정 화면
    @GetMapping("/updateForm.do")
    public String updateForm(@RequestParam("userId") String userId, Model model) throws Exception {
        LoginVo login = loginSvc.selectLogin(userId);
        model.addAttribute("login", login);
        return "login/LoginUpdate";
    }

    // 회원 수정 처리
    @PostMapping("/update.do")
    @ResponseBody
    public String updateLogin(@RequestBody LoginVo loginVo) throws Exception {
        loginSvc.updateLogin(loginVo);
        return "success";
    }

    // 회원 삭제 처리
    @PostMapping("/delete.do")
    @ResponseBody
    public String deleteLogin(@RequestParam("userId") String userId) throws Exception {
        loginSvc.deleteLogin(userId);
        return "success";
    }
}
