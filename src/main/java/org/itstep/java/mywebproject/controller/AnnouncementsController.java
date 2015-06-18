
package org.itstep.java.mywebproject.controller;

import java.util.List;
import org.itstep.java.mywebproject.model.Announcement;
import org.itstep.java.mywebproject.model.Category;
import org.itstep.java.mywebproject.model.User;
import org.itstep.java.mywebproject.service.AnnouncementsService;
import org.itstep.java.mywebproject.service.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/announcements")
public class AnnouncementsController {

    @Autowired
    AnnouncementsService announcementsService;
    UserDAO userdao;

//    @RequestMapping(method = RequestMethod.GET)
//    public String announcements(ModelMap model) {
//        model.addAttribute("announcements", announcementsService.all());
//        return "all";
//    }

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public String all(Model model) {
        model.addAttribute("announcements", announcementsService.all());
        return "all";
    }

    @RequestMapping(value = "/allcategory", method = RequestMethod.GET)
    public String allcategory(Model model) {
        model.addAttribute("allcategory", announcementsService.getCategoryList());
        model.addAttribute("title", "Categories");

        return "allcategory";
    }

    @RequestMapping(value = "/category/{id}", method = RequestMethod.GET)
    public String goods(
            @PathVariable(value = "id") Integer id,
            Model model) {
        List<Announcement> announcements = announcementsService.getList(id);
        Category cat = announcementsService.findCategory(id);
        model.addAttribute("announcements", announcements);
        model.addAttribute("title", cat.getName());
        model.addAttribute("allcategory", announcementsService.getCategoryList());

        return "allcategory";
    }

    @RequestMapping(value = "/addposition", method = RequestMethod.GET)
    public String addposition(UsernamePasswordAuthenticationToken currentUser, Model model) {
        User current = (User) currentUser.getPrincipal();
        model.addAttribute("allcategory", announcementsService.getCategoryList());
        model.addAttribute("title", "Addposition");
        model.addAttribute("current", current);

        return "addposition";
    }

    @RequestMapping(value = "/newposition", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    public String newposition(
            @RequestParam(value = "category_id") Integer catId,
            @ModelAttribute("announcement") Announcement announcement,
            Model model) {

        Category c = announcementsService.findCategory(catId);
        announcement.setCategory(c);
        announcementsService.save(announcement);

        return "redirect:/announcements/addposition";
    }

    @RequestMapping(value = "/myannouncement", method = RequestMethod.GET)
    public String myannouncement(UsernamePasswordAuthenticationToken currentUser, Model model) {
        User current = (User) currentUser.getPrincipal();
        model.addAttribute("announcements", announcementsService.MyAnnouncement(current));
        model.addAttribute("title", "Myannouncement");
        model.addAttribute("current", current);

        return "myannouncement";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(
            @PathVariable(value = "id") Integer id,
            Model model) {

        Announcement ann = announcementsService.findAnnouncement(id);
        announcementsService.delete(ann);

        return "redirect:/announcements/myannouncement";
    }
}
