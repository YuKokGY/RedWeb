package mapper;

import model.News;

import java.util.List;

public interface NewsUrlMapper {

    void addnewsurl(News news);

    void addnewsurl2(News news);

    void addnewsurl3(News news);

    void addnewsurl4(News news);

    List<News> findurl();

    List<News> findurl2();

    List<News> findurl3();

    List<News> findurl4();
}
