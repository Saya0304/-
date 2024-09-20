package com.ssm.controller;

import com.ssm.domain.*;
import com.ssm.service.ClassicsService;
import com.ssm.service.CollectionService;
import com.ssm.service.CommentService;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CenterController {
    @Autowired
    private UserService userService;
    @Autowired
    private CommentService commentService;
    @Autowired
    private ClassicsService classicsService;
    @Autowired
    private CollectionService collectionService;

    @RequestMapping("/Center")
    public String Center(Model model, HttpSession session){
        Object username = session.getAttribute("username");
        if (username!=null){
            List<Collection> collectionList=collectionService.selectByName(username.toString());
            List<Classics> classicsList = new ArrayList<>();
            for (int i=0;i<collectionList.size();i++) {
                Classics classics=classicsService.selectOneByTitle(collectionList.get(i).title);
                classics.setId(collectionList.get(i).id);
                classicsList.add(classics);
            }

            model.addAttribute("user",userService.selectByName(username.toString()));
            model.addAttribute("collection",classicsList);
            model.addAttribute("comment",commentService.selectByName(username.toString()));
        }else {
            model.addAttribute("message","Please log in to your account");
        }
        return "Center";
    }

    @ResponseBody
    @GetMapping("/select/{name}")
    public List<Comment> selectByName(@PathVariable String name){
        return commentService.selectByName(name);
    }

    @ResponseBody
    @PostMapping("/update")
    public Result update(@RequestBody User user){
        boolean flag=userService.update(user);
        Integer code = flag ? Code.UPDATE_OK : Code.UPDATE_ERR;
        String msg=flag ?"The update was successful":"The update failed";
        return new Result(code,flag,msg);
    }

}
