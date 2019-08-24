package service.impl;

import mapper.NewsMapper;
import mapper.NewsUrlMapper;
import model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.NewsService;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    NewsMapper newsMapper;
    @Autowired
    NewsUrlMapper newsUrlMapper;

    @Override
    public void saveInfo(News news) {
        newsMapper.addnewstitle(news);
    }

    @Override
    public void saveInfo2(News news) {
        newsMapper.addnewstitle2(news);
    }

    @Override
    public void saveInfo3(News news) {
        newsMapper.addnewstitle3(news);
    }

    @Override
    public void saveInfo4(News news) {
        newsMapper.addnewstitle4(news);
    }

    @Override
    public void savetime(News news) {
        newsMapper.addnewstime(news);
    }

    @Override
    public void savetime2(News news) {
        newsMapper.addnewstime2(news);
    }

    @Override
    public void savetime3(News news) {
        newsMapper.addnewstime3(news);
    }

    @Override
    public void savetime4(News news) {
        newsMapper.addnewstime4(news);
    }

    @Override
    public void saveurl(News news) {
        newsUrlMapper.addnewsurl(news);
    }

    @Override
    public void saveurl2(News news) {
        newsUrlMapper.addnewsurl2(news);
    }

    @Override
    public void saveurl3(News news) {
        newsUrlMapper.addnewsurl3(news);
    }

    @Override
    public void saveurl4(News news) {
        newsUrlMapper.addnewsurl4(news);
    }

    @Override
    public List<News> findnewsinfo() {
        return newsMapper.findnewsinfo();
    }

    @Override
    public List<News> findnewsinfo2() {
        return newsMapper.findnewsinfo2();
    }

    @Override
    public List<News> findnewsinfo3() {
        return newsMapper.findnewsinfo3();
    }

    @Override
    public List<News> findnewsinfo4() {
        return newsMapper.findnewsinfo4();
    }


}
