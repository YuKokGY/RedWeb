package mapper;

import model.Movie;

import java.util.List;

public interface MovieMapper {

    public void addinfo(Movie movie);

    public List<Movie> findallmovieinfo();

}
