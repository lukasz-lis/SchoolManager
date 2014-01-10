/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.course.dao;

import com.politechnika.model.Course;
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
public class CourseDAOImpl extends BasicDAO<Course, String> implements CourseDAO {
    public CourseDAOImpl() {
        super(MongoDBDataStore.getDs());
    }
}
