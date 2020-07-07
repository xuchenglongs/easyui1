package mapper;

import org.apache.ibatis.annotations.Select;
import pojo.Role;

import java.util.List;

public interface RoleMapper {
    @Select("select * from role limit #{0},#{1}")
    List<Role> selByPage(int pageStart,int pageSize);
    @Select("select count(*) from role")
    int selCount();
}
