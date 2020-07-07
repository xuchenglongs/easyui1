package mapper;

import org.apache.ibatis.annotations.Select;
import pojo.Users;

public interface UsersMapper {
    @Select("select * from users where username=#{username} and password=#{password}")
   Users selByUser(Users users);
}