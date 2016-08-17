package com.yongheng.tms.controller.baseinfo;

import com.yongheng.tms.entity.Factory;
import com.yongheng.tms.service.FactoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/basicinfo/factory/")
public class FactoryController {

    @Resource
    FactoryService factoryService;


    @RequestMapping("list")
    public String list(Model model) {
        List<Factory> factoryList = factoryService.find(null);
        model.addAttribute("factoryList", factoryList);
        return "factoryList";
    }


    @RequestMapping("add")
    public String addFactoryInfo() {

        return "factoryAdd";
    }

    @RequestMapping("update")
    public String updateFactory(Model model, String id) {
        Factory factory = factoryService.get(id);
        model.addAttribute("factory", factory);

        return "factoryUpdate";
    }

    @RequestMapping("remove")
    public String remove(String factoryIdData) {
        String[] ids = factoryIdData.split(",");

        for (String id : ids) {
            Factory factory = new Factory();
            factory.setId(id);
            factoryService.delete(factory);
        }
        return "success";

    }

    @RequestMapping("addFactory")
    public String addFactory(Factory factory) {
        factoryService.insert(factory);
        return "success";
    }

    @RequestMapping("updateFactory")
    public String updateFactory(Factory factory) {
        factoryService.update(factory);
        return "success";
    }


}