package com.ssm.controller;

import com.ssm.domain.Classics;
import com.ssm.domain.Code;
import com.ssm.domain.Collection;
import com.ssm.domain.Result;
import com.ssm.service.ClassicsService;
import com.ssm.service.CollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/collection")
public class CollectionController {
    @Autowired
    private CollectionService collectionService;
    @Autowired
    private ClassicsService classicsService;

    @ResponseBody
    @PostMapping("/save")
    public Result save(@RequestBody Collection collection, HttpSession session){
        String msg="Please log in";
        String name=session.getAttribute("username").toString();
        if (name==null){
            return new Result(Code.SAVE_ERR,msg);
        }
        if (collectionService.selectByNT(name,collection.title)!=null){
            msg="Already collection";
            return new Result(Code.SAVE_ERR,msg);
        }
        collection.setUsername(name);
        boolean flag=collectionService.save(collection);
        Integer code = flag ? Code.SAVE_OK : Code.SAVE_ERR;
        msg="Collected successfully";
        return new Result(code,msg);
    }

    @ResponseBody
    @DeleteMapping("/delete/{id}")
    public Result deleteById(@PathVariable Integer id){
        boolean flag=collectionService.deleteById(id);
        Integer code=flag?Code.DELETE_OK:Code.DELETE_ERR;
        return new Result(code,flag);
    }

    @ResponseBody
    @GetMapping("/select/{name}")
    public List<Classics> selectByName(@PathVariable String name){
        List<Collection> collectionList=collectionService.selectByName(name);
        List<Classics> classicsList = new ArrayList<>();
        for (int i=0;i<collectionList.size();i++) {
            Classics classics=classicsService.selectOneByTitle(collectionList.get(i).title);
            classicsList.add(classics);
        }
        return classicsList;
    }
}
