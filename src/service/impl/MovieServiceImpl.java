package service.impl;

import mapper.MovieMapper;
import mapper.MoviepicMapper;
import mapper.PicMapper;
import model.Movie;
import model.Moviepic;
import model.Pic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.MovieService;

import java.util.List;

@Service
public class MovieServiceImpl implements MovieService {

    @Autowired
    private MovieMapper movieMapper;
    @Autowired
    MoviepicMapper moviepicMapper;
    @Autowired
    PicMapper picMapper;

    @Override
    public void save(Movie movie) {
        movieMapper.addinfo(movie);
    }

    @Override
    public void saveurl(Moviepic moviepic) {
        moviepicMapper.addurl(moviepic);
    }

    @Override
    public List<Movie> findmovieinfo() {
        return movieMapper.findallmovieinfo();
    }

    @Override
    public List<Moviepic> findmoviepic() {
        return moviepicMapper.findallpic();
    }

    @Override
    public List<Pic> findpic() {
        return picMapper.findallpic();
    }

    @Override
    public void saveurlpic(Pic pic) {
        picMapper.addurl(pic);
    }

}
