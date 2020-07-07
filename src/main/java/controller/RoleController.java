package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.EasyUIDataGrid;
import service.RoleService;

import javax.annotation.Resource;

@Controller
public class RoleController {
    @Resource
    private RoleService roleServiceImpl;

    @RequestMapping("page/showRole")
    @ResponseBody
    public EasyUIDataGrid showRole(@RequestParam(defaultValue = "2") int rows ,
                                   @RequestParam(defaultValue = "1") int page){
        return roleServiceImpl.showRole(rows,page);
    }
}
