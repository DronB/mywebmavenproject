
package org.itstep.java.mywebproject.service;

import java.sql.SQLException;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.itstep.java.mywebproject.model.Announcement;
import org.itstep.java.mywebproject.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository(value = "userDAO")
@Transactional
public class UserDAO implements UserService, UserDetailsService {

    @Autowired
    SessionFactory sf;

    @Override
    public List<User> findAll() throws SQLException {
        return sf.getCurrentSession().createQuery("from User").list();
    }

    @Override
    public User find(Integer id) {
        return (User) sf.getCurrentSession().get(User.class, id);
    }

    @Override
    public UserDetails loadUserByUsername(String string) throws UsernameNotFoundException {
        User user = null;

        try {
            Query q = sf.getCurrentSession().createQuery("from User u where u.email = :email");
            q.setString("email", string);
            List<User> users = q.list();
            if (users.isEmpty()) {
                throw new UsernameNotFoundException("User " + string + " not found");
            } else {
                return users.get(0);
            }
        } catch (Exception e) {
            System.err.println("ohshit");
        }
        return null;
    }

    @Override
    public void save(User u) {
        sf.getCurrentSession().save(u);
    }
}
