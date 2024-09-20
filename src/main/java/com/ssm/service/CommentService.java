package com.ssm.service;

import com.ssm.dao.CommentDao;
import com.ssm.domain.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CommentService {
    public boolean save(Comment comment);
    public boolean deleteById(Integer id);
    public List<Comment> selectByName(String name);
    public List<Comment> selectByTitle(String title);
}
