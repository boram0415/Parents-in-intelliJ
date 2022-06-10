package com.day.parents.parentsday.controller;

import com.day.parents.parentsday.model.MemberDTO;
import com.day.parents.parentsday.service.MemberService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@RestController
public class LoginController {

    @Autowired
    private MemberService memberService ;
    public JavaMailSender jm;


    @PostMapping(value = "/login/ajax")
    public String MemberLogin(MemberDTO dto , HttpServletRequest req) {
        return memberService.MemberLogin(dto,req);
    }

    @RequestMapping(value = "kakaoLogin")
    public String test() {
        return "kakaoLogin Success!!";
    }

    @GetMapping(value = "/login/auth")
    public String loginAuth() {
        return memberService.sendEmail(jm);
    }

    @GetMapping(value = "/error")
    public String errorPage(){
        return "/error/errorPage";
    }

}
