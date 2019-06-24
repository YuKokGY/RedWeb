package web.controller;

import model.Movie;
import model.Moviepic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.MovieService;
import service.util.Getmovie;

import java.util.List;

@Controller
@RequestMapping("/movie")
public class MovieController {

    @Autowired
    private Getmovie getmovie;
    @Autowired
    private MovieService movieService;

    //跳转到爬取电影页面
    @RequestMapping("/toMovie")
    public String toMovie(){
        return "movie/movie";
    }

    //将电影数据储存到数据库
    @RequestMapping("/getMovie")
    public String getMovie(){
        getmovie.getnowplaying();
        return "forward:/movie/showMovie.do";
    }

    //在数据库中拿图片
    @RequestMapping("/showMovie")
    public String showMovie(Model model){
        List<Moviepic> moviepics=movieService.findmoviepic();
        List<Movie> movies=movieService.findmovieinfo();
        model.addAttribute("movies",movies);
        model.addAttribute("moviepics",moviepics);
        return "forward:/movie/toMovie.do";
    }


}