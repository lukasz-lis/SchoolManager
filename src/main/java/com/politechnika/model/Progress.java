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
    private String description;
    private String title;
    private String progress;
    @Reference
    private Course subject;
    @Reference
    private Student student;
    @Reference
    private User createdBy;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(User createdBy) {
        this.createdBy = createdBy;
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

    public Course getSubject() {
        return subject;
    }

    public void setSubject(Course subject) {
        this.subject = subject;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }
}
