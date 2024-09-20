package com.ssm.controller;

import com.ssm.domain.Classics;
import com.ssm.domain.Periodical;
import com.ssm.domain.Saying;
import com.ssm.service.ClassicsService;
import com.ssm.service.PeriodicalService;
import com.ssm.service.SayingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class NavController {
    @Autowired
    private ClassicsService classicsService;
    @Autowired
    private PeriodicalService periodicalService;
    @Autowired
    private SayingService sayingService;


    @RequestMapping("/")
    public String test(){
        return "index";
    }
    @RequestMapping("/Home")
    public String Home(Model model){
//        model.addAttribute("alldata",sceneryService.getAll());
        return "Home";
    }

    @RequestMapping("/Periodical")
    public String Periodical(Model model){
        model.addAttribute("alldata",periodicalService.getAll());
        return "Periodical";
    }

    @RequestMapping("/Terminology")
    public String Terminology(Model model){
//        model.addAttribute("alldata",sceneryService.getAll());
        return "Terminology";
    }

    @RequestMapping("/About")
    public String About(Model model){
//        model.addAttribute("alldata",sceneryService.getAll());
        return "About";
    }

    @RequestMapping("/Classics")
    public String Classics(Model model){
        List<Classics> list=classicsService.getAll();
        List<Saying> list1=sayingService.getAll();
        model.addAttribute("list",list);
        model.addAttribute("listsay",list1);
        model.addAttribute("kind",classicsService.selectCount());
        return "Classics";
    }

    @RequestMapping("/test")
    public String test(Model model){
        return "test2";
    }

    @GetMapping("/Search")
    public String Search(Model model, @RequestParam("title") String title){
        List<Classics> classicsList=classicsService.selectMoreBytitle(title);
        List<Periodical> periodicalList=periodicalService.selectMoreByTitle(title);
//        List<Periodical> periodicalList1=periodicalService.selectByAuthor(title);
        model.addAttribute("classicsList",classicsList);
        model.addAttribute("periodicalList",periodicalList);
        return "Search";
    }

    @GetMapping("/SearchTranslator")
    public String SearchTranslator(Model model, @RequestParam("title") String title){
        List<Classics> classicsList=classicsService.selectByTranslator(title);
        List<Periodical> periodicalList=periodicalService.selectMoreByTitle(title);
//        List<Periodical> periodicalList1=periodicalService.selectByAuthor(title);
        model.addAttribute("classicsList",classicsList);
        model.addAttribute("periodicalList",periodicalList);
        return "Search";
    }

    @RequestMapping("/pdf/{title}")
    public String Book(Model model, @PathVariable String title){
        model.addAttribute("title",title);
        return "pdf";
    }

    @RequestMapping("/pdf/periodicalpdf/{title}")
    public String Book1(Model model, @PathVariable String title){
        String newtitle="periodicalpdf/"+title;
        model.addAttribute("title",newtitle);
        return "pdf";
    }

    @RequestMapping("/pdf/FeaturedPeriodicals/{title}")
    public String Book2(Model model, @PathVariable String title){
        String newtitle="FeaturedPeriodicals/"+title;
        model.addAttribute("title",newtitle);
        return "pdf";
    }
}
