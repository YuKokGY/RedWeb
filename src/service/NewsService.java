package service;

import model.News;

public interface NewsService {

    //保存新闻标题
    void saveInfo(News news);

    //保存新闻时间
    void savetime(News news);

    //保存新闻的跳转链接
    void saveurl(News news);
}
