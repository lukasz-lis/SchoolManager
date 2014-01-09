/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.user.dao;

import com.politechnika.model.User;
import org.bson.types.ObjectId;
import org.mongodb.morphia.dao.DAO;

/**
 *
 * @author l.lis
 */
public interface UserDAO extends DAO<User, ObjectId>{
    
}
