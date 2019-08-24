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
        String num1 = null;
        String num2 = null;
        String num3 = null;
        List<News> news_guoji = newsService.findnewsinfo2();
        List<News> news_tiyu = newsService.findnewsinfo3();
        List<News> news_junshi = newsService.findnewsinfo4();
        System.out.println("国际新闻数量" + news_guoji.size());
        System.out.println("体育新闻数量" + news_tiyu.size());
        System.out.println("军事新闻数量" + news_junshi.size());
        for (News movie : news_guoji) {
            num1 = movie.getNewssize();
        }
        for (News movie : news_tiyu) {
            num2 = movie.getNewssize();
        }
        for (News movie : news_junshi) {
            num3 = movie.getNewssize();
        }
        model.addAttribute("guoji", news_guoji);
        model.addAttribute("tiyu", news_tiyu);
        model.addAttribute("junshi", news_junshi);
        model.addAttribute("num1", num1);
        model.addAttribute("num2", num2);
        model.addAttribute("num3", num3);
        return "news/news";
    }

    @RequestMapping("/getNews")
    public String getNews(Model model) {
        List<News> news = newsService.findnewsinfo();
        String num = null;
        for (News movie : news) {
            num = movie.getNewssize();
        }
        model.addAttribute("news", news);
        model.addAttribute("num", num);
        return "forward:/news/showNews.do";
    }
}
