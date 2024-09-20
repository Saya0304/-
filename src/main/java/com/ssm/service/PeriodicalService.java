package com.ssm.service;

import com.ssm.domain.Periodical;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PeriodicalService {
    public boolean save(Periodical periodical);
    public boolean delete(String title);
    public List<Periodical> selectByAuthor(String title);
    public List<Periodical> selectMoreByTitle(String title);
    public List<Periodical> getAll();
}
