/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.student.dao;

import com.politechnika.model.Student;
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
public class StudentDAOImpl extends BasicDAO<Student, String> implements StudentDAO {
    public StudentDAOImpl() {
        super(MongoDBDataStore.getDs());
    }
}
