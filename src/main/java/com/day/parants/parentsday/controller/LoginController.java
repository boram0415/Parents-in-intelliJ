package com.day.parants.parentsday.controller;

import com.day.parants.parentsday.model.MemberDTO;
import com.day.parants.parentsday.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

    @Autowired
    private MemberService MemService ;
    public JavaMailSender jm;

    @RequestMapping(value = "login")
    public String laterPage() {
        return "login";
    }

    @RequestMapping(value = "test")
    public String test() {
        return "test";
    }

    @ResponseBody
    @PostMapping(value = "/login/ajax")
    public String MemberLogin(MemberDTO dto) {
        int flag = MemService.MemberLogin(dto);
        if(flag > 0) {
            return "1111";
        }
        return "0000";
    }

    @GetMapping(value = "/login/auth")
    public @ResponseBody String loginAuth() {
        return MemService.sendEmail(jm);
    }

}