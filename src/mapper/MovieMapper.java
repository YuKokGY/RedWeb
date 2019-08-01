package mapper;

import model.Movie;

import java.util.List;

public interface MovieMapper {

    void addinfo(Movie movie);

    List<Movie> findallmovieinfo();


}
