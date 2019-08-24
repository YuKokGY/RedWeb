package service;

import model.News;

import java.util.List;

public interface NewsService {

    //保存新闻标题
    void saveInfo(News news);

    void saveInfo2(News news);

    void saveInfo3(News news);

    void saveInfo4(News news);

    //保存新闻时间
    void savetime(News news);

    void savetime2(News news);

    void savetime3(News news);

    void savetime4(News news);

    //保存新闻的跳转链接
    void saveurl(News news);

    void saveurl2(News news);

    void saveurl3(News news);

    void saveurl4(News news);

    //查找新闻详情
    List<News> findnewsinfo();

    List<News> findnewsinfo2();

    List<News> findnewsinfo3();

    List<News> findnewsinfo4();
}
