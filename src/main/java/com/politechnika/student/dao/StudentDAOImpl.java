/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.student.dao;

import com.politechnika.model.Student;
import com.politechnika.utlis.MongoDBDataStore;
import org.bson.types.ObjectId;
import org.mongodb.morphia.dao.BasicDAO;

/**
 *
 * @author l.lis
 */
public class StudentDAOImpl extends BasicDAO<Student, ObjectId> implements StudentDAO {
    public StudentDAOImpl() {
        super(MongoDBDataStore.getDs());
    }
}
