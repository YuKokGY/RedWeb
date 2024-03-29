package service.util;

import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.UserService;

import java.util.List;

@Service
public class CheckInput {

    @Autowired
    private UserService userService;

    Boolean flag=false;
    private String password;

    //注册判断
    public Boolean isUserExist(User user){
        List<User> users=userService.findByname(user);
        //用户名存在
        flag = users.size() != 0;
        return flag;
    }

    //登录判断
    public Boolean checkpassword(User user){
        List<User> users = userService.findByusername(user);
        for (User user1 : users) {
            password = user1.getPassword();
        }
//        System.out.println(user.getusername()+"---"+"username");
//        System.out.println(user.getPassword()+"---"+password);
        flag = user.getPassword().equals(password) != false;
            return flag;
    }
}
