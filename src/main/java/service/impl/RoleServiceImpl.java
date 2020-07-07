package service.impl;

import mapper.RoleMapper;
import org.springframework.stereotype.Service;
import pojo.EasyUIDataGrid;
import service.RoleService;

import javax.annotation.Resource;

@Service
public class RoleServiceImpl implements RoleService {
    @Resource
    private RoleMapper roleMapper;
    @Override
    public EasyUIDataGrid showRole(int pageSize, int pageNumber) {
        EasyUIDataGrid dataGrid = new EasyUIDataGrid();
        dataGrid.setRows(roleMapper.selByPage(pageSize*(pageNumber-1),pageSize));
        dataGrid.setTotal(roleMapper.selCount());
        return dataGrid;
    }
}
