package mapper;

import model.News;

import java.util.List;

public interface NewsMapper {

    void addnewstitle(News news);

    void addnewstime(News news);

    void addnewsurl(News news);

    List<News> findnewsinfo();
}
