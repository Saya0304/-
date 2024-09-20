package com.ssm.dao;

import com.ssm.domain.Collection;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface CollectionDao {
    @Insert("insert into collection values(DEFAULT,#{username},#{title},#{expand})")
    public int save(Collection collection);
    @Delete("delete from collection where id=#{id}")
    public int delete(Integer id);

    @Select("select * from collection where username=#{username}")
    public List<Collection> select(String username);
    @Select("select * from collection where username=#{username} and title=#{title}")
    public Collection selectByNT(String username,String title);
}
