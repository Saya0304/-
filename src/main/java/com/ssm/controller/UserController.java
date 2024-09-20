package com.ssm.controller;

import com.ssm.domain.Code;
import com.ssm.domain.Result;
import com.ssm.domain.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @ResponseBody
    @PostMapping("/save")
    public Result save(@RequestBody User user){
        User theName=userService.selectByName(user.getUsername());
        if (theName==null){
            boolean flag=userService.save(user);
            Integer code = flag ? Code.SAVE_OK : Code.SAVE_ERR;
            String msg = user != null ? "注册成功" : "注册失败，请重试！";
            return new Result(code,flag,msg);
        }
        return new Result("用户名已存在");
    }

    @ResponseBody
    @DeleteMapping("/delete/{name}")
    public Result delete(@PathVariable String name){
        boolean flag=userService.deleteByName(name);
        Integer code = flag ? Code.DELETE_OK : Code.DELETE_ERR;
        return new Result(code,flag);
    }

    @ResponseBody
    @PutMapping("/update")
    public Result update(@RequestBody User user){
        boolean flag=userService.update(user);
        Integer code = flag ? Code.UPDATE_OK : Code.UPDATE_ERR;
        return new Result(code,flag);
    }

    @ResponseBody
    @GetMapping("/select/{name}")
    public User selectByName(@PathVariable String name){
        return userService.selectByName(name);
    }

    @ResponseBody
    @GetMapping("/all")
    public List<User> getAll(){
        List<User> listUser=userService.getAll();
        return listUser;
    }

    @PostMapping("/login")
    public ModelAndView login(@RequestParam("sign-name") String name, @RequestParam("sign-password") String password, HttpSession session){
        ModelAndView mav = new ModelAndView();
        boolean flag=userService.login(name,password);
        if (name.equals("admain")&&password.equals("123456")){
            mav.setViewName("Management");
            return mav;
        }
        if(flag){
            session.setAttribute("username", name);
            session.setAttribute("password", password);
            mav.setViewName("Home");  // 设置要返回的视图名称
            mav.addObject("message","Landing successful");  // 添加模型数据
        }else {
            mav.setViewName("index");  // 设置要返回的视图名称
            mav.addObject("message","Wrong password or account number");  // 添加模型数据
        }
        return mav;
    }

    @ResponseBody
    @PostMapping("/ajax")
    public Result ajax(@RequestBody User user){
        String msg=userService.login(user.getUsername(),user.getPassword())?"Landing successful":"Wrong password or account number";
        return new Result(msg);
    }

    @ResponseBody
    @PostMapping(value = "/registered",  produces = "application/json")
    public Result registered(@RequestBody User user){
        User u=userService.selectByName(user.getUsername());
        if (u!=null){
            Integer code =Code.SAVE_ERR ;
            String msg = "The username already exists" ;
            return new Result(code,u,msg);
        }else{
            userService.save(user);
            Integer code =Code.SAVE_OK ;
            String msg = "Registration is successful";
            return new Result(code,u,msg);
        }
    }

}
