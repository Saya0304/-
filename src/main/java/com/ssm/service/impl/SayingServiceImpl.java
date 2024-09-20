package com.ssm.service.impl;

import com.ssm.dao.SayingDao;
import com.ssm.domain.Saying;
import com.ssm.service.SayingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SayingServiceImpl implements SayingService {
    @Autowired
    private SayingDao sayingDao;
    @Override
    public List<Saying> getAll() {
        return sayingDao.getAll();
    }
}
