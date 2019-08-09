package web.controller;

import model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.NewsService;
import service.util.Getnews;

import java.util.List;

@Controller
@RequestMapping("/news")
public class NewsController {
    @Autowired
    private Getnews getNews;
    @Autowired
    private NewsService newsService;

    //跳转到新闻页面
    @RequestMapping("/showNews")
    public String showNews(Model model) {
        return "news/news";
    }

    @RequestMapping("/getNews")
    public String getNews(Model model) {
        List<News> news = newsService.findnewsinfo();
        model.addAttribute("news", news);
        return "forward:/news/showNews.do";
    }
}
