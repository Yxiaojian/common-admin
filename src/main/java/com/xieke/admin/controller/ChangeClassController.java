package com.xieke.admin.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/changeclass")
@RequiresPermissions("changeclass:list")
public class ChangeClassController {

    @RequestMapping("/*")
    public void toHtml(){

    }
}
