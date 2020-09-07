package com.koko.controller;

import com.koko.pojo.People;
import com.koko.service.PeopleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class PeopleController {

    @Autowired
    @Qualifier("PeopleServiceImpl")
    private PeopleService peopleService;

    @RequestMapping("/hello")
    public String hello(Model model){
        model.addAttribute("msg","hello,welcom!");
        return "hello";
    }

    @RequestMapping("/allpeople")
    public String login(HttpSession session, Model model, String username){
        session.setAttribute("user", username);
        if (session == null) {
            return "index";
        } else {
            List<People> list = peopleService.querypeople();
            model.addAttribute("list", list);
            return "allpeople";
        }
    }

    @RequestMapping("/allpeople2")
    public String list(Model model) {
        List<People> list = peopleService.querypeople();
        model.addAttribute("list", list);
        return "allpeople";
    }
    @RequestMapping("/toAddpeople")
    public String toAdd() {
        return "addpeople";
    }

    @RequestMapping("/addpeople")
    public String add(People people) {
        System.out.println(people);
        peopleService.addpeople(people);
        return "redirect:/allpeople";
    }


    @RequestMapping("/toUpdatePeople")
    public String toUpdatepeople(Model model, int id) {
        People people = peopleService.querypeoplebyid(id);
        model.addAttribute("people",people );
        return "updatepeople";
    }

    @RequestMapping("/updatePeople")
    public String updatepeople( People people) {
        System.out.println(people);
        peopleService.updatepeople(people);
        return "redirect:/allpeople";
    }

    @RequestMapping("/dele/{Id}")
    public String deletePeople(@PathVariable("Id") int id) {
        peopleService.delepeople(id);
        return "redirect:/allpeople";
    }

    //根据书名查询
    @RequestMapping("/queryPeople")
    public String querypeoplebyname(String name,Model model){
        People people = peopleService.querypeolebyname(name);
        List<People> list = new ArrayList<People>();
        list.add(people);
        if(people==null){
            list=peopleService.querypeople();
            model.addAttribute("error","请输入名字！");
        }
        model.addAttribute("list",list);
        return "allpeople";
    }

    @RequestMapping("/a")
    @ResponseBody
    public String ajax3(String name,String pwd){
        String msg = "";
        if (name!=null){
            if ("".equals(name)){
                msg = "用户名输入为空";
            }else {
                msg = "格式正确";
            }
        }
        if (pwd!=null){
            if ("".equals(pwd)){
                msg = "密码输入为空";
            }else {
                msg = "格式正确";
            }
        }
        return msg;
    }

    @RequestMapping("logout")
    public String logout(HttpSession session) throws Exception {
        session.invalidate();
        return "index";
    }

}
