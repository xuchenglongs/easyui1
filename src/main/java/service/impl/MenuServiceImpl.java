package service.impl;

import mapper.MenuMapper;
import org.springframework.stereotype.Service;
import pojo.Menu;
import service.MenuService;

import javax.annotation.Resource;
import java.util.List;
import java.util.jar.Attributes;

@Service
public class MenuServiceImpl implements MenuService {
    @Resource
    private MenuMapper menuMapper;
    @Override
    public List<Menu> selAll() {
        List<Menu> menus = menuMapper.selAll();
        for (Menu menu:menus) {
            List<Menu> listChildren = menuMapper.selByPid(menu.getId());
            for (Menu child:listChildren) {
                Attributes attributes = new Attributes();
                attributes.putValue("filename",child.getFilename());
                child.setAttributes(attributes);
            }
            menu.setChildren(listChildren);
        }
        return menus;
    }
}
