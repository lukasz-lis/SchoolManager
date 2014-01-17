/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.lection.dao;

import com.politechnika.model.Lection;
import com.politechnika.utlis.MongoDBDataStore;
import javax.ejb.Singleton;
import javax.ejb.Startup;
import org.mongodb.morphia.dao.BasicDAO;

/**
 *
 * @author l.lis
 */
@Singleton
@Startup
public class LectionDAOImpl extends BasicDAO<Lection, String> implements LectionDAO {
    public LectionDAOImpl() {
        super(MongoDBDataStore.getDs());
    }
}
