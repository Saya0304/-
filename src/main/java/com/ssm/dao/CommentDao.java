package com.ssm.dao;

import com.ssm.domain.Comment;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface CommentDao {
    @Insert("insert into comment  values(DEFAULT,#{title},#{username},#{text},#{expand})")
    public int save(Comment comment);
    @Delete("delete from comment where id=#{id}")
    public int deleteById(Integer id);

    @Select("select * from comment where username=#{username}")
    public List<Comment> selectByName(String username);
    @Select("select * from comment where title=#{title}")
    public List<Comment> selectByTitle(String title);
}
