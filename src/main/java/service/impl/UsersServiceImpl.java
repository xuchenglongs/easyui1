package service.impl;

import mapper.UsersMapper;
import org.springframework.stereotype.Service;
import pojo.Users;
import service.UsersService;

import javax.annotation.Resource;

@Service
public class UsersServiceImpl implements UsersService {
    @Resource
    private UsersMapper usersMapper;
    @Override
    public Users selByUser(Users users) {
        return usersMapper.selByUser(users);
    }
}
