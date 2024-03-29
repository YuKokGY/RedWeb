package web.controller;

import model.News;
import model.Pic;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.MovieService;
import service.NewsService;
import service.UserService;
import service.util.CheckInput;
import service.util.Getmovie;
import service.util.Getnews;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserContorller {
    @Autowired
    private UserService userService;
    @Autowired
    private CheckInput checkInput;
    @Autowired
    private Getmovie getmovie;
    @Autowired
    private Getnews getnews;
    @Autowired
    private MovieService movieService;
    @Autowired
    private NewsService newsService;

    //跳转到主界面
    @RequestMapping("/toMain")
    public String toMain(Model model, Pic pic){
        List<Pic> pics=movieService.findpic();
        List<News> news = newsService.findnewsinfo();
        System.out.println("热点新闻数量" + news.size());
        model.addAttribute("pics",pics);
        model.addAttribute("news", news);
        return "user/index";
    }

    //页面加载完的时候后台爬取最新图片
    @RequestMapping("/go")
    public void go(){
//        System.out.println("我被调用了");
        getmovie.getPic();
        getmovie.getnowplaying();
        getnews.gethot_news();

    }

    //跳转到登录界面
    @RequestMapping("/toLogin")
    public String toLogin() {
        return "user/login";
    }

    //注册：将注册数据添加到数据库,如果用户名已经存在，则回到登录页面重新注册
    @RequestMapping("/register")
    public String register(User user, Model model) {
        //System.out.println(user);
        if (user.getusername() == "" || user.getPassword() == "" || user.getPasswordagain() == "") {
            return "user/nullwithup";
        } else if (checkInput.isUserExist(user) == true) {
            return "user/userexist";
        } else if (user.getPassword().equals(user.getPasswordagain()) == false) {
            return "user/passwordwrong";
        } else
            userService.save(user);
        model.addAttribute("user",user);
        return "forward:/user/toLogin.do";
    }

    @RequestMapping("/login")
    public String login(User user, RedirectAttributes redirectAttributes) {
       if (user.getusername()==""||user.getPassword()==""){
           return "user/nullwithup";
       }else if (checkInput.isUserExist(user)==false){
           return "user/notexist";
       }else if (checkInput.checkpassword(user)==false){
           return "user/passwordwrong";
       }else
          redirectAttributes.addFlashAttribute("user",user);
           return "redirect:/user/toMain.do";
    }

}
