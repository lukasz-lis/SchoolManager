package com.politechnika;

import com.politechnika.model.User;

import javax.ejb.Local;
import java.util.List;


/**
 * Created with IntelliJ IDEA.
 * User: Łukasz
 * Date: 23.11.13
 * Time: 22:08
 * To change this template use File | Settings | File Templates.
 */


@Local
public interface UserDAO {
    void addNewUser(User user);
    User findUserBy(String username);
    List<User> getAllUsers();
}
