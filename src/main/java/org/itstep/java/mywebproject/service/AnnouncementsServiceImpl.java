/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.itstep.java.mywebproject.service;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.itstep.java.mywebproject.model.Announcement;
import org.itstep.java.mywebproject.model.Category;
import org.itstep.java.mywebproject.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service(value = "announcementService")
@Transactional
public class AnnouncementsServiceImpl implements AnnouncementsService {

    @Autowired
    SessionFactory sf;

    @Override
    public List<Announcement> all() {
        return sf.getCurrentSession().createQuery("from Announcement").list();
    }
    
    @Override
    public List<Announcement> MyAnnouncement(User user) {
        
      
        if(user.getIsadmin() == null){
           Query q = sf.getCurrentSession().createQuery("from Announcement g where g.user_id = :userId");
           q.setInteger("userId", user.getId());
            return q.list();
        }
        return sf.getCurrentSession().createQuery("from Announcement").list();
    }
    
    @Override
    public List<Category> getCategoryList() {
        Query q = sf.getCurrentSession().createQuery("from Category");
        return q.list();
    }
    
    @Override
    public List<Announcement> getList(Integer id) {
        Query q = sf.getCurrentSession().createQuery("from Announcement g where g.category.id = :catId");
        q.setInteger("catId", id);
        return q.list();
    }
    
    @Override
    public Category findCategory(Integer id) {
        return (Category) sf.getCurrentSession().get(Category.class, id);
    }
    
    @Override
    public void save(Announcement a) {
         sf.getCurrentSession().save(a);
    }
    
    @Override
    public void delete(Announcement a) {
         sf.getCurrentSession().delete(a); 
    }
    
    @Override
    public Announcement findAnnouncement(Integer id) {
        return (Announcement) sf.getCurrentSession().get(Announcement.class, id);
    }
}
