/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.politechnika.model;

import java.util.Date;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.crypto.Data;
import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Reference;

/**
 *
 * @author l.lis
 */
@XmlRootElement
@Entity
public class Presence {
    
    private String presenceID = new ObjectId().toString();
    private Date day;
    @Reference
    private Student student;
    Boolean presened;

    public String getPresenceID() {
        return presenceID;
    }

    public void setPresenceID(String presenceID) {
        this.presenceID = presenceID;
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
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
    
    
}
