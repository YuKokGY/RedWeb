package mapper;

import model.News;

import java.util.List;

public interface NewsMapper {

    void addnewstitle(News news);

    void addnewstitle2(News news);

    void addnewstitle3(News news);

    void addnewstitle4(News news);

    void addnewstime(News news);

    void addnewstime2(News news);

    void addnewstime3(News news);

    void addnewstime4(News news);


    List<News> findnewsinfo();

    List<News> findnewsinfo2();

    List<News> findnewsinfo3();

    List<News> findnewsinfo4();
}
