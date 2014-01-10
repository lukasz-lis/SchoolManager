package com.politechnika.course.dao;

import com.politechnika.model.Course;
import org.bson.types.ObjectId;
import org.mongodb.morphia.dao.DAO;

/**
 *
 * @author l.lis
 */
public interface CourseDAO extends DAO<Course, String>{
    
}
