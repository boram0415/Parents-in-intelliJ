package com.day.parents.parentsday.controller;

import com.day.parents.parentsday.model.MemberDTO;
import com.day.parents.parentsday.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class LoginController {

    @Autowired
    private MemberService memberService ;
    public JavaMailSender jm;


    @PostMapping(value = "/login/ajax")
    public String MemberLogin(MemberDTO dto) {
        int flag = memberService.MemberLogin(dto);
        if(flag > 0) {
            return "1111";
        }
        return "0000";
    }

    @RequestMapping(value = "kakaoLogin")
    public String test() {
        return "kakaoLogin Success!!";
    }

    @GetMapping(value = "/login/auth")
    public String loginAuth() {
        return memberService.sendEmail(jm);
    }


}
