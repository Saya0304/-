package com.ssm.controller;

import com.ssm.dao.CommentDao;
import com.ssm.domain.Classics;
import com.ssm.service.ClassicsService;
import com.ssm.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/classics")
public class ClassicsController {
    @Autowired
    private ClassicsService classicsService;
    @Autowired
    private CommentService commentService;

    @ResponseBody
    @GetMapping("/more/{title}")
    public List<Classics> selectMoreBytitle(@PathVariable String title){
        return classicsService.selectMoreBytitle(title);
    }

    @ResponseBody
    @GetMapping("/one/{title}")
    public Classics selectOneByTitle(@PathVariable String title){
        return classicsService.selectOneByTitle(title);
    }

    @ResponseBody
    @GetMapping("/all")
    public List<Classics> getAll(){
        return classicsService.getAll();
    }

    //跳转+打开pdf
    @ResponseBody
    @GetMapping("/book/{title}")
    public ModelAndView openBook(@PathVariable String title){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Book");
        mav.addObject("classics",classicsService.selectOneByTitle(title));
        mav.addObject("comment",commentService.selectByTitle(title));
        return mav;
    }

}
