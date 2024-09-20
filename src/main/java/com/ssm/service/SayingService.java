package com.ssm.service;

import com.ssm.domain.Saying;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface SayingService {
    public List<Saying> getAll();
}
