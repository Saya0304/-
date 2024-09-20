package com.ssm.dao;

import com.ssm.domain.Periodical;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PeriodicalDao {
    @Insert("insert into periodical values(DEFAULT,#{title},#{author},#{summary},#{expand},#{download},#{password})")
    public int save(Periodical periodical);
    @Delete("delete from periodical where title=#{title}")
    public int delete(String title);

    @Select("select * from periodical where title like '%' #{title} '%' ")
    public List<Periodical> selectMoreByTitle(String title);
    @Select("select * from periodical where author=#{author}")
    public List<Periodical> selectByAuthor(String author);
    @Select("select * from periodical")
    public List<Periodical> getAll();
}
