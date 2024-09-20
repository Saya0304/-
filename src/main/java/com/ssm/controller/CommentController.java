package com.ssm.controller;

import com.ssm.domain.Code;
import com.ssm.domain.Comment;
import com.ssm.domain.Result;
import com.ssm.service.CommentService;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;


    @ResponseBody
    @GetMapping("/book/{title}")
    public List<Comment> selectByTitle(@PathVariable String title){
        return commentService.selectByTitle(title);
    }

    @ResponseBody
    @PostMapping("/add")
    public Result addComment(@RequestBody Comment comment, HttpSession session){
        String msg="The review was successful";
        if (session.getAttribute("username")==null){
            msg="Please log in to your account";
            return new Result(Code.SAVE_ERR,msg);
        }
        comment.setUsername(session.getAttribute("username").toString());
        boolean flag=commentService.save(comment);
        Integer code = flag ? Code.SAVE_OK : Code.SAVE_ERR;
        return new Result(code,msg);
    }

    @ResponseBody
    @DeleteMapping("/delete/{id}")
    public Result deleteComment(@PathVariable int id){
        boolean flag=commentService.deleteById(id);
        Integer coda=flag?Code.DELETE_OK:Code.DELETE_ERR;
        return new Result(coda,flag);
    }
}
