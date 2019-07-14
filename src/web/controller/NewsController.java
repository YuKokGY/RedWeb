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
@RequestMapping("/pic")
public class NewsController {

    @Autowired
    MovieService movieService;

    //跳转到新闻页面
    @RequestMapping("/toPic")
    public String toPic(){
        return "pic/pic";
    }

    //获取图片
    @RequestMapping("/getPic")
    public String getPic(Pic pic, Model model){
        List<Pic> pics=movieService.findpic();
        model.addAttribute("pics",pics);
        return "forward:/pic/toPic.do";
    }
}
