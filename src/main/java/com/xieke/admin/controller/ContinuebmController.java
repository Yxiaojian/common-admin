package com.xieke.admin.controller;


import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/continuebm")
@RequiresPermissions("continuebm:list")
public class ContinuebmController {

    @RequestMapping("/*")
    public void toHtml(){

    }

}
