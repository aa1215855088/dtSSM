package com.guigu.datang.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author lenovo
 * 错误页面
 */
@Controller
public class Errors {

    @RequestMapping(value = "AccessErrors")
    public String accessErrors() {

        return "AccessErrors";
    }
}
