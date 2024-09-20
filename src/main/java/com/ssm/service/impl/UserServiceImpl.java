package com.ssm.service.impl;

import com.ssm.dao.UserDao;
import com.ssm.domain.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public boolean save(User user) {
        return userDao.save(user)>0;
    }

    @Override
    public boolean deleteByName(String username) {
        return userDao.delete(username)>0;
    }

    @Override
    public boolean update(User user) {
        return userDao.update(user)>0;
    }
//登陆
    @Override
    public boolean login(String name, String password) {
        try {
            return userDao.login(name,password);
        } catch (Exception e) {
            return false;
        }
    }

    @Override
    public User selectByName(String username) {
        return userDao.select(username);
    }

    @Override
    public List<User> getAll() {
        List<User> listUser=userDao.getAll();
        return listUser;
    }
}
