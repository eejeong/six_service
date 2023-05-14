package com.kbstar.controller;

import com.kbstar.dto.Contact;
import com.kbstar.service.ContactService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@Slf4j
public class MainController {

    @Value("${adminserver}")
    String serviceserver;

    @Autowired
    ContactService contactService;

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
    }
    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center", "login");
        return "index";
    }
    @RequestMapping("/contactimpl")
    public String contactimpl(Model model, Contact contact) throws Exception {
        try {
            contactService.register(contact);
            log.info(contact.toString());
        }catch (Exception e){
            e.printStackTrace();
            throw new Exception("실패");
        }
        model.addAttribute("center", "center");
        return "index";
    }
}
