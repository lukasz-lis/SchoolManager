/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.model;

import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.Date;

/**
 * @author l.lis
 */
@XmlRootElement
@Entity
public class Presence {

    @Id
    private String presenceID = new ObjectId().toString();

    @Reference
    private Lection lection;
    @Reference
    private Student student;
    Boolean presened;

    public String getPresenceID() {
        return presenceID;
    }

    public void setPresenceID(String presenceID) {
        this.presenceID = presenceID;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Boolean getPresened() {
        return presened;
    }

    public void setPresened(Boolean presened) {
        this.presened = presened;
    }

    public Lection getLection() {
        return lection;
    }

    public void setLection(Lection lection) {
        this.lection = lection;
    }
}
