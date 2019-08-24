package mapper;

import model.Moviepic;

import java.util.List;

public interface MoviepicMapper {
    void adddurl(Moviepic moviepic);

    List<Moviepic> findpic();
}
