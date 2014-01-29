package com.politechnika.model;

import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * Model subject. User: Łukasz Date: 18.11.13 Time: 21:44
 */
@Entity
@XmlRootElement
public class Progress {

    @Id
    private String progressID = new ObjectId().toString();
    private String progress;
    private String note;
    @Reference
    private Course course;
    @Reference
    private Student student;
    @Reference
    private User createdBy;

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
    public String getProgressID() {
        return progressID;
    }

    public void setProgressID(String progressID) {
        this.progressID = progressID;
    }

    public String getProgress() {
        return progress;
    }

    public void setProgress(String progress) {
        this.progress = progress;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public User getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(User createdBy) {
        this.createdBy = createdBy;
    }

}
