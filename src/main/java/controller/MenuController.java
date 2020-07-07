package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.Menu;
import service.MenuService;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class MenuController {
    @Resource
    private MenuService menuServiceImpl;
    @ResponseBody
    @RequestMapping("showMenu")
    public List<Menu> showMenu(){
        return menuServiceImpl.selAll();
    }
}
