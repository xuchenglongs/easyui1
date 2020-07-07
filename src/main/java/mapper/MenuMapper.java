package mapper;

import org.apache.ibatis.annotations.Select;
import pojo.Menu;

import java.util.List;

public interface MenuMapper {
    @Select("select * from menu where pid=0")
    List<Menu> selAll();
    @Select("select * from menu where pid=#{0}")
    List<Menu> selByPid(int pid);
}
