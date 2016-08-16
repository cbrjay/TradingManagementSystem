package com.yongheng.tms.controller.baseinfo;

import com.yongheng.tms.entity.Factory;
import com.yongheng.tms.service.FactoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class FactoryController {

    @Resource
    FactoryService factoryService;


    @RequestMapping("/basicinfo/factory/list")
    public String list(Model model) {
        List<Factory> factoryList = factoryService.find(null);
        model.addAttribute("factoryList", factoryList);
        return "list";
    }

}
