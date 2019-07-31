package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.NewsService;
import service.util.Getnews;

@Controller
@RequestMapping("/news")
public class NewsController {
    @Autowired
    private Getnews getNews;
    @Autowired
    private NewsService newsService;

    //跳转到新闻爬取
    @RequestMapping("/get")
    public void get() {
        getNews.gethot_news();
    }
}
