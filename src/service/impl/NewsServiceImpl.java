package service.impl;

import mapper.NewsMapper;
import model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.NewsService;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    NewsMapper newsMapper;

    @Override
    public void saveInfo(News news) {
        newsMapper.addnewstitle(news);
    }

    @Override
    public void savetime(News news) {
        newsMapper.addnewstime(news);
    }

    @Override
    public void saveurl(News news) {
        newsMapper.addnewsurl(news);
    }


}
