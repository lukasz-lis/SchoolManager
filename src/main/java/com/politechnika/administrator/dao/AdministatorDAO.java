package com.politechnika.administrator.dao;

import com.politechnika.model.Administrator;
import org.bson.types.ObjectId;
import org.mongodb.morphia.dao.DAO;

import java.util.Objects;

/**
 * Created by Łukasz on 31.12.13.
 */
public interface AdministatorDAO extends DAO<Administrator, ObjectId> {
}
