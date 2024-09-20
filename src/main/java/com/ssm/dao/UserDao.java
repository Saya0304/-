package com.ssm.dao;

import com.ssm.domain.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserDao {
    @Insert("insert into webuser (username,password,email) values(#{username},#{password},#{email})")
    public int save(User user);
    @Delete("delete from webuser where username=#{username}")
    public int delete(String username);
    @Update("update webuser set email=#{email},password=#{password} where username=#{username}")
    public int update(User user);
    @Select("select * from webuser where username=#{username}")
    public User select(String username);
    @Select("select * from webuser")
    public List<User> getAll();
//登录
    @Select("select * from webuser where username=#{name} and password=#{password}")
    public boolean login(String name,String password);
}
