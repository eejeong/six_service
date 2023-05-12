package com.kbstar.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MainController {

    @Value("${adminserver}")
    String serviceserver;

    @RequestMapping("/")
    public String main(Model model) throws Exception {
        model.addAttribute("center", "center");
        return "index";
    }

    @RequestMapping("/cart")
    public String about(Model model) throws Exception {
        model.addAttribute("center", "cart");
        return "index";
    }

    @RequestMapping("/contact")
    public String contact(Model model) throws Exception {
        model.addAttribute("center", "contact");
        return "index";
    }

    @RequestMapping("/shop")
    public String shop(Model model) throws Exception {
        model.addAttribute("center", "shop");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model) throws Exception {
        model.addAttribute("center", "detail");
        return "index";
    }    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center", "login");
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center", "login");
        return "index";
    }

    @RequestMapping("/logout")
    public String logout(Model model, HttpSession session) {
        if (session != null) {
            session.invalidate();
        }
        return "index";
    }

}
