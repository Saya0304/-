package com.ssm.service.impl;

import com.ssm.dao.PeriodicalDao;
import com.ssm.domain.Periodical;
import com.ssm.service.PeriodicalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PeriodicalSeviceImpl implements PeriodicalService {
    @Autowired
    private PeriodicalDao periodicalDao;
    @Override
    public boolean save(Periodical periodical) {
        return periodicalDao.save(periodical)>0;
    }

    @Override
    public boolean delete(String title) {
        return periodicalDao.delete(title)>0;
    }

    @Override
    public List<Periodical> selectByAuthor(String title) {
        return periodicalDao.selectByAuthor(title);
    }

    @Override
    public List<Periodical> selectMoreByTitle(String title) {
        return periodicalDao.selectMoreByTitle(title);
    }

    @Override
    public List<Periodical> getAll() {
        return periodicalDao.getAll();
    }
}
