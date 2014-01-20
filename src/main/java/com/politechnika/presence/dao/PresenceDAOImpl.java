/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.presence.dao;

import com.politechnika.model.Presence;
import com.politechnika.utlis.MongoDBDataStore;
import org.mongodb.morphia.dao.BasicDAO;

import javax.ejb.Singleton;
import javax.ejb.Startup;

/**
 *
 * @author l.lis
 */
@Singleton
@Startup
public class PresenceDAOImpl extends BasicDAO<Presence, String> implements PresenceDAO {
    public PresenceDAOImpl() {
        super(MongoDBDataStore.getDs());
    }
}
