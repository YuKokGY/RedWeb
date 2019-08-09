package service;

import model.News;

import java.util.List;

public interface NewsService {

    //保存新闻标题
    void saveInfo(News news);

    //保存新闻时间
    void savetime(News news);

    //保存新闻的跳转链接
    void saveurl(News news);

    //查找新闻详情
    List<News> findnewsinfo();
}
