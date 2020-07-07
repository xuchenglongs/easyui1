package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.Menu;
import pojo.Users;
import service.UsersService;
import service.MenuService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UsersController {
    @Resource
    private UsersService usersServiceImpl;
    @ResponseBody
    @RequestMapping("login")
    public String login(Users users, HttpSession session){
        Users user = usersServiceImpl.selByUser(users);
        if (user!=null){
            session.setAttribute("user",user);
            return "1";
        }else {
            return "0";
        }
    }

}
