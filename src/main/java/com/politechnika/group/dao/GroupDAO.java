/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.group.dao;

import com.politechnika.model.Group;
import org.bson.types.ObjectId;
import org.mongodb.morphia.dao.DAO;

/**
 *
 * @author l.lis
 */
public interface GroupDAO extends DAO<Group, String>{
    
}
