package com.thingsmind.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by VST on 05-11-2016.
 */
@Controller
public class ThingsMindController {

    @RequestMapping("/home")
    public ModelAndView home(){
        return new ModelAndView("home");
    }

    @RequestMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("login");
    }

    @RequestMapping("/thingsmind")
    public ModelAndView thingsmind() {
        return new ModelAndView("thingsmind");
    }
}
