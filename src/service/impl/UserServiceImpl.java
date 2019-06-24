package service.impl;

import mapper.UserMapper;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.UserService;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public int save(User user) {
        return userMapper.save(user);

    }

    @Override
    public List<User> findByname(User user) {
        return userMapper.findByname(user);
    }

    @Override
    public List<User> findByusername(User user) {
        return userMapper.findByusername(user);
    }
}
