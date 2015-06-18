
package org.itstep.java.mywebproject.service;

import java.util.List;
import org.itstep.java.mywebproject.model.Announcement;
import org.itstep.java.mywebproject.model.Category;
import org.itstep.java.mywebproject.model.User;


public interface AnnouncementsService {
    List<Announcement> all();
    List<Category> getCategoryList();
    List<Announcement> getList(Integer id);
    Category findCategory(Integer id);
    void save(Announcement a);
    List<Announcement> MyAnnouncement(User user);
    void delete(Announcement a);
    Announcement findAnnouncement(Integer id);
}
