package com.politechnika.model;

import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;
import org.mongodb.morphia.annotations.Version;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.List;

/**
 * Model group.
 * User: Łukasz
 * Date: 18.11.13
 * Time: 21:54

 */
@Entity
@XmlRootElement
public class Group {
    @Id
    private String groupID = new ObjectId().toString();
    private String name;
    @Reference
    private List<Student> students;
    @Reference
    private List<Course> subjects;
    @Version
    private Long v;

    public String getGroupID() {
        return groupID;
    }

    public void setGroupID(String groupID) {
        this.groupID = groupID;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }

    public List<Course> getSubjects() {
        return subjects;
    }

    public void setSubjects(List<Course> subjects) {
        this.subjects = subjects;
    }

    public Long getV() {
        return v;
    }

    public void setV(Long v) {
        this.v = v;
    }

}
