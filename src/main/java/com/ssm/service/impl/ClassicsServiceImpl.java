package com.ssm.service.impl;

import com.ssm.dao.ClassicsDao;
import com.ssm.domain.Classics;
import com.ssm.service.ClassicsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ClassicsServiceImpl implements ClassicsService {
    @Autowired
    public ClassicsDao classicsDao;
    @Override
    public boolean save(Classics classics) {
        return classicsDao.save(classics)>0;
    }

    @Override
    public boolean deleteBytitle(String title) {
        return classicsDao.delete(title)>0;
    }

    @Override
    public List<Classics> selectMoreBytitle(String title) {
        return classicsDao.selectMoreBytitle(title);
    }

    @Override
    public List<Classics> selectByKind(String kind) {
        return classicsDao.selectByKind(kind);
    }

    @Override
    public List<String> selectCount() {
        return classicsDao.selectCount();
    }

    @Override
    public List<Classics> selectByTranslator(String translator) {
        return classicsDao.selectByTranslator(translator);
    }

    @Override
    public Classics selectOneByTitle(String title) {
        return classicsDao.selectOneByTitle(title);
    }

    @Override
    public List<Classics> getAll() {
        return classicsDao.getAll();
    }
}
