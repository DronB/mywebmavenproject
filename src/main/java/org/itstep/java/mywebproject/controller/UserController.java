package org.itstep.java.mywebproject.controller;

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
        User u = userService.find(id);
        User current = (User) currentUser.getPrincipal();
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
        userService.save(user);

        return "redirect:/user/login";
    }
}
