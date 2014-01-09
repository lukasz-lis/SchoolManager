/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.group.dao;

import com.politechnika.model.Group;
import com.politechnika.utlis.MongoDBDataStore;
import org.bson.types.ObjectId;
import org.mongodb.morphia.dao.BasicDAO;

import javax.ejb.Singleton;
import javax.ejb.Startup;

/**
 *
 * @author l.lis
 */
@Singleton
@Startup
public class GroupDAOImpl extends BasicDAO<Group, ObjectId> implements GroupDAO {
    public GroupDAOImpl() {
        super(MongoDBDataStore.getDs());
    }
}
