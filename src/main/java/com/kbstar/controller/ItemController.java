package com.kbstar.controller;

import com.github.pagehelper.PageInfo;
import com.kbstar.dto.Item;
import com.kbstar.dto.ItemSearch;
import com.kbstar.service.ItemService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/item")
public class ItemController {
    @Autowired
    ItemService itemService;
    String dir = "item/";

    @Value("${uploadimgdir}")
    String imgdir;

    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("center", dir + "add");
        return "index";
    }

    @RequestMapping("/addimpl")
    public String addimpl(Model model, Item item, boolean size_s, boolean size_m, boolean size_l) throws Exception {
        MultipartFile mf = item.getImg();
        String imgname = mf.getOriginalFilename();
        item.setImgname(imgname);
        item.setSize_s(size_s ? "1" : "0");
        item.setSize_m(size_m ? "1" : "0");
        item.setSize_l(size_l ? "1" : "0");
        itemService.register(item);
        FileUploadUtil.saveFile(mf, imgdir);
        return "redirect:/item/all";
    }

    @RequestMapping("/deleteimpl")
    public String deleteimpl(Model model, int id) throws Exception {
        itemService.remove(id);
        return "redirect:/item/all";
    }

    @RequestMapping("/updateimpl")
    public String updateimpl(Model model, Item item) throws Exception {
        MultipartFile mf = item.getImg();
        String new_imgname = mf.getOriginalFilename();
        if (new_imgname.equals("") || new_imgname == null) {
            itemService.modify(item);
        } else {
            item.setImgname(new_imgname);
            itemService.modify(item);
            FileUploadUtil.saveFile(mf, imgdir);
        }

        return "redirect:/item/detail?id=" + item.getId();
    }

    @RequestMapping("/shop")
    public String all(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Item> p;
        List<Item> clist;
        try {
            p = new PageInfo<>(itemService.getPage(pageNo), 5);
            clist = p.getList();// 5:하단 네비게이션 개수
        } catch (Exception e) {
            throw new Exception("시스템 장애 : ER0002");
        }
        model.addAttribute("target", "item");
        model.addAttribute("clist", clist);
        model.addAttribute("cpage", p);
        model.addAttribute("center", dir + "shop");
        return "index";
    }

    @RequestMapping("/detail")
    public String get(Model model, Integer id) throws Exception {
        Item item = null;
        item = itemService.get(id);
        model.addAttribute("gitem", item);
        model.addAttribute("center", dir + "detail");
        return "index";
    }

    @RequestMapping("/search")
    public String search(Model model, ItemSearch csearch) throws Exception {
        List<Item> list = null;
        list = itemService.search(csearch);
        model.addAttribute("csearch", csearch);
        model.addAttribute("clist", list);
        model.addAttribute("center", dir + "shop");
        return "index";
    }

    @RequestMapping("/searchcategory")
    public String searchcategory(Model model, ItemSearch csearch) throws Exception {
        List<Item> list = null;
        log.info(csearch.toString());
        list = itemService.searchcategory(csearch);
        model.addAttribute("csearch", csearch);
        model.addAttribute("clist", list);
        model.addAttribute("center", dir + "shop");
        return "index";
    }

}