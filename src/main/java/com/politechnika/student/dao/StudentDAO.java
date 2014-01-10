/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.student.dao;

import com.politechnika.model.Student;
import org.bson.types.ObjectId;
import org.mongodb.morphia.dao.DAO;

/**
 *
 * @author l.lis
 */
public interface StudentDAO extends DAO<Student, String>{
    
}
