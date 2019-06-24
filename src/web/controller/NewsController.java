package web.controller;

import model.Pic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import service.MovieService;

import java.util.List;

@Controller
@RequestMapping("/news")
public class NewsController {

    @Autowired
    MovieService movieService;

    //跳转到新闻页面
    @RequestMapping("/toNews")
    public String toNews(){
        return "news/news";
    }

    //获取图片
    @RequestMapping("/News")
    public String News(Pic pic, Model model){
        List<Pic> pics=movieService.findpic();
        model.addAttribute("pics",pics);
        return "forward:/news/toNews.do";
    }
}
