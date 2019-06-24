package mapper;

import model.Moviepic;

import java.util.List;

public interface MoviepicMapper {

    public void addurl(Moviepic moviepic);

    public List<Moviepic> findallpic();
}
