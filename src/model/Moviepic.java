package model;

import java.io.Serializable;

public class Moviepic implements Serializable {
    private int id;
    private String url;
    private String moviesize;

    public Moviepic() {
    }

    public String getMoviesize() {
        return moviesize;
    }

    public void setMoviesize(String moviesize) {
        this.moviesize = moviesize;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Moviepic{" +
                "id=" + id +
                ", url='" + url + '\'' +
                '}';
    }
}
