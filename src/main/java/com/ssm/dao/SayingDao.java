package com.ssm.dao;

import com.ssm.domain.Saying;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface SayingDao {
    @Insert("insert into saying (say1,say2,author,expand) values(#{say1},#{say2},#{author},#{expand})")
    public int save(Saying user);
    @Delete("delete from saying where id=#{id}")
    public int delete(Integer id);

    @Select("select * from saying where say2 like '%' #{say2} '%'")
    public Saying select(String say2);
    @Select("select * from saying")
    public List<Saying> getAll();
}
