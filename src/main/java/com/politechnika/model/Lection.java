/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.model;

import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;
import org.mongodb.morphia.annotations.Version;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.Date;

/**
 * @author l.lis
 */
@XmlRootElement
@Entity
public class Lection {

    @Id
    private String lectionID = new ObjectId().toString();
    private String subject;
    private String description;
    private Date createDate = new Date();
    @Reference
    private Group group;
    @Reference
    private Course course;
    @Reference
    private User lecturer;
    @Version
    private Long v;

    public Long getV() {
        return v;
    }

    public void setV(Long v) {
        this.v = v;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getLectionID() {
        return lectionID;
    }

    public void setLectionID(String lectionID) {
        this.lectionID = lectionID;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public User getLecturer() {
        return lecturer;
    }

    public void setLecturer(User lecturer) {
        this.lecturer = lecturer;
    }

    public String getTitle() {
        return subject;
    }

    public void setTitle(String title) {
        this.subject = title;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

}
