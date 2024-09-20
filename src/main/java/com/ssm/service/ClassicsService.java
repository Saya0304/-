package com.ssm.service;

import com.ssm.domain.Classics;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ClassicsService {
    public boolean save(Classics classics);
    public boolean deleteBytitle(String title);
    public List<Classics> selectMoreBytitle(String title);
    public List<Classics> selectByKind(String kind);
    public List<String> selectCount();
    public List<Classics> selectByTranslator(String translator);
    public Classics selectOneByTitle(String title);
    public List<Classics> getAll();
}
