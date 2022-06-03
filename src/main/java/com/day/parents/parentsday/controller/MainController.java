package com.day.parents.parentsday.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping()
    public String index() {
        return "index/index";
    }

    @GetMapping("write")
    public String laterPage(){
        return "/later/write";
    }

}
