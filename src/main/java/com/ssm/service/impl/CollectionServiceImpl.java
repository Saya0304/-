package com.ssm.service.impl;

import com.ssm.dao.CollectionDao;
import com.ssm.domain.Collection;
import com.ssm.service.CollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CollectionServiceImpl implements CollectionService {
    @Autowired
    private CollectionDao collectionDao;
    @Override
    public boolean save(Collection collection) {
        return collectionDao.save(collection)>0;
    }

    @Override
    public boolean deleteById(Integer id) {
        return collectionDao.delete(id)>0;
    }

    @Override
    public List<Collection> selectByName(String name) {
        return collectionDao.select(name);
    }

    @Override
    public Collection selectByNT(String username,String title) {
        return collectionDao.selectByNT(username,title);
    }
}
