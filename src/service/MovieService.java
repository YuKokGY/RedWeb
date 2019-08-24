package service;

import model.Movie;
import model.Moviepic;
import model.Pic;

import java.util.List;

public interface MovieService {

    //保存数据
    void save(Movie movie);
    //保存图片url
    void saveurl(Moviepic moviepic);

    //获取电影信息
    List<Movie> findmovieinfo();


    //获取图片
    List<Pic> findpic();

    List<Moviepic> findmoviepic();

    //添加图片
    void saveurlpic(Pic pic);

}
