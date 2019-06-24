package model;

import java.io.Serializable;

public class Pic implements Serializable {
    private int id;
    private String url;
    private String bigurl;

    public Pic() {
    }

    public String getbigurl() {
        return bigurl;
    }

    public void setbigurl(String bigurl) {
        this.bigurl = bigurl;
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
        return "Pic{" +
                "id=" + id +
                ", url='" + url + '\'' +
                ", bigurl='" + bigurl + '\'' +
                '}';
    }
}
