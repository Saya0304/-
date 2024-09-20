package com.ssm.service.impl;

import com.ssm.dao.CommentDao;
import com.ssm.domain.Comment;
import com.ssm.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;
    @Override
    public boolean save(Comment comment) {
        return commentDao.save(comment)>0;
    }

    @Override
    public boolean deleteById(Integer id) {
        return commentDao.deleteById(id)>0;
    }

    @Override
    public List<Comment> selectByName(String name) {
        return commentDao.selectByName(name);
    }

    @Override
    public List<Comment> selectByTitle(String title) {
        return commentDao.selectByTitle(title);
    }

}
