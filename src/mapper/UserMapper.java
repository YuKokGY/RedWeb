package mapper;

import model.User;

import java.util.List;

public interface UserMapper {

    //添加用户
    public int save(User user);

    //查询用户名
    public List<User> findByname(User user);

    //根据用户名查询密码
    public List<User> findByusername(User user);
}
