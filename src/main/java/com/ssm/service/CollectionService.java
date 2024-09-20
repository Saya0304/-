package com.ssm.service;

import com.ssm.domain.Collection;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CollectionService {
    public boolean save(Collection collection);
    public boolean deleteById(Integer id);
    public List<Collection> selectByName(String name);
    public Collection selectByNT(String username,String title);
}
