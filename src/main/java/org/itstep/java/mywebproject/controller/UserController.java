package org.itstep.java.mywebproject.controller;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.itstep.java.mywebproject.model.Announcement;
import org.itstep.java.mywebproject.service.UserService;
import org.itstep.java.mywebproject.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/user")
@SessionAttributes("current")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "show", method = RequestMethod.GET)
    public String user(
            UsernamePasswordAuthenticationToken currentUser,
            @RequestParam(value = "id", required = true, defaultValue = "1") Integer id,
            Model model) {

        User current = (User) currentUser.getPrincipal();

        if (current.getIsadmin() == null) {
            List<User> u = userService.findNew(current.getId());
            model.addAttribute("user", u);
            model.addAttribute("current", current);
            model.addAttribute("title", current.getName());

            return "user";
        }
        
        List<User> u = userService.findAll();
        model.addAttribute("user", u);
        model.addAttribute("current", current);
        model.addAttribute("title", current.getName());

        return "user";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap model) {

        return "login";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {

        return "registration";
    }

    @RequestMapping(value = "/adduser", method = RequestMethod.POST)
    public String newposition(
            @ModelAttribute("user") User user,
            Model model) {

        Pattern p = Pattern.compile("^[_A-Za-z0-9-+]+(.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(.[A-Za-z0-9]+)*(.[A-Za-z]{2,})$");
        Matcher m = p.matcher(user.getEmail());
        boolean b = m.matches();

        if (b) {
            userService.save(user);
            return "redirect:/user/login";
        }
        model.addAttribute("valemail", "Неверно введен Email адрес !");
        return "registration";
    }
    
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(
            UsernamePasswordAuthenticationToken currentUser,
            @RequestParam(value = "id") Integer id,
            Model model) {

        User u = userService.find(id);

        User current = (User) currentUser.getPrincipal();

        if (current.getIsadmin() == null) {
            userService.delete(u);
            return "redirect:/user/logout";
        }

        userService.delete(u);

        return "redirect:/user/show";
    }
}
