package mapper;

import model.Moviepic;
import model.Pic;

import java.util.List;

public interface PicMapper {
    public void addurl(Pic pic);

    public List<Pic> findallpic();
}
