package model;

import java.io.Serializable;

public class Movie implements Serializable {

    private int id;
    private String moviename;
    private String movierate;
    private String movietime;
    private String movieregion;
    private String moviedirector;
    private String movieactors;

    public Movie() {
    }

    public Movie(String moviename, String movierate, String movietime, String movieregion, String moviedirector, String movieactors) {
        this.moviename = moviename;
        this.movierate = movierate;
        this.movietime = movietime;
        this.movieregion = movieregion;
        this.moviedirector = moviedirector;
        this.movieactors = movieactors;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename;
    }

    public String getMovierate() {
        return movierate;
    }

    public void setMovierate(String movierate) {
        this.movierate = movierate;
    }


    public String getMovietime() {
        return movietime;
    }

    public void setMovietime(String movietime) {
        this.movietime = movietime;
    }

    public String getMovieregion() {
        return movieregion;
    }

    public void setMovieregion(String movieregion) {
        this.movieregion = movieregion;
    }

    public String getMoviedirector() {
        return moviedirector;
    }

    public void setMoviedirector(String moviedirector) {
        this.moviedirector = moviedirector;
    }

    public String getMovieactors() {
        return movieactors;
    }

    public void setMovieactors(String movieactors) {
        this.movieactors = movieactors;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", moviename='" + moviename + '\'' +
                ", movierate='" + movierate + '\'' +
                ", movietime='" + movietime + '\'' +
                ", movieregion='" + movieregion + '\'' +
                ", moviedirector='" + moviedirector + '\'' +
                ", movieactors='" + movieactors + '\'' +
                '}';
    }
}
