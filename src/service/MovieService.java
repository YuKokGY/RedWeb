package service;

import model.Movie;
import model.Moviepic;
import model.Pic;

import java.util.List;

public interface MovieService {

    //保存数据
    public void save(Movie movie);
    //保存图片url
    public void saveurl(Moviepic moviepic);

    //获取电影信息
    public List<Movie> findmovieinfo();

    //获取电影图片url
    public List<Moviepic> findmoviepic();

    //获取图片
    public List<Pic> findpic();

    //添加图片
    public void saveurlpic(Pic pic);
}
