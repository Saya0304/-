package com.ssm.service;

import com.ssm.domain.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    public boolean save(User user);
    public boolean deleteByName(String username);
    public boolean update(User user);
    public User selectByName(String username);
    public List<User> getAll();

    public boolean login(String name,String password);
}
