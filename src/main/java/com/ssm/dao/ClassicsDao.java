package com.ssm.dao;

import com.ssm.domain.Classics;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ClassicsDao {
//    title,author,download1,password1,translator,download2,password2,kind,expand,information
    @Insert("insert into classics value(DEFAULT,#{title},#{author},#{download1},#{password1},#{translator},#{download2},#{password2},#{kind},#{expand},#{information})")
    public int save(Classics classics);
    @Delete("delete from classics where title=#{title}")
    public int delete(String title);

    @Select("select * from classics where title like '%' #{title} '%'")
    public List<Classics> selectMoreBytitle(String title);
    @Select("select * from classics where title like '%' #{title} '%' LIMIT 1")
    public Classics selectOneByTitle(String title);
    @Select("select * from classics where kind like '%' #{kind} '%'")
    public List<Classics> selectByKind(String kind);
    @Select(" SELECT kind FROM classics GROUP BY kind HAVING COUNT(*) > 0;")
    public List<String> selectCount();
    @Select("select * from classics where translator like '%' #{translator} '%'")
    public List<Classics> selectByTranslator(String translator);
    @Select("select * from classics")
    public List<Classics> getAll();
}
