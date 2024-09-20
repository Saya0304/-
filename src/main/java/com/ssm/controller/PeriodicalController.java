package com.ssm.controller;

import com.ssm.domain.Periodical;
import com.ssm.service.PeriodicalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/periodcal")
public class PeriodicalController {
    @Autowired
    private PeriodicalService periodicalService;

    @ResponseBody
    @GetMapping("/all")
    public List<Periodical> getAll(){
        List<Periodical> periodicalList=periodicalService.getAll();
        return periodicalList;
    }

//    @ResponseBody
//    @GetMapping("/")
//    public


}
