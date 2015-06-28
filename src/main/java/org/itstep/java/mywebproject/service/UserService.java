
package org.itstep.java.mywebproject.service;

import java.sql.SQLException;
import java.util.List;
import org.itstep.java.mywebproject.model.User;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface UserService {

    User find(Integer id);
    List<User> findAll();
    void save(User u);
    List<User> findNew(Integer id);
    void delete(User u);
}