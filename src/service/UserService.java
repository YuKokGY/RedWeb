package service;

import model.User;

import java.util.List;

public interface UserService {

    //保存用户数据
    public int save(User user);

    //查找用户名
    public List<User> findByname(User user);

    public List<User> findByusername(User user);
}
