package com.politechnika.model;

import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Łukasz
 * Date: 18.11.13
 * Time: 21:46
 * To change this template use File | Settings | File Templates.
 */
@Entity
@XmlRootElement
public class Course {
    @Id
    private ObjectId objectId;
    private String name;
    @Reference
    private List<User> lecturers;

    public ObjectId getObjectId() {
        return objectId;
    }

    public void setObjectId(ObjectId objectId) {
        this.objectId = objectId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<User> getLecturers() {
        return lecturers;
    }

    public void setLecturers(List<User> lecturers) {
        this.lecturers = lecturers;
    }
}
