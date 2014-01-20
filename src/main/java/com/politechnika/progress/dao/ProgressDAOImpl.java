/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.progress.dao;

import com.politechnika.model.Progress;
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
public class ProgressDAOImpl extends BasicDAO<Progress, String> implements ProgressDAO {
    public ProgressDAOImpl() {
        super(MongoDBDataStore.getDs());
    }
}
